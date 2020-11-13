// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PokemonDetailsStateTearOff {
  const _$PokemonDetailsStateTearOff();

// ignore: unused_element
  PokemonDetailsDataAvailableState dataAvailable(Pokemon pokemon) {
    return PokemonDetailsDataAvailableState(
      pokemon,
    );
  }

// ignore: unused_element
  PokemonDetailsLoadingState loading() {
    return const PokemonDetailsLoadingState();
  }
}

// ignore: unused_element
const $PokemonDetailsState = _$PokemonDetailsStateTearOff();

mixin _$PokemonDetailsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataAvailable(Pokemon pokemon),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataAvailable(Pokemon pokemon),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataAvailable(PokemonDetailsDataAvailableState value),
    @required Result loading(PokemonDetailsLoadingState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataAvailable(PokemonDetailsDataAvailableState value),
    Result loading(PokemonDetailsLoadingState value),
    @required Result orElse(),
  });
}

abstract class $PokemonDetailsStateCopyWith<$Res> {
  factory $PokemonDetailsStateCopyWith(
          PokemonDetailsState value, $Res Function(PokemonDetailsState) then) =
      _$PokemonDetailsStateCopyWithImpl<$Res>;
}

class _$PokemonDetailsStateCopyWithImpl<$Res>
    implements $PokemonDetailsStateCopyWith<$Res> {
  _$PokemonDetailsStateCopyWithImpl(this._value, this._then);

  final PokemonDetailsState _value;
  // ignore: unused_field
  final $Res Function(PokemonDetailsState) _then;
}

abstract class $PokemonDetailsDataAvailableStateCopyWith<$Res> {
  factory $PokemonDetailsDataAvailableStateCopyWith(
          PokemonDetailsDataAvailableState value,
          $Res Function(PokemonDetailsDataAvailableState) then) =
      _$PokemonDetailsDataAvailableStateCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});
}

class _$PokemonDetailsDataAvailableStateCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res>
    implements $PokemonDetailsDataAvailableStateCopyWith<$Res> {
  _$PokemonDetailsDataAvailableStateCopyWithImpl(
      PokemonDetailsDataAvailableState _value,
      $Res Function(PokemonDetailsDataAvailableState) _then)
      : super(_value, (v) => _then(v as PokemonDetailsDataAvailableState));

  @override
  PokemonDetailsDataAvailableState get _value =>
      super._value as PokemonDetailsDataAvailableState;

  @override
  $Res call({
    Object pokemon = freezed,
  }) {
    return _then(PokemonDetailsDataAvailableState(
      pokemon == freezed ? _value.pokemon : pokemon as Pokemon,
    ));
  }
}

class _$PokemonDetailsDataAvailableState
    implements PokemonDetailsDataAvailableState {
  const _$PokemonDetailsDataAvailableState(this.pokemon)
      : assert(pokemon != null);

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'PokemonDetailsState.dataAvailable(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonDetailsDataAvailableState &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality().equals(other.pokemon, pokemon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemon);

  @override
  $PokemonDetailsDataAvailableStateCopyWith<PokemonDetailsDataAvailableState>
      get copyWith => _$PokemonDetailsDataAvailableStateCopyWithImpl<
          PokemonDetailsDataAvailableState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataAvailable(Pokemon pokemon),
    @required Result loading(),
  }) {
    assert(dataAvailable != null);
    assert(loading != null);
    return dataAvailable(pokemon);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataAvailable(Pokemon pokemon),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dataAvailable != null) {
      return dataAvailable(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataAvailable(PokemonDetailsDataAvailableState value),
    @required Result loading(PokemonDetailsLoadingState value),
  }) {
    assert(dataAvailable != null);
    assert(loading != null);
    return dataAvailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataAvailable(PokemonDetailsDataAvailableState value),
    Result loading(PokemonDetailsLoadingState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dataAvailable != null) {
      return dataAvailable(this);
    }
    return orElse();
  }
}

abstract class PokemonDetailsDataAvailableState implements PokemonDetailsState {
  const factory PokemonDetailsDataAvailableState(Pokemon pokemon) =
      _$PokemonDetailsDataAvailableState;

  Pokemon get pokemon;
  $PokemonDetailsDataAvailableStateCopyWith<PokemonDetailsDataAvailableState>
      get copyWith;
}

abstract class $PokemonDetailsLoadingStateCopyWith<$Res> {
  factory $PokemonDetailsLoadingStateCopyWith(PokemonDetailsLoadingState value,
          $Res Function(PokemonDetailsLoadingState) then) =
      _$PokemonDetailsLoadingStateCopyWithImpl<$Res>;
}

class _$PokemonDetailsLoadingStateCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res>
    implements $PokemonDetailsLoadingStateCopyWith<$Res> {
  _$PokemonDetailsLoadingStateCopyWithImpl(PokemonDetailsLoadingState _value,
      $Res Function(PokemonDetailsLoadingState) _then)
      : super(_value, (v) => _then(v as PokemonDetailsLoadingState));

  @override
  PokemonDetailsLoadingState get _value =>
      super._value as PokemonDetailsLoadingState;
}

class _$PokemonDetailsLoadingState implements PokemonDetailsLoadingState {
  const _$PokemonDetailsLoadingState();

  @override
  String toString() {
    return 'PokemonDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PokemonDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataAvailable(Pokemon pokemon),
    @required Result loading(),
  }) {
    assert(dataAvailable != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataAvailable(Pokemon pokemon),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataAvailable(PokemonDetailsDataAvailableState value),
    @required Result loading(PokemonDetailsLoadingState value),
  }) {
    assert(dataAvailable != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataAvailable(PokemonDetailsDataAvailableState value),
    Result loading(PokemonDetailsLoadingState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PokemonDetailsLoadingState implements PokemonDetailsState {
  const factory PokemonDetailsLoadingState() = _$PokemonDetailsLoadingState;
}
