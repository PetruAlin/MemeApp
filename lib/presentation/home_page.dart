import 'package:flutter/material.dart';
import 'package:flutter_final_course_test/Actions/get_memes.dart';
import 'package:flutter_final_course_test/Containers/memes_container.dart';
import 'package:flutter_final_course_test/Models/app_state.dart';
import 'package:flutter_final_course_test/Models/meme.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    final Store store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetMemes(1));
    _controller.addListener(_whenScrolling);
  }

  void _whenScrolling() {
    final double endPos = _controller.position.maxScrollExtent;
    final double currentPos = _controller.offset;

    final Store<AppState> store = StoreProvider.of<AppState>(context);
    if (currentPos > endPos && !store.state.isLoading) {
      store.dispatch(GetMemes(store.state.page + 1));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MemesContainer(
        builder: (BuildContext context, List<Meme> memes) {
          return ListView.builder(
            controller: _controller,
            itemCount: memes.length,
            itemBuilder: (BuildContext context, int index) {
              final Meme meme = memes[index];
              return Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Image.network(meme.image),
                  ),
                  ListTile(
                    title: Text(
                      meme.name,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
