import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';
import '../models/meme.dart';

class MemesContainer extends StatelessWidget {
  const MemesContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Meme>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Meme>>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.memes;
        });
  }
}
