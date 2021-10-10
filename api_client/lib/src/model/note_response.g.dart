// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteResponse extends NoteResponse {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? color;
  @override
  final int? priority;
  @override
  final BuiltList<NoteDocumentResponse>? documents;
  @override
  final int? localId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$NoteResponse([void Function(NoteResponseBuilder)? updates]) =>
      (new NoteResponseBuilder()..update(updates)).build();

  _$NoteResponse._(
      {this.id,
      this.title,
      this.description,
      this.color,
      this.priority,
      this.documents,
      this.localId,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  NoteResponse rebuild(void Function(NoteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteResponseBuilder toBuilder() => new NoteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteResponse &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        color == other.color &&
        priority == other.priority &&
        documents == other.documents &&
        localId == other.localId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), title.hashCode),
                                description.hashCode),
                            color.hashCode),
                        priority.hashCode),
                    documents.hashCode),
                localId.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoteResponse')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('color', color)
          ..add('priority', priority)
          ..add('documents', documents)
          ..add('localId', localId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NoteResponseBuilder
    implements Builder<NoteResponse, NoteResponseBuilder> {
  _$NoteResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _color;
  int? get color => _$this._color;
  set color(int? color) => _$this._color = color;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  ListBuilder<NoteDocumentResponse>? _documents;
  ListBuilder<NoteDocumentResponse> get documents =>
      _$this._documents ??= new ListBuilder<NoteDocumentResponse>();
  set documents(ListBuilder<NoteDocumentResponse>? documents) =>
      _$this._documents = documents;

  int? _localId;
  int? get localId => _$this._localId;
  set localId(int? localId) => _$this._localId = localId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  NoteResponseBuilder() {
    NoteResponse._initializeBuilder(this);
  }

  NoteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _color = $v.color;
      _priority = $v.priority;
      _documents = $v.documents?.toBuilder();
      _localId = $v.localId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteResponse;
  }

  @override
  void update(void Function(NoteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoteResponse build() {
    _$NoteResponse _$result;
    try {
      _$result = _$v ??
          new _$NoteResponse._(
              id: id,
              title: title,
              description: description,
              color: color,
              priority: priority,
              documents: _documents?.build(),
              localId: localId,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documents';
        _documents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NoteResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
