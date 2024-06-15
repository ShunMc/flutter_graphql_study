import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/gen/graphql/repositories.graphql.dart';
import 'package:flutter_graphql_study/utility/extensions/query_hook_result.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class RepositoriesPage extends HookWidget {
  const RepositoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$ReadRepositories(
      Options$Query$ReadRepositories(
        variables: Variables$Query$ReadRepositories(
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
        title: const Text('Repositories'),
      ),
      body: result.when(
        loading: () => loading,
        error: (_) => loading,
        data: (data) {
          if (data == null) {
            return loading;
          }
          final repositories = data.viewer.repositories.nodes ?? [];
          final pageInfo = data.viewer.repositories.pageInfo;
          return ListView.builder(
            itemCount: repositories.length + (pageInfo.hasNextPage ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == repositories.length) {
                result.fetchMore(
                  FetchMoreOptions$Query$ReadRepositories(
                    updateQuery: (previousResultData, fetchMoreResultData) {
                      final nodes = [
                        ...previousResultData?['viewer']['repositories']
                            ['nodes'],
                        ...fetchMoreResultData?['viewer']['repositories']
                            ['nodes'],
                      ];
                      fetchMoreResultData?['viewer']['repositories']['nodes'] =
                          nodes;
                      return fetchMoreResultData;
                    },
                    variables: Variables$Query$ReadRepositories(
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
              if (repository == null) {
                return null;
              }
              return ListTile(
                title: Text(repository.name),
                subtitle: Text(repository.viewerHasStarred.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
