import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

extension QueryHookResultExt<TParsed> on QueryHookResult<TParsed> {
  Widget when({
    required Widget Function() loading,
    required Widget Function(OperationException) error,
    required Widget Function(TParsed?) data,
  }) {
    if (result.isLoading && result.parsedData == null) {
      return loading();
    }
    if (result.hasException) {
      return error(result.exception!);
    }
    return data(result.parsedData);
  }
}
