import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/foundation.dart';

part 'loading_page_state.g.dart';

@CopyWith()
@immutable
class LoadingPageState {
  final bool isPlaying;

  const LoadingPageState({this.isPlaying = false});
}
