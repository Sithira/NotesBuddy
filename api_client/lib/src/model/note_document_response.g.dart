// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_document_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteDocumentResponse extends NoteDocumentResponse {
  @override
  final int? noteId;
  @override
  final String? urlPath;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$NoteDocumentResponse(
          [void Function(NoteDocumentResponseBuilder)? updates]) =>
      (new NoteDocumentResponseBuilder()..update(updates)).build();

  _$NoteDocumentResponse._(
      {this.noteId, this.urlPath, this.createdAt, this.updatedAt})
      : super._();

  @override
  NoteDocumentResponse rebuild(
          void Function(NoteDocumentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteDocumentResponseBuilder toBuilder() =>
      new NoteDocumentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteDocumentResponse &&
        noteId == other.noteId &&
        urlPath == other.urlPath &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, noteId.hashCode), urlPath.hashCode), createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoteDocumentResponse')
          ..add('noteId', noteId)
          ..add('urlPath', urlPath)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NoteDocumentResponseBuilder
    implements Builder<NoteDocumentResponse, NoteDocumentResponseBuilder> {
  _$NoteDocumentResponse? _$v;

  int? _noteId;
  int? get noteId => _$this._noteId;
  set noteId(int? noteId) => _$this._noteId = noteId;

  String? _urlPath;
  String? get urlPath => _$this._urlPath;
  set urlPath(String? urlPath) => _$this._urlPath = urlPath;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  NoteDocumentResponseBuilder() {
    NoteDocumentResponse._initializeBuilder(this);
  }

  NoteDocumentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _urlPath = $v.urlPath;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteDocumentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteDocumentResponse;
  }

  @override
  void update(void Function(NoteDocumentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoteDocumentResponse build() {
    final _$result = _$v ??
        new _$NoteDocumentResponse._(
            noteId: noteId,
            urlPath: urlPath,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
