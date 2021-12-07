part of actions;

@freezed
class GetMemes with _$GetMemes {
  const factory GetMemes(void Function(dynamic action) result) = GetMemesStart;

  const factory GetMemes.successful(List<Meme> memes) = GetMemesSuccessful;

  const factory GetMemes.error(Object error) = GetMemesError;
}
