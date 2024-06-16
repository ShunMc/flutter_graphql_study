import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/gen/graphql/repository.graphql.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({super.key, required this.repository});

  final Fragment$repository repository;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(repository.name),
      subtitle: Text(repository.viewerHasStarred.toString()),
    );
  }
}
