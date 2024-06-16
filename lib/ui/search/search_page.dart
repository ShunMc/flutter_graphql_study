import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/gen/graphql/search.graphql.dart';
import 'package:flutter_graphql_study/ui/repository/repository_tile.dart';
import 'package:flutter_graphql_study/utility/extensions/query_hook_result.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchText = useTextEditingController();
    final result = useQuery$SearchRepositories(
      Options$Query$SearchRepositories(
        variables: Variables$Query$SearchRepositories(
          query: searchText.text,
          first: 10,
        ),
      ),
    );
    const loading = Center(
      child: CircularProgressIndicator(),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: TextField(
          controller: searchText,
          decoration: const InputDecoration(
            hintText: 'Search Repositories',
          ),
          onSubmitted: (_) => result.refetch(),
        ),
      ),
      body: result.when(
        loading: () => loading,
        error: (_) => loading,
        data: (data) {
          if (data == null) {
            return loading;
          }
          final repositories = data.search.nodes
                  ?.map((node) =>
                      node as Query$SearchRepositories$search$nodes$$Repository)
                  .toList() ??
              [];
          final pageInfo = data.search.pageInfo;
          return ListView.builder(
            itemCount: repositories.length + (pageInfo.hasNextPage ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == repositories.length) {
                result.fetchMore(
                  FetchMoreOptions$Query$SearchRepositories(
                    updateQuery: (previousResultData, fetchMoreResultData) {
                      final nodes = [
                        ...previousResultData?['search']['nodes'],
                        ...fetchMoreResultData?['search']['nodes'],
                      ];
                      fetchMoreResultData?['search']['nodes'] = nodes;
                      return fetchMoreResultData;
                    },
                    variables: Variables$Query$SearchRepositories(
                      query: searchText.text,
                      first: 10,
                      after: pageInfo.endCursor,
                    ),
                  ),
                );
                return const SizedBox(
                  height: 50,
                  child: loading,
                );
              }
              final repository = repositories[index];
              return RepositoryTile(repository: repository);
            },
          );
        },
      ),
    );
  }
}
