// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meme _$MemeFromJson(Map<String, dynamic> json) {
  return Meme$.fromJson(json);
}

/// @nodoc
class _$MemeTearOff {
  const _$MemeTearOff();

  Meme$ call({required String name, required String image}) {
    return Meme$(
      name: name,
      image: image,
    );
  }

  Meme fromJson(Map<String, Object?> json) {
    return Meme.fromJson(json);
  }
}

/// @nodoc
const $Meme = _$MemeTearOff();

/// @nodoc
mixin _$Meme {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) = _$MemeCopyWithImpl<$Res>;
  $Res call({String name, String image});
}

/// @nodoc
class _$MemeCopyWithImpl<$Res> implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  final Meme _value;
  // ignore: unused_field
  final $Res Function(Meme) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $Meme$CopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory $Meme$CopyWith(Meme$ value, $Res Function(Meme$) then) = _$Meme$CopyWithImpl<$Res>;
  @override
  $Res call({String name, String image});
}

/// @nodoc
class _$Meme$CopyWithImpl<$Res> extends _$MemeCopyWithImpl<$Res> implements $Meme$CopyWith<$Res> {
  _$Meme$CopyWithImpl(Meme$ _value, $Res Function(Meme$) _then) : super(_value, (v) => _then(v as Meme$));

  @override
  Meme$ get _value => super._value as Meme$;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(Meme$(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Meme$ implements Meme$ {
  const _$Meme$({required this.name, required this.image});

  factory _$Meme$.fromJson(Map<String, dynamic> json) => _$$Meme$FromJson(json);

  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'Meme(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meme$ &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name), const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  $Meme$CopyWith<Meme$> get copyWith => _$Meme$CopyWithImpl<Meme$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Meme$ToJson(this);
  }
}

abstract class Meme$ implements Meme {
  const factory Meme$({required String name, required String image}) = _$Meme$;

  factory Meme$.fromJson(Map<String, dynamic> json) = _$Meme$.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  $Meme$CopyWith<Meme$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call({List<Meme> memes = const <Meme>[], int page = 1, bool isLoading = false}) {
    return AppState$(
      memes: memes,
      page: page,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<Meme> get memes => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res>;
  $Res call({List<Meme> memes, int page, bool isLoading});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? memes = freezed,
    Object? page = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      memes: memes == freezed
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) = _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call({List<Meme> memes, int page, bool isLoading});
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res> implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? memes = freezed,
    Object? page = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(AppState$(
      memes: memes == freezed
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$({this.memes = const <Meme>[], this.page = 1, this.isLoading = false});

  @JsonKey(defaultValue: const <Meme>[])
  @override
  final List<Meme> memes;
  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AppState(memes: $memes, page: $page, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.memes, memes) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(memes),
      const DeepCollectionEquality().hash(page), const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith => _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$({List<Meme> memes, int page, bool isLoading}) = _$AppState$;

  @override
  List<Meme> get memes;
  @override
  int get page;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith => throw _privateConstructorUsedError;
}
