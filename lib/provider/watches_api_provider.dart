import 'package:flutter_rm/mock_data/watches.dart';
import 'package:flutter_rm/network/watches_api.dart';

import '../model/watch.dart';

class WatchesApiProvider {
  WatchesApi watchesApi = WatchesApi();

  Future<List<Watch>> getWatches() async {
    var res = await watchesApi.getWatches();

    return Future.delayed(
      const Duration(milliseconds: 1000),
      () => MockData.watches,
    );
  }

  Future<List<Watch>> getMockWatches() async {
    //  mock api call
    return Future.delayed(
      const Duration(milliseconds: 1000),
      () => MockData.watches,
    );
  }
}
