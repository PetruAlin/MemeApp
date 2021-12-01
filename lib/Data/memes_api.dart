import 'dart:convert';

import 'package:http/http.dart';

import '../meme.dart';

class MemesApi {
  Future<List<Meme>> getMemes (int page) async {
    final Uri uri = Uri(
      scheme: 'http',
      host: 'alpha-meme-maker.herokuapp.com',
      queryParameters: <String, String>{
        'page': '$page',
      },
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error at getting movies');
    }

    final Map<String,dynamic> body = jsonDecode(response.body);
    final List<dynamic> content = body['data'] as List<dynamic>;
    final List<String> names =
        content.map((el) => el['name'] as String).toList();
    final List<String> images = content.map((el) => el['image'] as String).toList();

    final List<Meme> memes = <Meme>[];
    for (int i = 0; i < names.length; i++) {
      memes.add(Meme(names[i],images[i]));
    }

    /*for (int i = 0; i < memes.length; i++) {
      print('${memes[i].name} ${memes[i].image}');
    }*/

    return memes;
  }
}
/*
void main() {
  MemesApi api = MemesApi();
  api.getMemes(1);
}*/
