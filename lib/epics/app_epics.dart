import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/memes_api.dart';
import '../models/index.dart';

class AppEpics {
  AppEpics(this._memesApi);

  final MemesApi _memesApi;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetMemesStart>(getMemes),
    ]);
  }

  Stream<GetMemes> getMemes(Stream<GetMemesStart> a, EpicStore<AppState> store) {
    return a.flatMap((GetMemesStart action) => Stream<void>.value(null)
        .asyncMap((_) => _memesApi.getMemes(store.state.page))
        .map<GetMemes>((List<Meme> memes) => GetMemes.successful(memes))
        .onErrorReturnWith((error) => GetMemes.error(error))
        .doOnData(action.result));
  }
}
