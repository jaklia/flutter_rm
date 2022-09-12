import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/watches_bloc.dart';
import '../bloc/watches_event.dart';
import '../bloc/watches_state.dart';
import '../widgets/card/watch_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watches'),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.person),
            Text('nothing to see here'),
            Text('just added the drawer'),
          ],
        ),
      ),
      body: BlocBuilder<WatchListBloc, WatchListState>(
        builder: (context, state) {
          switch (state.status) {
            case WatchListStatus.init:
              return const Center(
                child: Text('init'),
              );
            case WatchListStatus.loading:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Center(
                    child: Text('Loading . . .'),
                  ),
                ],
              );
            case WatchListStatus.success:
              if (state.watches.isEmpty) {
                return const Center(
                  child: Text('No watches'),
                );
              } else {
                return RefreshIndicator(
                  onRefresh: () async => BlocProvider.of<WatchListBloc>(context)
                      .add(const WatchListRequested()),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: state.watches.length,
                    itemBuilder: (context, idx) {
                      return WatchCard(watch: state.watches[idx]);
                    },
                  ),
                );
              }
            case WatchListStatus.fail:
              return const Center(
                child: Text('error'),
              );
            default:
              return const Center(
                child: Text('something went wrong'),
              );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
