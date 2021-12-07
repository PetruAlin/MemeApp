// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetMemesTearOff {
  const _$GetMemesTearOff();

  GetMemesStart call(void Function(dynamic) result) {
    return GetMemesStart(
      result,
    );
  }

  GetMemesSuccessful successful(List<Meme> memes) {
    return GetMemesSuccessful(
      memes,
    );
  }

  GetMemesError error(Object error) {
    return GetMemesError(
      error,
    );
  }
}

/// @nodoc
const $GetMemes = _$GetMemesTearOff();

/// @nodoc
mixin _$GetMemes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<Meme> memes) successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMemesStart value) $default, {
    required TResult Function(GetMemesSuccessful value) successful,
    required TResult Function(GetMemesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemesCopyWith<$Res> {
  factory $GetMemesCopyWith(GetMemes value, $Res Function(GetMemes) then) = _$GetMemesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMemesCopyWithImpl<$Res> implements $GetMemesCopyWith<$Res> {
  _$GetMemesCopyWithImpl(this._value, this._then);

  final GetMemes _value;
  // ignore: unused_field
  final $Res Function(GetMemes) _then;
}

/// @nodoc
abstract class $GetMemesStartCopyWith<$Res> {
  factory $GetMemesStartCopyWith(GetMemesStart value, $Res Function(GetMemesStart) then) =
      _$GetMemesStartCopyWithImpl<$Res>;
  $Res call({void Function(dynamic) result});
}

/// @nodoc
class _$GetMemesStartCopyWithImpl<$Res> extends _$GetMemesCopyWithImpl<$Res> implements $GetMemesStartCopyWith<$Res> {
  _$GetMemesStartCopyWithImpl(GetMemesStart _value, $Res Function(GetMemesStart) _then)
      : super(_value, (v) => _then(v as GetMemesStart));

  @override
  GetMemesStart get _value => super._value as GetMemesStart;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(GetMemesStart(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic),
    ));
  }
}

/// @nodoc

class _$GetMemesStart implements GetMemesStart {
  const _$GetMemesStart(this.result);

  @override
  final void Function(dynamic) result;

  @override
  String toString() {
    return 'GetMemes(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMemesStart &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  $GetMemesStartCopyWith<GetMemesStart> get copyWith => _$GetMemesStartCopyWithImpl<GetMemesStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<Meme> memes) successful,
    required TResult Function(Object error) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
  }) {
    return $default?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMemesStart value) $default, {
    required TResult Function(GetMemesSuccessful value) successful,
    required TResult Function(GetMemesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMemesStart implements GetMemes {
  const factory GetMemesStart(void Function(dynamic) result) = _$GetMemesStart;

  void Function(dynamic) get result;
  @JsonKey(ignore: true)
  $GetMemesStartCopyWith<GetMemesStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemesSuccessfulCopyWith<$Res> {
  factory $GetMemesSuccessfulCopyWith(GetMemesSuccessful value, $Res Function(GetMemesSuccessful) then) =
      _$GetMemesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Meme> memes});
}

/// @nodoc
class _$GetMemesSuccessfulCopyWithImpl<$Res> extends _$GetMemesCopyWithImpl<$Res>
    implements $GetMemesSuccessfulCopyWith<$Res> {
  _$GetMemesSuccessfulCopyWithImpl(GetMemesSuccessful _value, $Res Function(GetMemesSuccessful) _then)
      : super(_value, (v) => _then(v as GetMemesSuccessful));

  @override
  GetMemesSuccessful get _value => super._value as GetMemesSuccessful;

  @override
  $Res call({
    Object? memes = freezed,
  }) {
    return _then(GetMemesSuccessful(
      memes == freezed
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>,
    ));
  }
}

/// @nodoc

class _$GetMemesSuccessful implements GetMemesSuccessful {
  const _$GetMemesSuccessful(this.memes);

  @override
  final List<Meme> memes;

  @override
  String toString() {
    return 'GetMemes.successful(memes: $memes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMemesSuccessful &&
            const DeepCollectionEquality().equals(other.memes, memes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(memes));

  @JsonKey(ignore: true)
  @override
  $GetMemesSuccessfulCopyWith<GetMemesSuccessful> get copyWith =>
      _$GetMemesSuccessfulCopyWithImpl<GetMemesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<Meme> memes) successful,
    required TResult Function(Object error) error,
  }) {
    return successful(memes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
  }) {
    return successful?.call(memes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(memes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMemesStart value) $default, {
    required TResult Function(GetMemesSuccessful value) successful,
    required TResult Function(GetMemesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMemesSuccessful implements GetMemes {
  const factory GetMemesSuccessful(List<Meme> memes) = _$GetMemesSuccessful;

  List<Meme> get memes;
  @JsonKey(ignore: true)
  $GetMemesSuccessfulCopyWith<GetMemesSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemesErrorCopyWith<$Res> {
  factory $GetMemesErrorCopyWith(GetMemesError value, $Res Function(GetMemesError) then) =
      _$GetMemesErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetMemesErrorCopyWithImpl<$Res> extends _$GetMemesCopyWithImpl<$Res> implements $GetMemesErrorCopyWith<$Res> {
  _$GetMemesErrorCopyWithImpl(GetMemesError _value, $Res Function(GetMemesError) _then)
      : super(_value, (v) => _then(v as GetMemesError));

  @override
  GetMemesError get _value => super._value as GetMemesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetMemesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$GetMemesError implements GetMemesError {
  const _$GetMemesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetMemes.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMemesError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $GetMemesErrorCopyWith<GetMemesError> get copyWith => _$GetMemesErrorCopyWithImpl<GetMemesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<Meme> memes) successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<Meme> memes)? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMemesStart value) $default, {
    required TResult Function(GetMemesSuccessful value) successful,
    required TResult Function(GetMemesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMemesStart value)? $default, {
    TResult Function(GetMemesSuccessful value)? successful,
    TResult Function(GetMemesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMemesError implements GetMemes {
  const factory GetMemesError(Object error) = _$GetMemesError;

  Object get error;
  @JsonKey(ignore: true)
  $GetMemesErrorCopyWith<GetMemesError> get copyWith => throw _privateConstructorUsedError;
}
