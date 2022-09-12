import 'package:flutter_rm/provider/watches_api_provider.dart';

import '../model/watch.dart';

class WatchesRepository {
  final _provider = WatchesApiProvider();

  Future<List<Watch>> getWatches() async {
    return await _provider.getWatches();
  }
}
