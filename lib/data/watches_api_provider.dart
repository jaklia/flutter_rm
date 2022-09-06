import 'package:flutter_rm/mock_data/watches.dart';

import '../model/watch.dart';

class WatchesApiProvider {
  Future<List<Watch>> getWatches() async {
    //  mock api call
    return Future.delayed(
      const Duration(milliseconds: 1000),
      () => MockData.watches,
    );
  }
}
