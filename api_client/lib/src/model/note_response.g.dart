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
  final String? noteBody;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$NoteResponse([void Function(NoteResponseBuilder)? updates]) =>
      (new NoteResponseBuilder()..update(updates)).build();

  _$NoteResponse._(
      {this.id, this.title, this.noteBody, this.createdAt, this.updatedAt})
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
        noteBody == other.noteBody &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), noteBody.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoteResponse')
          ..add('id', id)
          ..add('title', title)
          ..add('noteBody', noteBody)
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

  String? _noteBody;
  String? get noteBody => _$this._noteBody;
  set noteBody(String? noteBody) => _$this._noteBody = noteBody;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  NoteResponseBuilder() {
    NoteResponse._initializeBuilder(this);
  }

  NoteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _noteBody = $v.noteBody;
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
    final _$result = _$v ??
        new _$NoteResponse._(
            id: id,
            title: title,
            noteBody: noteBody,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
