import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rm/bloc/watches_bloc.dart';
import 'package:flutter_rm/bloc/watches_event.dart';
import 'package:flutter_rm/repository/watches_repository.dart';

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
              return const Center(
                child: Text('loading . . .'),
              );
            case WatchListStatus.success:
              return RefreshIndicator(
                onRefresh: () async => BlocProvider.of<WatchListBloc>(context)
                    .add(const WatchListRequested()),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: state.watches.length,
                  itemBuilder: (context, idx) {
                    return WatchCard(watch: state.watches[idx]);
                  },
                ),
              );
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
      // ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: [
      //     WatchCard(),
      //     WatchCard(),
      //     WatchCard(),
      //     WatchCard(),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
