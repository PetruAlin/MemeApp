import 'package:flutter/cupertino.dart';
import 'package:flutter_final_course_test/Models/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class LoadContainer extends StatelessWidget {
  final ViewModelBuilder<bool> builder;

  const LoadContainer({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.isLoading;
        });
  }
}
