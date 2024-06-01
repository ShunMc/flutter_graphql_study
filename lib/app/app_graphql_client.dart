import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/app/app_env.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_graphql_client.g.dart';

@riverpod
ValueNotifier<GraphQLClient> appGraphQLClient(AppGraphQLClientRef ref) {
  final httpLink = HttpLink('https://api.github.com/graphql');
  final authLink = AuthLink(getToken: () => 'Bearer ${AppEnv.githubToken}');
  final link = authLink.concat(httpLink);
  final store = HiveStore();
  final cache = GraphQLCache(store: store);
  return ValueNotifier(
    GraphQLClient(
      link: link,
      cache: cache,
    ),
  );
}
