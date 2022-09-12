import 'dart:convert';

import 'package:flutter_rm/mock_data/watches.dart';
import 'package:flutter_rm/network/watches_api.dart';

import '../model/watch.dart';

class WatchesApiProvider {
  WatchesApi watchesApi = WatchesApi();

  Future<List<Watch>> getWatches() async {
    var res = await watchesApi.getWatches();
    // need the next line 'cause res is plain string
    // if i had a normal backend, that returns a json
    //  then the fromJson thing from the json_serializable package could
    //  interpet it without the jsonDecode
    //  TODO: probably this (jsondecode) should be in the network class as an interceptor
    //   (but now we have only one endpoint so guess this is ok for now)
    List<dynamic> decoded = jsonDecode(res);
    var arr = decoded.map((a) => Watch.fromJson(a)).toList();
    return arr;
  }

  Future<List<Watch>> getMockWatches() async {
    //  mock api call
    return Future.delayed(
      const Duration(milliseconds: 1000),
      () => MockData.watches,
    );
  }
}
