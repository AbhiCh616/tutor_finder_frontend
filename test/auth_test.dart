import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tutor_finder_frontend/constants/api_path.dart' as APIConstants;
import 'package:tutor_finder_frontend/services/auth.dart';

import 'auth_test.mocks.dart';

class MockSecureStorage extends Mock implements ISecureStorage {}

final mockSecureStorage = MockMockSecureStorage();
final mockClient = MockClient();
final auth = Auth(mockSecureStorage, mockClient);

@GenerateMocks([http.Client])
@GenerateMocks([MockSecureStorage])
void main() {
  group('create user', () {
    test('user created successfully', () async {
      when(mockClient.post(
        Uri.parse(APIConstants.CREATE_USER_URL),
        headers: {'Content-Type': 'application/json'},
        body: '{"email":"example@domain.com","password":"password01"}',
      )).thenAnswer((_) async => http.Response('{"token": "abcde"}', 201));

      expect(
          await auth.createAccount('example@domain.com', 'password01'), true);
      verify(mockSecureStorage.saveToken('abcde')).called(1);
    });
  });

  group('login user', () {
    test('user logged in successfully', () async {
      when(mockClient.post(
        Uri.parse(APIConstants.LOGIN_USER_URL),
        headers: {'Content-Type': 'application/json'},
        body: '{"username":"example@domain.com","password":"password01"}',
      )).thenAnswer((_) async => http.Response('{"token": "abcde"}', 200));

      expect(await auth.logIn('example@domain.com', 'password01'), true);
      verify(mockSecureStorage.saveToken('abcde')).called(1);
    });
  });

  group('logout user', () {
    test('logged out user successfully', () async {
      auth.logOut();
      verify(mockSecureStorage.deleteToken()).called(1);
    });
  });

  group('check user logged in status', () {
    test('user is logged in', () async {
      when(mockSecureStorage.hasToken()).thenAnswer((_) async => true);
      expect(await auth.isLoggedIn(), true);
    });

    test('user is not logged in', () async {
      when(mockSecureStorage.hasToken()).thenAnswer((_) async => false);
      expect(await auth.isLoggedIn(), false);
    });
  });
}
