import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

class LoadContainer extends StatelessWidget {
  const LoadContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.isLoading;
        });
  }
}
