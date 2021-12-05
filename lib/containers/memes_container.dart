import 'package:flutter/cupertino.dart';
import 'package:flutter_final_course_test/models/app_state.dart';
import 'package:flutter_final_course_test/models/meme.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MemesContainer extends StatelessWidget {
  final ViewModelBuilder<List<Meme>> builder;

  const MemesContainer({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Meme>>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.memes;
        });
  }
}
