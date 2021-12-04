import 'package:flutter_final_course_test/Actions/get_memes.dart';
import 'package:flutter_final_course_test/Data/memes_api.dart';
import 'package:flutter_final_course_test/Models/app_state.dart';
import 'package:flutter_final_course_test/Models/meme.dart';
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
    return a
        .asyncMap((GetMemes action) => _memesApi.getMemes(action.page))
        .map<Object>((List<Meme> memes) => GetMemesSuccess(memes))
        .onErrorReturnWith((error) => GetMemesError('Error in getting necessary files from server')); // vezi handeling
    //la eroare + nume foldere + nume successfull;
  }
}
