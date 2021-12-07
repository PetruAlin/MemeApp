part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Meme>[]) List<Meme> memes,
    @Default(1) int page,
    @Default(false) bool isLoading,
  }) = AppState$;
}
