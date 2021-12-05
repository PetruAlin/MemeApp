import 'package:flutter_final_course_test/actions/get_memes.dart';
import 'package:flutter_final_course_test/data/memes_api.dart';
import 'package:flutter_final_course_test/models/app_state.dart';
import 'package:flutter_final_course_test/models/meme.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  final MemesApi _memesApi;

  AppEpics(this._memesApi);

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetMemes>(getMemes),
    ]);
  }

  Stream<dynamic> getMemes(Stream<GetMemes> a, EpicStore<AppState> store) {
    return a.flatMap((GetMemes action) => Stream<void>.value(null)
        .asyncMap((_) => _memesApi.getMemes(store.state.page))
        .map<Object>((List<Meme> memes) => GetMemesSuccess(memes))
        .onErrorReturnWith((error) => GetMemesError(error))
        .doOnData(action.result));
  }
}
