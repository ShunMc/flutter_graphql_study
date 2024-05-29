import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/gen/graphql/search.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$ReadRepositories(
      Options$Query$ReadRepositories(
        variables: Variables$Query$ReadRepositories(
          nRepositories: 10,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: ListView(
        children: result.result.parsedData?.viewer.repositories.nodes?.map(
              (value) {
                if (value == null) {
                  return const SizedBox.shrink();
                }
                return ListTile(
                  title: Text(value.name),
                  subtitle: Text(value.viewerHasStarred.toString()),
                );
              },
            ).toList() ??
            [],
      ),
    );
  }
}
