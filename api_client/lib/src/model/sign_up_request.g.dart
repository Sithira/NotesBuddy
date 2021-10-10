// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpRequest extends SignUpRequest {
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  factory _$SignUpRequest([void Function(SignUpRequestBuilder)? updates]) =>
      (new SignUpRequestBuilder()..update(updates)).build();

  _$SignUpRequest._(
      {required this.name,
      required this.username,
      required this.email,
      required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'SignUpRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        username, 'SignUpRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(email, 'SignUpRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, 'SignUpRequest', 'password');
  }

  @override
  SignUpRequest rebuild(void Function(SignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpRequestBuilder toBuilder() => new SignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpRequest &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), username.hashCode), email.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpRequest')
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class SignUpRequestBuilder
    implements Builder<SignUpRequest, SignUpRequestBuilder> {
  _$SignUpRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SignUpRequestBuilder() {
    SignUpRequest._initializeBuilder(this);
  }

  SignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpRequest;
  }

  @override
  void update(void Function(SignUpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpRequest build() {
    final _$result = _$v ??
        new _$SignUpRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'SignUpRequest', 'name'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'SignUpRequest', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'SignUpRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'SignUpRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
