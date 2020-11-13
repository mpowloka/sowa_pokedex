// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PokemonListStateTearOff {
  const _$PokemonListStateTearOff();

// ignore: unused_element
  PokemonListLoadingState initial() {
    return const PokemonListLoadingState();
  }

// ignore: unused_element
  PokemonListDataAvailableState pokemonListAvailable(
      List<Pokemon> pokemonList, int pokemonCount) {
    return PokemonListDataAvailableState(
      pokemonList,
      pokemonCount,
    );
  }

// ignore: unused_element
  PokemonListEmptyState emptyList() {
    return const PokemonListEmptyState();
  }

// ignore: unused_element
  PokemonListNetworkUnavailableState networkUnavailable() {
    return const PokemonListNetworkUnavailableState();
  }
}

// ignore: unused_element
const $PokemonListState = _$PokemonListStateTearOff();

mixin _$PokemonListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result pokemonListAvailable(
            List<Pokemon> pokemonList, int pokemonCount),
    @required Result emptyList(),
    @required Result networkUnavailable(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList, int pokemonCount),
    Result emptyList(),
    Result networkUnavailable(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PokemonListLoadingState value),
    @required Result pokemonListAvailable(PokemonListDataAvailableState value),
    @required Result emptyList(PokemonListEmptyState value),
    @required
        Result networkUnavailable(PokemonListNetworkUnavailableState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PokemonListLoadingState value),
    Result pokemonListAvailable(PokemonListDataAvailableState value),
    Result emptyList(PokemonListEmptyState value),
    Result networkUnavailable(PokemonListNetworkUnavailableState value),
    @required Result orElse(),
  });
}

abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res>;
}

class _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  final PokemonListState _value;
  // ignore: unused_field
  final $Res Function(PokemonListState) _then;
}

abstract class $PokemonListLoadingStateCopyWith<$Res> {
  factory $PokemonListLoadingStateCopyWith(PokemonListLoadingState value,
          $Res Function(PokemonListLoadingState) then) =
      _$PokemonListLoadingStateCopyWithImpl<$Res>;
}

class _$PokemonListLoadingStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListLoadingStateCopyWith<$Res> {
  _$PokemonListLoadingStateCopyWithImpl(PokemonListLoadingState _value,
      $Res Function(PokemonListLoadingState) _then)
      : super(_value, (v) => _then(v as PokemonListLoadingState));

  @override
  PokemonListLoadingState get _value => super._value as PokemonListLoadingState;
}

class _$PokemonListLoadingState implements PokemonListLoadingState {
  const _$PokemonListLoadingState();

  @override
  String toString() {
    return 'PokemonListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PokemonListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result pokemonListAvailable(
            List<Pokemon> pokemonList, int pokemonCount),
    @required Result emptyList(),
    @required Result networkUnavailable(),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList, int pokemonCount),
    Result emptyList(),
    Result networkUnavailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PokemonListLoadingState value),
    @required Result pokemonListAvailable(PokemonListDataAvailableState value),
    @required Result emptyList(PokemonListEmptyState value),
    @required
        Result networkUnavailable(PokemonListNetworkUnavailableState value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PokemonListLoadingState value),
    Result pokemonListAvailable(PokemonListDataAvailableState value),
    Result emptyList(PokemonListEmptyState value),
    Result networkUnavailable(PokemonListNetworkUnavailableState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PokemonListLoadingState implements PokemonListState {
  const factory PokemonListLoadingState() = _$PokemonListLoadingState;
}

abstract class $PokemonListDataAvailableStateCopyWith<$Res> {
  factory $PokemonListDataAvailableStateCopyWith(
          PokemonListDataAvailableState value,
          $Res Function(PokemonListDataAvailableState) then) =
      _$PokemonListDataAvailableStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemonList, int pokemonCount});
}

class _$PokemonListDataAvailableStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListDataAvailableStateCopyWith<$Res> {
  _$PokemonListDataAvailableStateCopyWithImpl(
      PokemonListDataAvailableState _value,
      $Res Function(PokemonListDataAvailableState) _then)
      : super(_value, (v) => _then(v as PokemonListDataAvailableState));

  @override
  PokemonListDataAvailableState get _value =>
      super._value as PokemonListDataAvailableState;

  @override
  $Res call({
    Object pokemonList = freezed,
    Object pokemonCount = freezed,
  }) {
    return _then(PokemonListDataAvailableState(
      pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
      pokemonCount == freezed ? _value.pokemonCount : pokemonCount as int,
    ));
  }
}

class _$PokemonListDataAvailableState implements PokemonListDataAvailableState {
  const _$PokemonListDataAvailableState(this.pokemonList, this.pokemonCount)
      : assert(pokemonList != null),
        assert(pokemonCount != null);

  @override
  final List<Pokemon> pokemonList;
  @override
  final int pokemonCount;

