import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rm/repository/watches_repository.dart';

import 'watches_event.dart';
import 'watches_state.dart';

class WatchListBloc extends Bloc<WatchListEvent, WatchListState> {
  final WatchesRepository _watchesRepository;

  WatchListBloc({
    required WatchesRepository watchesRepository,
  })  : _watchesRepository = watchesRepository,
        super(const WatchListState()) {
    on<WatchListRequested>(_onWatchListRequested);
  }

  Future<void> _onWatchListRequested(
    WatchListRequested event,
    Emitter<WatchListState> emit,
  ) async {
    emit(state.copyWith(status: WatchListStatus.loading));

    try {
      var watches = await _watchesRepository.getWatches();
      emit(state.copyWith(status: WatchListStatus.success, watches: watches));
    } catch (err) {
      emit(state.copyWith(status: WatchListStatus.fail));
    }
  }
}
