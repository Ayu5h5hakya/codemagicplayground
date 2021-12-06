import 'package:codemagicpractice/album.dart';
import 'package:codemagicpractice/api.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'api_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('fetch album', () {
    test('return an album if the test is successful', () async {
      final _client = MockClient();
      when(_client
              .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
          .thenAnswer((_) async =>
              http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));

      expect(await fetchAlbum(_client), isA<Album>());
    });
  });
}
