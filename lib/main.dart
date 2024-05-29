import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/app/app.dart';
import 'package:flutter_graphql_study/app/app_env.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  await initHiveForFlutter();

  final httpLink = HttpLink(
    'https://api.github.com/graphql',
  );

  final authLink = AuthLink(
    getToken: () async => 'Bearer ${AppEnv.githubToken}',
  );

  final link = authLink.concat(httpLink);

  final client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(
    GraphQLProvider(
      client: client,
      child: const ProviderScope(
        child: App(),
      ),
    ),
  );
}
