// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationResponseModel data)
        specializationLoaded,
    required TResult Function(ErrorHandler error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel data)? specializationLoaded,
    TResult? Function(ErrorHandler error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel data)? specializationLoaded,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecilazationLoading value) specializationLoading,
    required TResult Function(SpecializationLoaded value) specializationLoaded,
    required TResult Function(SpecializationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecilazationLoading value)? specializationLoading,
    TResult? Function(SpecializationLoaded value)? specializationLoaded,
    TResult? Function(SpecializationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecilazationLoading value)? specializationLoading,
    TResult Function(SpecializationLoaded value)? specializationLoaded,
    TResult Function(SpecializationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationResponseModel data)
        specializationLoaded,
    required TResult Function(ErrorHandler error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel data)? specializationLoaded,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel data)? specializationLoaded,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecilazationLoading value) specializationLoading,
    required TResult Function(SpecializationLoaded value) specializationLoaded,
    required TResult Function(SpecializationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecilazationLoading value)? specializationLoading,
    TResult? Function(SpecializationLoaded value)? specializationLoaded,
    TResult? Function(SpecializationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecilazationLoading value)? specializationLoading,
    TResult Function(SpecializationLoaded value)? specializationLoaded,
    TResult Function(SpecializationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpecilazationLoadingImplCopyWith<$Res> {
  factory _$$SpecilazationLoadingImplCopyWith(_$SpecilazationLoadingImpl value,
          $Res Function(_$SpecilazationLoadingImpl) then) =
      __$$SpecilazationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecilazationLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecilazationLoadingImpl>
    implements _$$SpecilazationLoadingImplCopyWith<$Res> {
  __$$SpecilazationLoadingImplCopyWithImpl(_$SpecilazationLoadingImpl _value,
      $Res Function(_$SpecilazationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecilazationLoadingImpl implements SpecilazationLoading {
  const _$SpecilazationLoadingImpl();

  @override
  String toString() {
    return 'HomeState.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecilazationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationResponseModel data)
        specializationLoaded,
    required TResult Function(ErrorHandler error) error,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel data)? specializationLoaded,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel data)? specializationLoaded,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecilazationLoading value) specializationLoading,
    required TResult Function(SpecializationLoaded value) specializationLoaded,
    required TResult Function(SpecializationError value) error,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecilazationLoading value)? specializationLoading,
    TResult? Function(SpecializationLoaded value)? specializationLoaded,
    TResult? Function(SpecializationError value)? error,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecilazationLoading value)? specializationLoading,
    TResult Function(SpecializationLoaded value)? specializationLoaded,
    TResult Function(SpecializationError value)? error,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class SpecilazationLoading implements HomeState {
  const factory SpecilazationLoading() = _$SpecilazationLoadingImpl;
}

/// @nodoc
abstract class _$$SpecializationLoadedImplCopyWith<$Res> {
  factory _$$SpecializationLoadedImplCopyWith(_$SpecializationLoadedImpl value,
          $Res Function(_$SpecializationLoadedImpl) then) =
      __$$SpecializationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecializationResponseModel data});
}

/// @nodoc
class __$$SpecializationLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationLoadedImpl>
    implements _$$SpecializationLoadedImplCopyWith<$Res> {
  __$$SpecializationLoadedImplCopyWithImpl(_$SpecializationLoadedImpl _value,
      $Res Function(_$SpecializationLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SpecializationLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpecializationResponseModel,
    ));
  }
}

/// @nodoc

class _$SpecializationLoadedImpl implements SpecializationLoaded {
  const _$SpecializationLoadedImpl(this.data);

  @override
  final SpecializationResponseModel data;

  @override
  String toString() {
    return 'HomeState.specializationLoaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationLoadedImplCopyWith<_$SpecializationLoadedImpl>
      get copyWith =>
          __$$SpecializationLoadedImplCopyWithImpl<_$SpecializationLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationResponseModel data)
        specializationLoaded,
    required TResult Function(ErrorHandler error) error,
  }) {
    return specializationLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel data)? specializationLoaded,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return specializationLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel data)? specializationLoaded,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (specializationLoaded != null) {
      return specializationLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecilazationLoading value) specializationLoading,
    required TResult Function(SpecializationLoaded value) specializationLoaded,
    required TResult Function(SpecializationError value) error,
  }) {
    return specializationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecilazationLoading value)? specializationLoading,
    TResult? Function(SpecializationLoaded value)? specializationLoaded,
    TResult? Function(SpecializationError value)? error,
  }) {
    return specializationLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecilazationLoading value)? specializationLoading,
    TResult Function(SpecializationLoaded value)? specializationLoaded,
    TResult Function(SpecializationError value)? error,
    required TResult orElse(),
  }) {
    if (specializationLoaded != null) {
      return specializationLoaded(this);
    }
    return orElse();
  }
}

abstract class SpecializationLoaded implements HomeState {
  const factory SpecializationLoaded(final SpecializationResponseModel data) =
      _$SpecializationLoadedImpl;

  SpecializationResponseModel get data;
  @JsonKey(ignore: true)
  _$$SpecializationLoadedImplCopyWith<_$SpecializationLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationErrorImplCopyWith<$Res> {
  factory _$$SpecializationErrorImplCopyWith(_$SpecializationErrorImpl value,
          $Res Function(_$SpecializationErrorImpl) then) =
      __$$SpecializationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class __$$SpecializationErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationErrorImpl>
    implements _$$SpecializationErrorImplCopyWith<$Res> {
  __$$SpecializationErrorImplCopyWithImpl(_$SpecializationErrorImpl _value,
      $Res Function(_$SpecializationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SpecializationErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SpecializationErrorImpl implements SpecializationError {
  const _$SpecializationErrorImpl(this.error);

  @override
  final ErrorHandler error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationErrorImplCopyWith<_$SpecializationErrorImpl> get copyWith =>
      __$$SpecializationErrorImplCopyWithImpl<_$SpecializationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationResponseModel data)
        specializationLoaded,
    required TResult Function(ErrorHandler error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel data)? specializationLoaded,
    TResult? Function(ErrorHandler error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel data)? specializationLoaded,
    TResult Function(ErrorHandler error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecilazationLoading value) specializationLoading,
    required TResult Function(SpecializationLoaded value) specializationLoaded,
    required TResult Function(SpecializationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecilazationLoading value)? specializationLoading,
    TResult? Function(SpecializationLoaded value)? specializationLoaded,
    TResult? Function(SpecializationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecilazationLoading value)? specializationLoading,
    TResult Function(SpecializationLoaded value)? specializationLoaded,
    TResult Function(SpecializationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SpecializationError implements HomeState {
  const factory SpecializationError(final ErrorHandler error) =
      _$SpecializationErrorImpl;

  ErrorHandler get error;
  @JsonKey(ignore: true)
  _$$SpecializationErrorImplCopyWith<_$SpecializationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
