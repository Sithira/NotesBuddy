// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteRequest extends NoteRequest {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? noteBody;

  factory _$NoteRequest([void Function(NoteRequestBuilder)? updates]) =>
      (new NoteRequestBuilder()..update(updates)).build();

  _$NoteRequest._({this.id, this.title, this.noteBody}) : super._();

  @override
  NoteRequest rebuild(void Function(NoteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteRequestBuilder toBuilder() => new NoteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteRequest &&
        id == other.id &&
        title == other.title &&
        noteBody == other.noteBody;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), title.hashCode), noteBody.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoteRequest')
          ..add('id', id)
          ..add('title', title)
          ..add('noteBody', noteBody))
        .toString();
  }
}

class NoteRequestBuilder implements Builder<NoteRequest, NoteRequestBuilder> {
  _$NoteRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _noteBody;
  String? get noteBody => _$this._noteBody;
  set noteBody(String? noteBody) => _$this._noteBody = noteBody;

  NoteRequestBuilder() {
    NoteRequest._initializeBuilder(this);
  }

  NoteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _noteBody = $v.noteBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteRequest;
  }

  @override
  void update(void Function(NoteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoteRequest build() {
    final _$result =
        _$v ?? new _$NoteRequest._(id: id, title: title, noteBody: noteBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
