import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SearchRepositories {
  factory Variables$Query$SearchRepositories({
    required String query,
    required int first,
    String? after,
  }) =>
      Variables$Query$SearchRepositories._({
        r'query': query,
        r'first': first,
        if (after != null) r'after': after,
      });

  Variables$Query$SearchRepositories._(this._$data);

  factory Variables$Query$SearchRepositories.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$SearchRepositories._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  int get first => (_$data['first'] as int);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchRepositories<
          Variables$Query$SearchRepositories>
      get copyWith => CopyWith$Variables$Query$SearchRepositories(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchRepositories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      l$query,
      l$first,
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchRepositories<TRes> {
  factory CopyWith$Variables$Query$SearchRepositories(
    Variables$Query$SearchRepositories instance,
    TRes Function(Variables$Query$SearchRepositories) then,
  ) = _CopyWithImpl$Variables$Query$SearchRepositories;

  factory CopyWith$Variables$Query$SearchRepositories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchRepositories;

  TRes call({
    String? query,
    int? first,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$SearchRepositories<TRes>
    implements CopyWith$Variables$Query$SearchRepositories<TRes> {
  _CopyWithImpl$Variables$Query$SearchRepositories(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchRepositories _instance;

  final TRes Function(Variables$Query$SearchRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$SearchRepositories._({
        ..._instance._$data,
        if (query != _undefined && query != null) 'query': (query as String),
        if (first != _undefined && first != null) 'first': (first as int),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchRepositories<TRes>
    implements CopyWith$Variables$Query$SearchRepositories<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchRepositories(this._res);

  TRes _res;

  call({
    String? query,
    int? first,
    String? after,
  }) =>
      _res;
}

class Query$SearchRepositories {
  Query$SearchRepositories({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$SearchRepositories.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories(
      search: Query$SearchRepositories$search.fromJson(
          (l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchRepositories$search search;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$search = search;
    _resultData['search'] = l$search.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$search,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories
    on Query$SearchRepositories {
  CopyWith$Query$SearchRepositories<Query$SearchRepositories> get copyWith =>
      CopyWith$Query$SearchRepositories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRepositories<TRes> {
  factory CopyWith$Query$SearchRepositories(
    Query$SearchRepositories instance,
    TRes Function(Query$SearchRepositories) then,
  ) = _CopyWithImpl$Query$SearchRepositories;

  factory CopyWith$Query$SearchRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories;

  TRes call({
    Query$SearchRepositories$search? search,
    String? $__typename,
  });
  CopyWith$Query$SearchRepositories$search<TRes> get search;
}

class _CopyWithImpl$Query$SearchRepositories<TRes>
    implements CopyWith$Query$SearchRepositories<TRes> {
  _CopyWithImpl$Query$SearchRepositories(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories _instance;

  final TRes Function(Query$SearchRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepositories(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$SearchRepositories$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchRepositories$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$SearchRepositories$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$SearchRepositories<TRes>
    implements CopyWith$Query$SearchRepositories<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories(this._res);

  TRes _res;

  call({
    Query$SearchRepositories$search? search,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchRepositories$search<TRes> get search =>
      CopyWith$Query$SearchRepositories$search.stub(_res);
}

const documentNodeQuerySearchRepositories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchRepositories'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'search'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'REPOSITORY')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'Repository'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'viewerHasStarred'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SearchRepositories _parserFn$Query$SearchRepositories(
        Map<String, dynamic> data) =>
    Query$SearchRepositories.fromJson(data);
typedef OnQueryComplete$Query$SearchRepositories = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchRepositories?,
);

class Options$Query$SearchRepositories
    extends graphql.QueryOptions<Query$SearchRepositories> {
  Options$Query$SearchRepositories({
    String? operationName,
    required Variables$Query$SearchRepositories variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchRepositories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchRepositories? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$SearchRepositories(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchRepositories,
          parserFn: _parserFn$Query$SearchRepositories,
        );

  final OnQueryComplete$Query$SearchRepositories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchRepositories
    extends graphql.WatchQueryOptions<Query$SearchRepositories> {
  WatchOptions$Query$SearchRepositories({
    String? operationName,
    required Variables$Query$SearchRepositories variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchRepositories? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySearchRepositories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchRepositories,
        );
}

class FetchMoreOptions$Query$SearchRepositories
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchRepositories({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SearchRepositories variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearchRepositories,
        );
}

extension ClientExtension$Query$SearchRepositories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchRepositories>>
      query$SearchRepositories(
              Options$Query$SearchRepositories options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$SearchRepositories>
      watchQuery$SearchRepositories(
              WatchOptions$Query$SearchRepositories options) =>
          this.watchQuery(options);
  void writeQuery$SearchRepositories({
    required Query$SearchRepositories data,
    required Variables$Query$SearchRepositories variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchRepositories),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchRepositories? readQuery$SearchRepositories({
    required Variables$Query$SearchRepositories variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerySearchRepositories),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchRepositories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchRepositories>
    useQuery$SearchRepositories(Options$Query$SearchRepositories options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SearchRepositories>
    useWatchQuery$SearchRepositories(
            WatchOptions$Query$SearchRepositories options) =>
        graphql_flutter.useWatchQuery(options);

class Query$SearchRepositories$Widget
    extends graphql_flutter.Query<Query$SearchRepositories> {
  Query$SearchRepositories$Widget({
    widgets.Key? key,
    required Options$Query$SearchRepositories options,
    required graphql_flutter.QueryBuilder<Query$SearchRepositories> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$SearchRepositories$search {
  Query$SearchRepositories$search({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'SearchResultItemConnection',
  });

  factory Query$SearchRepositories$search.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchRepositories$search$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$SearchRepositories$search$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchRepositories$search$nodes?>? nodes;

  final Query$SearchRepositories$search$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search
    on Query$SearchRepositories$search {
  CopyWith$Query$SearchRepositories$search<Query$SearchRepositories$search>
      get copyWith => CopyWith$Query$SearchRepositories$search(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search<TRes> {
  factory CopyWith$Query$SearchRepositories$search(
    Query$SearchRepositories$search instance,
    TRes Function(Query$SearchRepositories$search) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search;

  factory CopyWith$Query$SearchRepositories$search.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search;

  TRes call({
    List<Query$SearchRepositories$search$nodes?>? nodes,
    Query$SearchRepositories$search$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$SearchRepositories$search$nodes?>? Function(
              Iterable<
                  CopyWith$Query$SearchRepositories$search$nodes<
                      Query$SearchRepositories$search$nodes>?>?)
          _fn);
  CopyWith$Query$SearchRepositories$search$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$SearchRepositories$search<TRes>
    implements CopyWith$Query$SearchRepositories$search<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search _instance;

  final TRes Function(Query$SearchRepositories$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepositories$search(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$SearchRepositories$search$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$SearchRepositories$search$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$SearchRepositories$search$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$SearchRepositories$search$nodes<
                          Query$SearchRepositories$search$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchRepositories$search$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$SearchRepositories$search$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchRepositories$search$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$SearchRepositories$search<TRes>
    implements CopyWith$Query$SearchRepositories$search<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search(this._res);

  TRes _res;

  call({
    List<Query$SearchRepositories$search$nodes?>? nodes,
    Query$SearchRepositories$search$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$SearchRepositories$search$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchRepositories$search$pageInfo.stub(_res);
}

class Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes({required this.$__typename});

  factory Query$SearchRepositories$search$nodes.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Repository":
        return Query$SearchRepositories$search$nodes$$Repository.fromJson(json);

      case "App":
        return Query$SearchRepositories$search$nodes$$App.fromJson(json);

      case "Discussion":
        return Query$SearchRepositories$search$nodes$$Discussion.fromJson(json);

      case "Issue":
        return Query$SearchRepositories$search$nodes$$Issue.fromJson(json);

      case "MarketplaceListing":
        return Query$SearchRepositories$search$nodes$$MarketplaceListing
            .fromJson(json);

      case "Organization":
        return Query$SearchRepositories$search$nodes$$Organization.fromJson(
            json);

      case "PullRequest":
        return Query$SearchRepositories$search$nodes$$PullRequest.fromJson(
            json);

      case "User":
        return Query$SearchRepositories$search$nodes$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$SearchRepositories$search$nodes(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes
    on Query$SearchRepositories$search$nodes {
  CopyWith$Query$SearchRepositories$search$nodes<
          Query$SearchRepositories$search$nodes>
      get copyWith => CopyWith$Query$SearchRepositories$search$nodes(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$SearchRepositories$search$nodes$$Repository)
        repository,
    required _T Function(Query$SearchRepositories$search$nodes$$App) app,
    required _T Function(Query$SearchRepositories$search$nodes$$Discussion)
        discussion,
    required _T Function(Query$SearchRepositories$search$nodes$$Issue) issue,
    required _T Function(
            Query$SearchRepositories$search$nodes$$MarketplaceListing)
        marketplaceListing,
    required _T Function(Query$SearchRepositories$search$nodes$$Organization)
        organization,
    required _T Function(Query$SearchRepositories$search$nodes$$PullRequest)
        pullRequest,
    required _T Function(Query$SearchRepositories$search$nodes$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Repository":
        return repository(
            this as Query$SearchRepositories$search$nodes$$Repository);

      case "App":
        return app(this as Query$SearchRepositories$search$nodes$$App);

      case "Discussion":
        return discussion(
            this as Query$SearchRepositories$search$nodes$$Discussion);

      case "Issue":
        return issue(this as Query$SearchRepositories$search$nodes$$Issue);

      case "MarketplaceListing":
        return marketplaceListing(
            this as Query$SearchRepositories$search$nodes$$MarketplaceListing);

      case "Organization":
        return organization(
            this as Query$SearchRepositories$search$nodes$$Organization);

      case "PullRequest":
        return pullRequest(
            this as Query$SearchRepositories$search$nodes$$PullRequest);

      case "User":
        return user(this as Query$SearchRepositories$search$nodes$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$SearchRepositories$search$nodes$$Repository)? repository,
    _T Function(Query$SearchRepositories$search$nodes$$App)? app,
    _T Function(Query$SearchRepositories$search$nodes$$Discussion)? discussion,
    _T Function(Query$SearchRepositories$search$nodes$$Issue)? issue,
    _T Function(Query$SearchRepositories$search$nodes$$MarketplaceListing)?
        marketplaceListing,
    _T Function(Query$SearchRepositories$search$nodes$$Organization)?
        organization,
    _T Function(Query$SearchRepositories$search$nodes$$PullRequest)?
        pullRequest,
    _T Function(Query$SearchRepositories$search$nodes$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Repository":
        if (repository != null) {
          return repository(
              this as Query$SearchRepositories$search$nodes$$Repository);
        } else {
          return orElse();
        }

      case "App":
        if (app != null) {
          return app(this as Query$SearchRepositories$search$nodes$$App);
        } else {
          return orElse();
        }

      case "Discussion":
        if (discussion != null) {
          return discussion(
              this as Query$SearchRepositories$search$nodes$$Discussion);
        } else {
          return orElse();
        }

      case "Issue":
        if (issue != null) {
          return issue(this as Query$SearchRepositories$search$nodes$$Issue);
        } else {
          return orElse();
        }

      case "MarketplaceListing":
        if (marketplaceListing != null) {
          return marketplaceListing(this
              as Query$SearchRepositories$search$nodes$$MarketplaceListing);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(
              this as Query$SearchRepositories$search$nodes$$Organization);
        } else {
          return orElse();
        }

      case "PullRequest":
        if (pullRequest != null) {
          return pullRequest(
              this as Query$SearchRepositories$search$nodes$$PullRequest);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$SearchRepositories$search$nodes$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SearchRepositories$search$nodes<TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes(
    Query$SearchRepositories$search$nodes instance,
    TRes Function(Query$SearchRepositories$search$nodes) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes;

  factory CopyWith$Query$SearchRepositories$search$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes _instance;

  final TRes Function(Query$SearchRepositories$search$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$Repository
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$Repository({
    required this.id,
    required this.name,
    required this.viewerHasStarred,
    this.$__typename = 'Repository',
  });

  factory Query$SearchRepositories$search$nodes$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$Repository(
      id: (l$id as String),
      name: (l$name as String),
      viewerHasStarred: (l$viewerHasStarred as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool viewerHasStarred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$viewerHasStarred = viewerHasStarred;
    _resultData['viewerHasStarred'] = l$viewerHasStarred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$viewerHasStarred = viewerHasStarred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$viewerHasStarred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$Repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$viewerHasStarred = viewerHasStarred;
    final lOther$viewerHasStarred = other.viewerHasStarred;
    if (l$viewerHasStarred != lOther$viewerHasStarred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$Repository
    on Query$SearchRepositories$search$nodes$$Repository {
  CopyWith$Query$SearchRepositories$search$nodes$$Repository<
          Query$SearchRepositories$search$nodes$$Repository>
      get copyWith =>
          CopyWith$Query$SearchRepositories$search$nodes$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$Repository<
    TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$Repository(
    Query$SearchRepositories$search$nodes$$Repository instance,
    TRes Function(Query$SearchRepositories$search$nodes$$Repository) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$Repository;

  factory CopyWith$Query$SearchRepositories$search$nodes$$Repository.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Repository;

  TRes call({
    String? id,
    String? name,
    bool? viewerHasStarred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$Repository<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$Repository<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$Repository(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$Repository _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$Repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? viewerHasStarred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepositories$search$nodes$$Repository(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        viewerHasStarred:
            viewerHasStarred == _undefined || viewerHasStarred == null
                ? _instance.viewerHasStarred
                : (viewerHasStarred as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Repository<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$Repository<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Repository(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? viewerHasStarred,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchRepositories$search$nodes$$App
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$App({this.$__typename = 'App'});

  factory Query$SearchRepositories$search$nodes$$App.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$App(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$App) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$App
    on Query$SearchRepositories$search$nodes$$App {
  CopyWith$Query$SearchRepositories$search$nodes$$App<
          Query$SearchRepositories$search$nodes$$App>
      get copyWith => CopyWith$Query$SearchRepositories$search$nodes$$App(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$App<TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$App(
    Query$SearchRepositories$search$nodes$$App instance,
    TRes Function(Query$SearchRepositories$search$nodes$$App) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$App;

  factory CopyWith$Query$SearchRepositories$search$nodes$$App.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$App;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$App<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes$$App<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$App(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$App _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$App) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$App(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$App<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes$$App<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$App(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$Discussion
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$Discussion(
      {this.$__typename = 'Discussion'});

  factory Query$SearchRepositories$search$nodes$$Discussion.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$Discussion(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$Discussion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$Discussion
    on Query$SearchRepositories$search$nodes$$Discussion {
  CopyWith$Query$SearchRepositories$search$nodes$$Discussion<
          Query$SearchRepositories$search$nodes$$Discussion>
      get copyWith =>
          CopyWith$Query$SearchRepositories$search$nodes$$Discussion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$Discussion<
    TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$Discussion(
    Query$SearchRepositories$search$nodes$$Discussion instance,
    TRes Function(Query$SearchRepositories$search$nodes$$Discussion) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$Discussion;

  factory CopyWith$Query$SearchRepositories$search$nodes$$Discussion.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Discussion;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$Discussion<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$Discussion<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$Discussion(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$Discussion _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$Discussion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$Discussion(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Discussion<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$Discussion<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Discussion(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$Issue
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$Issue({this.$__typename = 'Issue'});

  factory Query$SearchRepositories$search$nodes$$Issue.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$Issue(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$Issue) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$Issue
    on Query$SearchRepositories$search$nodes$$Issue {
  CopyWith$Query$SearchRepositories$search$nodes$$Issue<
          Query$SearchRepositories$search$nodes$$Issue>
      get copyWith => CopyWith$Query$SearchRepositories$search$nodes$$Issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$Issue<TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$Issue(
    Query$SearchRepositories$search$nodes$$Issue instance,
    TRes Function(Query$SearchRepositories$search$nodes$$Issue) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$Issue;

  factory CopyWith$Query$SearchRepositories$search$nodes$$Issue.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Issue;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$Issue<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes$$Issue<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$Issue(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$Issue _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$Issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$Issue(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Issue<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes$$Issue<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Issue(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$MarketplaceListing
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$MarketplaceListing(
      {this.$__typename = 'MarketplaceListing'});

  factory Query$SearchRepositories$search$nodes$$MarketplaceListing.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$MarketplaceListing(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$MarketplaceListing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$MarketplaceListing
    on Query$SearchRepositories$search$nodes$$MarketplaceListing {
  CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing<
          Query$SearchRepositories$search$nodes$$MarketplaceListing>
      get copyWith =>
          CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing<
    TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing(
    Query$SearchRepositories$search$nodes$$MarketplaceListing instance,
    TRes Function(Query$SearchRepositories$search$nodes$$MarketplaceListing)
        then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$MarketplaceListing;

  factory CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$MarketplaceListing;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing<
            TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$MarketplaceListing(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$MarketplaceListing _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$MarketplaceListing)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$MarketplaceListing(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$MarketplaceListing<
            TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$MarketplaceListing(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$Organization
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$Organization(
      {this.$__typename = 'Organization'});

  factory Query$SearchRepositories$search$nodes$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$Organization(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$Organization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$Organization
    on Query$SearchRepositories$search$nodes$$Organization {
  CopyWith$Query$SearchRepositories$search$nodes$$Organization<
          Query$SearchRepositories$search$nodes$$Organization>
      get copyWith =>
          CopyWith$Query$SearchRepositories$search$nodes$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$Organization<
    TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$Organization(
    Query$SearchRepositories$search$nodes$$Organization instance,
    TRes Function(Query$SearchRepositories$search$nodes$$Organization) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$Organization;

  factory CopyWith$Query$SearchRepositories$search$nodes$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Organization;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$Organization<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$Organization<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$Organization(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$Organization _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$Organization)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$Organization(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Organization<
        TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$Organization<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$Organization(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$PullRequest
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$PullRequest(
      {this.$__typename = 'PullRequest'});

  factory Query$SearchRepositories$search$nodes$$PullRequest.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$PullRequest(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$PullRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$PullRequest
    on Query$SearchRepositories$search$nodes$$PullRequest {
  CopyWith$Query$SearchRepositories$search$nodes$$PullRequest<
          Query$SearchRepositories$search$nodes$$PullRequest>
      get copyWith =>
          CopyWith$Query$SearchRepositories$search$nodes$$PullRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$PullRequest<
    TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$PullRequest(
    Query$SearchRepositories$search$nodes$$PullRequest instance,
    TRes Function(Query$SearchRepositories$search$nodes$$PullRequest) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$PullRequest;

  factory CopyWith$Query$SearchRepositories$search$nodes$$PullRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$PullRequest;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$PullRequest<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$PullRequest<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$PullRequest(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$PullRequest _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$PullRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$PullRequest(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$PullRequest<TRes>
    implements
        CopyWith$Query$SearchRepositories$search$nodes$$PullRequest<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$PullRequest(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$nodes$$User
    implements Query$SearchRepositories$search$nodes {
  Query$SearchRepositories$search$nodes$$User({this.$__typename = 'User'});

  factory Query$SearchRepositories$search$nodes$$User.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$nodes$$User(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$nodes$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$nodes$$User
    on Query$SearchRepositories$search$nodes$$User {
  CopyWith$Query$SearchRepositories$search$nodes$$User<
          Query$SearchRepositories$search$nodes$$User>
      get copyWith => CopyWith$Query$SearchRepositories$search$nodes$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$nodes$$User<TRes> {
  factory CopyWith$Query$SearchRepositories$search$nodes$$User(
    Query$SearchRepositories$search$nodes$$User instance,
    TRes Function(Query$SearchRepositories$search$nodes$$User) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$nodes$$User;

  factory CopyWith$Query$SearchRepositories$search$nodes$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$User;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchRepositories$search$nodes$$User<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes$$User<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$nodes$$User(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$nodes$$User _instance;

  final TRes Function(Query$SearchRepositories$search$nodes$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchRepositories$search$nodes$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$User<TRes>
    implements CopyWith$Query$SearchRepositories$search$nodes$$User<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$nodes$$User(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchRepositories$search$pageInfo {
  Query$SearchRepositories$search$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchRepositories$search$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchRepositories$search$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchRepositories$search$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchRepositories$search$pageInfo
    on Query$SearchRepositories$search$pageInfo {
  CopyWith$Query$SearchRepositories$search$pageInfo<
          Query$SearchRepositories$search$pageInfo>
      get copyWith => CopyWith$Query$SearchRepositories$search$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchRepositories$search$pageInfo<TRes> {
  factory CopyWith$Query$SearchRepositories$search$pageInfo(
    Query$SearchRepositories$search$pageInfo instance,
    TRes Function(Query$SearchRepositories$search$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchRepositories$search$pageInfo;

  factory CopyWith$Query$SearchRepositories$search$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRepositories$search$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchRepositories$search$pageInfo<TRes>
    implements CopyWith$Query$SearchRepositories$search$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchRepositories$search$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchRepositories$search$pageInfo _instance;

  final TRes Function(Query$SearchRepositories$search$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchRepositories$search$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchRepositories$search$pageInfo<TRes>
    implements CopyWith$Query$SearchRepositories$search$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchRepositories$search$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