  @override
  String toString() {
    return 'PokemonListState.pokemonListAvailable(pokemonList: $pokemonList, pokemonCount: $pokemonCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonListDataAvailableState &&
            (identical(other.pokemonList, pokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonList, pokemonList)) &&
            (identical(other.pokemonCount, pokemonCount) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonCount, pokemonCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonList) ^
      const DeepCollectionEquality().hash(pokemonCount);

  @override
  $PokemonListDataAvailableStateCopyWith<PokemonListDataAvailableState>
      get copyWith => _$PokemonListDataAvailableStateCopyWithImpl<
          PokemonListDataAvailableState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result pokemonListAvailable(
            List<Pokemon> pokemonList, int pokemonCount),
    @required Result emptyList(),
    @required Result networkUnavailable(),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return pokemonListAvailable(pokemonList, pokemonCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList, int pokemonCount),
    Result emptyList(),
    Result networkUnavailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListAvailable != null) {
      return pokemonListAvailable(pokemonList, pokemonCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PokemonListLoadingState value),
    @required Result pokemonListAvailable(PokemonListDataAvailableState value),
    @required Result emptyList(PokemonListEmptyState value),
    @required
        Result networkUnavailable(PokemonListNetworkUnavailableState value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return pokemonListAvailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PokemonListLoadingState value),
    Result pokemonListAvailable(PokemonListDataAvailableState value),
    Result emptyList(PokemonListEmptyState value),
    Result networkUnavailable(PokemonListNetworkUnavailableState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListAvailable != null) {
      return pokemonListAvailable(this);
    }
    return orElse();
  }
}

abstract class PokemonListDataAvailableState implements PokemonListState {
  const factory PokemonListDataAvailableState(
          List<Pokemon> pokemonList, int pokemonCount) =
      _$PokemonListDataAvailableState;

  List<Pokemon> get pokemonList;
  int get pokemonCount;
  $PokemonListDataAvailableStateCopyWith<PokemonListDataAvailableState>
      get copyWith;
}

abstract class $PokemonListEmptyStateCopyWith<$Res> {
  factory $PokemonListEmptyStateCopyWith(PokemonListEmptyState value,
          $Res Function(PokemonListEmptyState) then) =
      _$PokemonListEmptyStateCopyWithImpl<$Res>;
}

class _$PokemonListEmptyStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListEmptyStateCopyWith<$Res> {
  _$PokemonListEmptyStateCopyWithImpl(
      PokemonListEmptyState _value, $Res Function(PokemonListEmptyState) _then)
      : super(_value, (v) => _then(v as PokemonListEmptyState));

  @override
  PokemonListEmptyState get _value => super._value as PokemonListEmptyState;
}

class _$PokemonListEmptyState implements PokemonListEmptyState {
  const _$PokemonListEmptyState();

  @override
  String toString() {
    return 'PokemonListState.emptyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PokemonListEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result pokemonListAvailable(
            List<Pokemon> pokemonList, int pokemonCount),
    @required Result emptyList(),
    @required Result networkUnavailable(),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return emptyList();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList, int pokemonCount),
    Result emptyList(),
    Result networkUnavailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PokemonListLoadingState value),
    @required Result pokemonListAvailable(PokemonListDataAvailableState value),
    @required Result emptyList(PokemonListEmptyState value),
    @required
        Result networkUnavailable(PokemonListNetworkUnavailableState value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PokemonListLoadingState value),
    Result pokemonListAvailable(PokemonListDataAvailableState value),
    Result emptyList(PokemonListEmptyState value),
    Result networkUnavailable(PokemonListNetworkUnavailableState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class PokemonListEmptyState implements PokemonListState {
  const factory PokemonListEmptyState() = _$PokemonListEmptyState;
}

abstract class $PokemonListNetworkUnavailableStateCopyWith<$Res> {
  factory $PokemonListNetworkUnavailableStateCopyWith(
          PokemonListNetworkUnavailableState value,
          $Res Function(PokemonListNetworkUnavailableState) then) =
      _$PokemonListNetworkUnavailableStateCopyWithImpl<$Res>;
}

class _$PokemonListNetworkUnavailableStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListNetworkUnavailableStateCopyWith<$Res> {
  _$PokemonListNetworkUnavailableStateCopyWithImpl(
      PokemonListNetworkUnavailableState _value,
      $Res Function(PokemonListNetworkUnavailableState) _then)
      : super(_value, (v) => _then(v as PokemonListNetworkUnavailableState));

  @override
  PokemonListNetworkUnavailableState get _value =>
      super._value as PokemonListNetworkUnavailableState;
}

class _$PokemonListNetworkUnavailableState
    implements PokemonListNetworkUnavailableState {
  const _$PokemonListNetworkUnavailableState();

  @override
  String toString() {
    return 'PokemonListState.networkUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonListNetworkUnavailableState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result pokemonListAvailable(
            List<Pokemon> pokemonList, int pokemonCount),
    @required Result emptyList(),
    @required Result networkUnavailable(),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return networkUnavailable();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList, int pokemonCount),
    Result emptyList(),
    Result networkUnavailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkUnavailable != null) {
      return networkUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PokemonListLoadingState value),
    @required Result pokemonListAvailable(PokemonListDataAvailableState value),
    @required Result emptyList(PokemonListEmptyState value),
    @required
        Result networkUnavailable(PokemonListNetworkUnavailableState value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    assert(networkUnavailable != null);
    return networkUnavailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PokemonListLoadingState value),
    Result pokemonListAvailable(PokemonListDataAvailableState value),
    Result emptyList(PokemonListEmptyState value),
    Result networkUnavailable(PokemonListNetworkUnavailableState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkUnavailable != null) {
      return networkUnavailable(this);
    }
    return orElse();
  }
}

abstract class PokemonListNetworkUnavailableState implements PokemonListState {
  const factory PokemonListNetworkUnavailableState() =
      _$PokemonListNetworkUnavailableState;
}
