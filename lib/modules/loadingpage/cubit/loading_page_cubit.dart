import 'package:bloc/bloc.dart';
import 'package:galaxy_web3/modules/loadingpage/cubit/loading_page_state.dart';

class LoadingPageCubit extends Cubit<LoadingPageState> {
  LoadingPageCubit() : super(const LoadingPageState());
}

extension VideoPlayerExtension on LoadingPageCubit {
  void togglePlayPause() {
    emit(state.copyWith(isPlaying: !state.isPlaying));
  }

  void play() {
    emit(state.copyWith(isPlaying: true));
  }

  void pause() {
    emit(state.copyWith(isPlaying: false));
  }

  void next() {}

  void previous() {}
}

extension PowerLowestNetworkFees on LoadingPageCubit {}
