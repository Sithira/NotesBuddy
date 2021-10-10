class LoginException implements Exception {
  final _message;
  final _prefix;

  LoginException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}
