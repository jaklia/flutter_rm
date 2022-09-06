import 'network.dart';

class WatchesApi {
  getWatches() async {
    var res = await Network.dio.get('');
    return res.data;
  }
}
