import 'dart:convert';

import 'package:http/http.dart';

import '../models/index.dart';

class MemesApi {
  Future<List<Meme>> getMemes(int page) async {
    final Uri uri = Uri(
      scheme: 'http',
      host: 'alpha-meme-maker.herokuapp.com',
      pathSegments: <String>['$page'],
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error at getting memes');
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> content = body['data'] as List<dynamic>;

    final List<Meme> memes = <Meme>[];
    for (int i = 0; i < content.length; i++) {
      memes.add(Meme.fromJson(content[i] as Map<String, dynamic>));
    }

    return memes;
  }
}
