import 'package:flutter_final_course_test/Actions/get_memes.dart';
import 'package:flutter_final_course_test/Models/app_state.dart';
import 'package:redux/redux.dart';
import '../Models/meme.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetMemes>(_getMemes),
  TypedReducer<AppState, GetMemesSuccess>(_getSuccess),
  TypedReducer<AppState, GetMemesError>(_getError),
]);

AppState _getMemes(AppState state, GetMemes action) {
  return state.copyWith(isLoading: true);
}

AppState _getSuccess(AppState state, GetMemesSuccess action) {
  List<Meme> newMemes = <Meme>[];
  newMemes.addAll(state.memes);
  newMemes.addAll(action.memes);
  return state.copyWith(isLoading: false, memes: newMemes, page: state.page + 1);
}

AppState _getError(AppState state, GetMemesError action) {
  return state.copyWith(isLoading: false);
}
