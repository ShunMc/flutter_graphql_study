import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$repository {
  Fragment$repository({
    required this.id,
    required this.name,
    required this.viewerHasStarred,
    this.$__typename = 'Repository',
  });

  factory Fragment$repository.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$$__typename = json['__typename'];
    return Fragment$repository(
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
    if (!(other is Fragment$repository) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$repository on Fragment$repository {
  CopyWith$Fragment$repository<Fragment$repository> get copyWith =>
      CopyWith$Fragment$repository(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$repository<TRes> {
  factory CopyWith$Fragment$repository(
    Fragment$repository instance,
    TRes Function(Fragment$repository) then,
  ) = _CopyWithImpl$Fragment$repository;

  factory CopyWith$Fragment$repository.stub(TRes res) =
      _CopyWithStubImpl$Fragment$repository;

  TRes call({
    String? id,
    String? name,
    bool? viewerHasStarred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$repository<TRes>
    implements CopyWith$Fragment$repository<TRes> {
  _CopyWithImpl$Fragment$repository(
    this._instance,
    this._then,
  );

  final Fragment$repository _instance;

  final TRes Function(Fragment$repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? viewerHasStarred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$repository(
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

class _CopyWithStubImpl$Fragment$repository<TRes>
    implements CopyWith$Fragment$repository<TRes> {
  _CopyWithStubImpl$Fragment$repository(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? viewerHasStarred,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionrepository = FragmentDefinitionNode(
  name: NameNode(value: 'repository'),
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
);
const documentNodeFragmentrepository = DocumentNode(definitions: [
  fragmentDefinitionrepository,
]);

extension ClientExtension$Fragment$repository on graphql.GraphQLClient {
  void writeFragment$repository({
    required Fragment$repository data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'repository',
            document: documentNodeFragmentrepository,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$repository? readFragment$repository({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'repository',
          document: documentNodeFragmentrepository,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$repository.fromJson(result);
  }
}
