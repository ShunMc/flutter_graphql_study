import 'package:flutter/material.dart';
import 'package:flutter_graphql_study/app/app.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  await initHiveForFlutter();

  runApp(const ProviderScope(child: App()));
}
