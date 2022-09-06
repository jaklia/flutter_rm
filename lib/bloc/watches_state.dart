import '../model/watch.dart';

enum WatchListStatus { init, loading, success, fail }

class WatchListState {
  final WatchListStatus status;
  final List<Watch> watches;
  // maybe add errors

  const WatchListState({
    this.status = WatchListStatus.init,
    this.watches = const [],
  });

  WatchListState copyWith({WatchListStatus? status, List<Watch>? watches}) {
    return WatchListState(
      status: status ?? this.status,
      watches: watches ?? this.watches,
    );
  }
}
