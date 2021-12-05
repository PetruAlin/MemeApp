import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/get_memes.dart';
import '../containers/load_container.dart';
import '../containers/memes_container.dart';
import '../models/app_state.dart';
import '../models/meme.dart';

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
    store.dispatch(GetMemes(_onResult));
    _controller.addListener(_whenScrolling);
  }

  void _onResult(dynamic action) {
    if (action is GetMemesError) {
      showDialog<void>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error fetching memes'),
              content: Text('${action.error}'),
            );
          });
    }
  }

  void _whenScrolling() {
    final double endPos = _controller.position.maxScrollExtent;
    final double currentPos = _controller.offset;

    final Store<AppState> store = StoreProvider.of<AppState>(context);
    if (currentPos >= endPos && !store.state.isLoading) {
      store.dispatch(GetMemes(_onResult));
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
      appBar: AppBar(
        actions: <Widget>[
          LoadContainer(
            builder: (BuildContext context, bool isLoading) {
              if (!isLoading) {
                return const SizedBox.shrink();
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
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
                    child: Image.network(
                      meme.image,
                      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
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
