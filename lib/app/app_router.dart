import 'package:auto_route/auto_route.dart';
import 'package:flutter_graphql_study/ui/home/home_page.dart';
import 'package:flutter_graphql_study/ui/repositories/repositories_page.dart';
import 'package:flutter_graphql_study/ui/search/search_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';
part 'app_router.gr.dart';

@riverpod
AppRouter appRouter(AppRouterRef ref) => AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: RepositoriesRoute.page),
        AutoRoute(page: SearchRoute.page),
      ];
}
