import 'meme.dart';

class AppState {
  AppState({
    this.memes = const <Meme>[],
    this.isLoading = false,
    this.page = 1,
  });

  final List<Meme> memes;
  final int page;
  final bool isLoading;

  AppState copyWith({
    final List<Meme>? memes,
    final bool? isLoading,
    final int? page,
  }) {
    return AppState(
      memes: memes ?? this.memes,
      isLoading: isLoading ?? this.isLoading,
      page: page ?? this.page,
    );
  }
}
