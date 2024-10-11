// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_page_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VideoPlayerStateCWProxy {
  LoadingPageState isPlaying(bool isPlaying);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoPlayerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoPlayerState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoadingPageState call({
    bool? isPlaying,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVideoPlayerState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVideoPlayerState.copyWith.fieldName(...)`
class _$VideoPlayerStateCWProxyImpl implements _$VideoPlayerStateCWProxy {
  const _$VideoPlayerStateCWProxyImpl(this._value);

  final LoadingPageState _value;

  @override
  LoadingPageState isPlaying(bool isPlaying) => this(isPlaying: isPlaying);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoPlayerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoPlayerState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoadingPageState call({
    Object? isPlaying = const $CopyWithPlaceholder(),
  }) {
    return LoadingPageState(
      isPlaying: isPlaying == const $CopyWithPlaceholder() || isPlaying == null
          ? _value.isPlaying
          // ignore: cast_nullable_to_non_nullable
          : isPlaying as bool,
    );
  }
}

extension $VideoPlayerStateCopyWith on LoadingPageState {
  /// Returns a callable class that can be used as follows: `instanceOfVideoPlayerState.copyWith(...)` or like so:`instanceOfVideoPlayerState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VideoPlayerStateCWProxy get copyWith => _$VideoPlayerStateCWProxyImpl(this);
}
