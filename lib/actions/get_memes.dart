import '../Models/meme.dart';

class GetMemes {
  final int page;

  GetMemes(this.page);
}

class GetMemesSuccess {
  final List<Meme> memes;

  GetMemesSuccess(this.memes);
}

class GetMemesError {
  final Object error;

  GetMemesError(this.error);
}
