import 'package:test/test.dart';
import 'package:notes_buddy_api_client/notes_buddy_api_client.dart';


/// tests for AuthenticationControllerApi
void main() {
  final instance = NotesBuddyApiClient().getAuthenticationControllerApi();

  group(AuthenticationControllerApi, () {
    //Future<LoginResponse> authenticateUser(LoginRequest loginRequest) async
    test('test authenticateUser', () async {
      // TODO
    });

    //Future<UserSummary> getCurrentUser() async
    test('test getCurrentUser', () async {
      // TODO
    });

    //Future registerUser(SignUpRequest signUpRequest) async
    test('test registerUser', () async {
      // TODO
    });

  });
}
