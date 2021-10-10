// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSummary extends UserSummary {
  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? name;

  factory _$UserSummary([void Function(UserSummaryBuilder)? updates]) =>
      (new UserSummaryBuilder()..update(updates)).build();

  _$UserSummary._({this.id, this.username, this.name}) : super._();

  @override
  UserSummary rebuild(void Function(UserSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSummaryBuilder toBuilder() => new UserSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSummary &&
        id == other.id &&
        username == other.username &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), username.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSummary')
          ..add('id', id)
          ..add('username', username)
          ..add('name', name))
        .toString();
  }
}

class UserSummaryBuilder implements Builder<UserSummary, UserSummaryBuilder> {
  _$UserSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserSummaryBuilder() {
    UserSummary._initializeBuilder(this);
  }

  UserSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSummary;
  }

  @override
  void update(void Function(UserSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSummary build() {
    final _$result =
        _$v ?? new _$UserSummary._(id: id, username: username, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
