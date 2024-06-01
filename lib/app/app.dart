import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/app/app_graphql_client.dart';
import 'package:flutter_graphql_study/app/app_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GraphQLProvider(
      client: ref.watch(appGraphQLClientProvider),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: ref.watch(appRouterProvider).config(),
      ),
    );
  }
}
