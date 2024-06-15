import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/app/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Repositories'),
            onTap: () {
              AutoRouter.of(context).push(const RepositoriesRoute());
            },
          ),
          ListTile(
            title: const Text('Search Repositories'),
            onTap: () {
              AutoRouter.of(context).push(const SearchRoute());
            },
          ),
        ],
      ),
    );
  }
}
