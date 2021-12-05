import 'package:redux/redux.dart';

import '../actions/get_memes.dart';
import '../models/app_state.dart';
import '../models/meme.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMemes>(_getMemes),
  TypedReducer<AppState, GetMemesSuccess>(_getSuccess),
  TypedReducer<AppState, GetMemesError>(_getError),
]);

AppState _getMemes(AppState state, GetMemes action) {
  return state.copyWith(isLoading: true);
}

AppState _getSuccess(AppState state, GetMemesSuccess action) {
  final List<Meme> newMemes = <Meme>[];
  newMemes.addAll(state.memes);
  newMemes.addAll(action.memes);
  return state.copyWith(isLoading: false, memes: newMemes, page: state.page + 1);
}

AppState _getError(AppState state, GetMemesError action) {
  return state.copyWith(isLoading: false);
}
