import '../models/meme.dart';

class GetMemes {
  final void Function(dynamic action) result;

  GetMemes(this.result);
}

class GetMemesSuccess {
  final List<Meme> memes;

  GetMemesSuccess(this.memes);
}

class GetMemesError {
  final Object error;

  GetMemesError(this.error);
}
