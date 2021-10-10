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
  final String? description;
  @override
  final int? color;
  @override
  final int? priority;
  @override
  final int? localId;

  factory _$NoteRequest([void Function(NoteRequestBuilder)? updates]) =>
      (new NoteRequestBuilder()..update(updates)).build();

  _$NoteRequest._(
      {this.id,
      this.title,
      this.description,
      this.color,
      this.priority,
      this.localId})
      : super._();

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
        description == other.description &&
        color == other.color &&
        priority == other.priority &&
        localId == other.localId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), title.hashCode),
                    description.hashCode),
                color.hashCode),
            priority.hashCode),
        localId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NoteRequest')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('color', color)
          ..add('priority', priority)
          ..add('localId', localId))
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

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _color;
  int? get color => _$this._color;
  set color(int? color) => _$this._color = color;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  int? _localId;
  int? get localId => _$this._localId;
  set localId(int? localId) => _$this._localId = localId;

  NoteRequestBuilder() {
    NoteRequest._initializeBuilder(this);
  }

  NoteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _color = $v.color;
      _priority = $v.priority;
      _localId = $v.localId;
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
    final _$result = _$v ??
        new _$NoteRequest._(
            id: id,
            title: title,
            description: description,
            color: color,
            priority: priority,
            localId: localId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
