import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/get_memes.dart';
import '../data/memes_api.dart';
import '../models/app_state.dart';
import '../models/meme.dart';

class AppEpics {
  AppEpics(this._memesApi);

  final MemesApi _memesApi;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetMemes>(getMemes),
    ]);
  }

  Stream<dynamic> getMemes(Stream<GetMemes> a, EpicStore<AppState> store) {
    return a.flatMap<dynamic>((GetMemes action) => Stream<void>.value(null)
        .asyncMap((_) => _memesApi.getMemes(store.state.page))
        .map<Object>((List<Meme> memes) => GetMemesSuccess(memes))
        .onErrorReturnWith((error) => GetMemesError(error))
        .doOnData(action.result));
  }
}
