import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ReadRepositories {
  factory Variables$Query$ReadRepositories({
    required int first,
    String? after,
  }) =>
      Variables$Query$ReadRepositories._({
        r'first': first,
        if (after != null) r'after': after,
      });

  Variables$Query$ReadRepositories._(this._$data);

  factory Variables$Query$ReadRepositories.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$ReadRepositories._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ReadRepositories<Variables$Query$ReadRepositories>
      get copyWith => CopyWith$Variables$Query$ReadRepositories(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ReadRepositories) ||
        runtimeType != other.runtimeType) {
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
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      l$first,
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ReadRepositories<TRes> {
  factory CopyWith$Variables$Query$ReadRepositories(
    Variables$Query$ReadRepositories instance,
    TRes Function(Variables$Query$ReadRepositories) then,
  ) = _CopyWithImpl$Variables$Query$ReadRepositories;

  factory CopyWith$Variables$Query$ReadRepositories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ReadRepositories;

  TRes call({
    int? first,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$ReadRepositories<TRes>
    implements CopyWith$Variables$Query$ReadRepositories<TRes> {
  _CopyWithImpl$Variables$Query$ReadRepositories(
    this._instance,
    this._then,
  );

  final Variables$Query$ReadRepositories _instance;

  final TRes Function(Variables$Query$ReadRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$ReadRepositories._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ReadRepositories<TRes>
    implements CopyWith$Variables$Query$ReadRepositories<TRes> {
  _CopyWithStubImpl$Variables$Query$ReadRepositories(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
  }) =>
      _res;
}

class Query$ReadRepositories {
  Query$ReadRepositories({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$ReadRepositories.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$ReadRepositories(
      viewer: Query$ReadRepositories$viewer.fromJson(
          (l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReadRepositories$viewer viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$viewer = viewer;
    _resultData['viewer'] = l$viewer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadRepositories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) {
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

extension UtilityExtension$Query$ReadRepositories on Query$ReadRepositories {
  CopyWith$Query$ReadRepositories<Query$ReadRepositories> get copyWith =>
      CopyWith$Query$ReadRepositories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReadRepositories<TRes> {
  factory CopyWith$Query$ReadRepositories(
    Query$ReadRepositories instance,
    TRes Function(Query$ReadRepositories) then,
  ) = _CopyWithImpl$Query$ReadRepositories;

  factory CopyWith$Query$ReadRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadRepositories;

  TRes call({
    Query$ReadRepositories$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$ReadRepositories$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$ReadRepositories<TRes>
    implements CopyWith$Query$ReadRepositories<TRes> {
  _CopyWithImpl$Query$ReadRepositories(
    this._instance,
    this._then,
  );

  final Query$ReadRepositories _instance;

  final TRes Function(Query$ReadRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadRepositories(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$ReadRepositories$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReadRepositories$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$ReadRepositories$viewer(
        local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$ReadRepositories<TRes>
    implements CopyWith$Query$ReadRepositories<TRes> {
  _CopyWithStubImpl$Query$ReadRepositories(this._res);

  TRes _res;

  call({
    Query$ReadRepositories$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReadRepositories$viewer<TRes> get viewer =>
      CopyWith$Query$ReadRepositories$viewer.stub(_res);
}

const documentNodeQueryReadRepositories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReadRepositories'),
    variableDefinitions: [
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
        name: NameNode(value: 'viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'repositories'),
            alias: null,
            arguments: [
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
Query$ReadRepositories _parserFn$Query$ReadRepositories(
        Map<String, dynamic> data) =>
    Query$ReadRepositories.fromJson(data);
typedef OnQueryComplete$Query$ReadRepositories = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ReadRepositories?,
);

class Options$Query$ReadRepositories
    extends graphql.QueryOptions<Query$ReadRepositories> {
  Options$Query$ReadRepositories({
    String? operationName,
    required Variables$Query$ReadRepositories variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReadRepositories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ReadRepositories? onComplete,
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
                        : _parserFn$Query$ReadRepositories(data),
                  ),
          onError: onError,
          document: documentNodeQueryReadRepositories,
          parserFn: _parserFn$Query$ReadRepositories,
        );

  final OnQueryComplete$Query$ReadRepositories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ReadRepositories
    extends graphql.WatchQueryOptions<Query$ReadRepositories> {
  WatchOptions$Query$ReadRepositories({
    String? operationName,
    required Variables$Query$ReadRepositories variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReadRepositories? typedOptimisticResult,
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
          document: documentNodeQueryReadRepositories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ReadRepositories,
        );
}

class FetchMoreOptions$Query$ReadRepositories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ReadRepositories({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ReadRepositories variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryReadRepositories,
        );
}

extension ClientExtension$Query$ReadRepositories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ReadRepositories>> query$ReadRepositories(
          Options$Query$ReadRepositories options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ReadRepositories> watchQuery$ReadRepositories(
          WatchOptions$Query$ReadRepositories options) =>
      this.watchQuery(options);
  void writeQuery$ReadRepositories({
    required Query$ReadRepositories data,
    required Variables$Query$ReadRepositories variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryReadRepositories),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ReadRepositories? readQuery$ReadRepositories({
    required Variables$Query$ReadRepositories variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryReadRepositories),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ReadRepositories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ReadRepositories>
    useQuery$ReadRepositories(Options$Query$ReadRepositories options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ReadRepositories> useWatchQuery$ReadRepositories(
        WatchOptions$Query$ReadRepositories options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ReadRepositories$Widget
    extends graphql_flutter.Query<Query$ReadRepositories> {
  Query$ReadRepositories$Widget({
    widgets.Key? key,
    required Options$Query$ReadRepositories options,
    required graphql_flutter.QueryBuilder<Query$ReadRepositories> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ReadRepositories$viewer {
  Query$ReadRepositories$viewer({
    required this.repositories,
    this.$__typename = 'User',
  });

  factory Query$ReadRepositories$viewer.fromJson(Map<String, dynamic> json) {
    final l$repositories = json['repositories'];
    final l$$__typename = json['__typename'];
    return Query$ReadRepositories$viewer(
      repositories: Query$ReadRepositories$viewer$repositories.fromJson(
          (l$repositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReadRepositories$viewer$repositories repositories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$repositories = repositories;
    _resultData['repositories'] = l$repositories.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$repositories = repositories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$repositories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadRepositories$viewer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$repositories = repositories;
    final lOther$repositories = other.repositories;
    if (l$repositories != lOther$repositories) {
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

extension UtilityExtension$Query$ReadRepositories$viewer
    on Query$ReadRepositories$viewer {
  CopyWith$Query$ReadRepositories$viewer<Query$ReadRepositories$viewer>
      get copyWith => CopyWith$Query$ReadRepositories$viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadRepositories$viewer<TRes> {
  factory CopyWith$Query$ReadRepositories$viewer(
    Query$ReadRepositories$viewer instance,
    TRes Function(Query$ReadRepositories$viewer) then,
  ) = _CopyWithImpl$Query$ReadRepositories$viewer;

  factory CopyWith$Query$ReadRepositories$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadRepositories$viewer;

  TRes call({
    Query$ReadRepositories$viewer$repositories? repositories,
    String? $__typename,
  });
  CopyWith$Query$ReadRepositories$viewer$repositories<TRes> get repositories;
}

class _CopyWithImpl$Query$ReadRepositories$viewer<TRes>
    implements CopyWith$Query$ReadRepositories$viewer<TRes> {
  _CopyWithImpl$Query$ReadRepositories$viewer(
    this._instance,
    this._then,
  );

  final Query$ReadRepositories$viewer _instance;

  final TRes Function(Query$ReadRepositories$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadRepositories$viewer(
        repositories: repositories == _undefined || repositories == null
            ? _instance.repositories
            : (repositories as Query$ReadRepositories$viewer$repositories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReadRepositories$viewer$repositories<TRes> get repositories {
    final local$repositories = _instance.repositories;
    return CopyWith$Query$ReadRepositories$viewer$repositories(
        local$repositories, (e) => call(repositories: e));
  }
}

class _CopyWithStubImpl$Query$ReadRepositories$viewer<TRes>
    implements CopyWith$Query$ReadRepositories$viewer<TRes> {
  _CopyWithStubImpl$Query$ReadRepositories$viewer(this._res);

  TRes _res;

  call({
    Query$ReadRepositories$viewer$repositories? repositories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReadRepositories$viewer$repositories<TRes> get repositories =>
      CopyWith$Query$ReadRepositories$viewer$repositories.stub(_res);
}

class Query$ReadRepositories$viewer$repositories {
  Query$ReadRepositories$viewer$repositories({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'RepositoryConnection',
  });

  factory Query$ReadRepositories$viewer$repositories.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ReadRepositories$viewer$repositories(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$ReadRepositories$viewer$repositories$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$ReadRepositories$viewer$repositories$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ReadRepositories$viewer$repositories$nodes?>? nodes;

  final Query$ReadRepositories$viewer$repositories$pageInfo pageInfo;

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
    if (!(other is Query$ReadRepositories$viewer$repositories) ||
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

extension UtilityExtension$Query$ReadRepositories$viewer$repositories
    on Query$ReadRepositories$viewer$repositories {
  CopyWith$Query$ReadRepositories$viewer$repositories<
          Query$ReadRepositories$viewer$repositories>
      get copyWith => CopyWith$Query$ReadRepositories$viewer$repositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadRepositories$viewer$repositories<TRes> {
  factory CopyWith$Query$ReadRepositories$viewer$repositories(
    Query$ReadRepositories$viewer$repositories instance,
    TRes Function(Query$ReadRepositories$viewer$repositories) then,
  ) = _CopyWithImpl$Query$ReadRepositories$viewer$repositories;

  factory CopyWith$Query$ReadRepositories$viewer$repositories.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories;

  TRes call({
    List<Query$ReadRepositories$viewer$repositories$nodes?>? nodes,
    Query$ReadRepositories$viewer$repositories$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$ReadRepositories$viewer$repositories$nodes?>? Function(
              Iterable<
                  CopyWith$Query$ReadRepositories$viewer$repositories$nodes<
                      Query$ReadRepositories$viewer$repositories$nodes>?>?)
          _fn);
  CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ReadRepositories$viewer$repositories<TRes>
    implements CopyWith$Query$ReadRepositories$viewer$repositories<TRes> {
  _CopyWithImpl$Query$ReadRepositories$viewer$repositories(
    this._instance,
    this._then,
  );

  final Query$ReadRepositories$viewer$repositories _instance;

  final TRes Function(Query$ReadRepositories$viewer$repositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadRepositories$viewer$repositories(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes
                as List<Query$ReadRepositories$viewer$repositories$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$ReadRepositories$viewer$repositories$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$ReadRepositories$viewer$repositories$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$ReadRepositories$viewer$repositories$nodes<
                          Query$ReadRepositories$viewer$repositories$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$ReadRepositories$viewer$repositories$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories<TRes>
    implements CopyWith$Query$ReadRepositories$viewer$repositories<TRes> {
  _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories(this._res);

  TRes _res;

  call({
    List<Query$ReadRepositories$viewer$repositories$nodes?>? nodes,
    Query$ReadRepositories$viewer$repositories$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo.stub(
              _res);
}

class Query$ReadRepositories$viewer$repositories$nodes {
  Query$ReadRepositories$viewer$repositories$nodes({
    required this.id,
    required this.name,
    required this.viewerHasStarred,
    this.$__typename = 'Repository',
  });

  factory Query$ReadRepositories$viewer$repositories$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$$__typename = json['__typename'];
    return Query$ReadRepositories$viewer$repositories$nodes(
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
    if (!(other is Query$ReadRepositories$viewer$repositories$nodes) ||
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

extension UtilityExtension$Query$ReadRepositories$viewer$repositories$nodes
    on Query$ReadRepositories$viewer$repositories$nodes {
  CopyWith$Query$ReadRepositories$viewer$repositories$nodes<
          Query$ReadRepositories$viewer$repositories$nodes>
      get copyWith => CopyWith$Query$ReadRepositories$viewer$repositories$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadRepositories$viewer$repositories$nodes<TRes> {
  factory CopyWith$Query$ReadRepositories$viewer$repositories$nodes(
    Query$ReadRepositories$viewer$repositories$nodes instance,
    TRes Function(Query$ReadRepositories$viewer$repositories$nodes) then,
  ) = _CopyWithImpl$Query$ReadRepositories$viewer$repositories$nodes;

  factory CopyWith$Query$ReadRepositories$viewer$repositories$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories$nodes;

  TRes call({
    String? id,
    String? name,
    bool? viewerHasStarred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReadRepositories$viewer$repositories$nodes<TRes>
    implements CopyWith$Query$ReadRepositories$viewer$repositories$nodes<TRes> {
  _CopyWithImpl$Query$ReadRepositories$viewer$repositories$nodes(
    this._instance,
    this._then,
  );

  final Query$ReadRepositories$viewer$repositories$nodes _instance;

  final TRes Function(Query$ReadRepositories$viewer$repositories$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? viewerHasStarred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadRepositories$viewer$repositories$nodes(
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

class _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories$nodes<TRes>
    implements CopyWith$Query$ReadRepositories$viewer$repositories$nodes<TRes> {
  _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? viewerHasStarred,
    String? $__typename,
  }) =>
      _res;
}

class Query$ReadRepositories$viewer$repositories$pageInfo {
  Query$ReadRepositories$viewer$repositories$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ReadRepositories$viewer$repositories$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$ReadRepositories$viewer$repositories$pageInfo(
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
    if (!(other is Query$ReadRepositories$viewer$repositories$pageInfo) ||
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

extension UtilityExtension$Query$ReadRepositories$viewer$repositories$pageInfo
    on Query$ReadRepositories$viewer$repositories$pageInfo {
  CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<
          Query$ReadRepositories$viewer$repositories$pageInfo>
      get copyWith =>
          CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<
    TRes> {
  factory CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo(
    Query$ReadRepositories$viewer$repositories$pageInfo instance,
    TRes Function(Query$ReadRepositories$viewer$repositories$pageInfo) then,
  ) = _CopyWithImpl$Query$ReadRepositories$viewer$repositories$pageInfo;

  factory CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReadRepositories$viewer$repositories$pageInfo<TRes>
    implements
        CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<TRes> {
  _CopyWithImpl$Query$ReadRepositories$viewer$repositories$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ReadRepositories$viewer$repositories$pageInfo _instance;

  final TRes Function(Query$ReadRepositories$viewer$repositories$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadRepositories$viewer$repositories$pageInfo(
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

class _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories$pageInfo<
        TRes>
    implements
        CopyWith$Query$ReadRepositories$viewer$repositories$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ReadRepositories$viewer$repositories$pageInfo(
      this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
