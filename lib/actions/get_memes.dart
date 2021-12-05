import '../models/meme.dart';

class GetMemes {
  GetMemes(this.result);

  final void Function(dynamic action) result;
}

class GetMemesSuccess {
  GetMemesSuccess(this.memes);

  final List<Meme> memes;
}

class GetMemesError {
  GetMemesError(this.error);

  final Object error;
}
