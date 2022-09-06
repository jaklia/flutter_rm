import 'network.dart';

class WatchesApi {
  // return a string because the "backend" is weird
  Future<String> getWatches() async {
    var res = await Network.dio.get('');
    return res.data;
  }
}
