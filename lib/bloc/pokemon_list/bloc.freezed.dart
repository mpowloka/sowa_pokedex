// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PokemonListEventTearOff {
  const _$PokemonListEventTearOff();

// ignore: unused_element
  FetchMoreData fetchMoreData() {
    return const FetchMoreData();
  }

// ignore: unused_element
  TileClicked tileClicked(Pokemon pokemon) {
    return TileClicked(
      pokemon,
    );
  }

// ignore: unused_element
  ViewEntered viewEntered() {
    return const ViewEntered();
  }

// ignore: unused_element
  PokemonListUpdated pokemonListUpdated(List<Pokemon> pokemonList) {
    return PokemonListUpdated(
      pokemonList,
    );
  }
}

// ignore: unused_element
const $PokemonListEvent = _$PokemonListEventTearOff();

mixin _$PokemonListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMoreData(),
    @required Result tileClicked(Pokemon pokemon),
    @required Result viewEntered(),
    @required Result pokemonListUpdated(List<Pokemon> pokemonList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMoreData(),
    Result tileClicked(Pokemon pokemon),
    Result viewEntered(),
    Result pokemonListUpdated(List<Pokemon> pokemonList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMoreData(FetchMoreData value),
    @required Result tileClicked(TileClicked value),
    @required Result viewEntered(ViewEntered value),
    @required Result pokemonListUpdated(PokemonListUpdated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMoreData(FetchMoreData value),
    Result tileClicked(TileClicked value),
    Result viewEntered(ViewEntered value),
    Result pokemonListUpdated(PokemonListUpdated value),
    @required Result orElse(),
  });
}

abstract class $PokemonListEventCopyWith<$Res> {
  factory $PokemonListEventCopyWith(
          PokemonListEvent value, $Res Function(PokemonListEvent) then) =
      _$PokemonListEventCopyWithImpl<$Res>;
}

class _$PokemonListEventCopyWithImpl<$Res>
    implements $PokemonListEventCopyWith<$Res> {
  _$PokemonListEventCopyWithImpl(this._value, this._then);

  final PokemonListEvent _value;
  // ignore: unused_field
  final $Res Function(PokemonListEvent) _then;
}

abstract class $FetchMoreDataCopyWith<$Res> {
  factory $FetchMoreDataCopyWith(
          FetchMoreData value, $Res Function(FetchMoreData) then) =
      _$FetchMoreDataCopyWithImpl<$Res>;
}

class _$FetchMoreDataCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res>
    implements $FetchMoreDataCopyWith<$Res> {
  _$FetchMoreDataCopyWithImpl(
      FetchMoreData _value, $Res Function(FetchMoreData) _then)
      : super(_value, (v) => _then(v as FetchMoreData));

  @override
  FetchMoreData get _value => super._value as FetchMoreData;
}

class _$FetchMoreData implements FetchMoreData {
  const _$FetchMoreData();

  @override
  String toString() {
    return 'PokemonListEvent.fetchMoreData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchMoreData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMoreData(),
    @required Result tileClicked(Pokemon pokemon),
    @required Result viewEntered(),
    @required Result pokemonListUpdated(List<Pokemon> pokemonList),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return fetchMoreData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMoreData(),
    Result tileClicked(Pokemon pokemon),
    Result viewEntered(),
    Result pokemonListUpdated(List<Pokemon> pokemonList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreData != null) {
      return fetchMoreData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMoreData(FetchMoreData value),
    @required Result tileClicked(TileClicked value),
    @required Result viewEntered(ViewEntered value),
    @required Result pokemonListUpdated(PokemonListUpdated value),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return fetchMoreData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMoreData(FetchMoreData value),
    Result tileClicked(TileClicked value),
    Result viewEntered(ViewEntered value),
    Result pokemonListUpdated(PokemonListUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreData != null) {
      return fetchMoreData(this);
    }
    return orElse();
  }
}

abstract class FetchMoreData implements PokemonListEvent {
  const factory FetchMoreData() = _$FetchMoreData;
}

abstract class $TileClickedCopyWith<$Res> {
  factory $TileClickedCopyWith(
          TileClicked value, $Res Function(TileClicked) then) =
      _$TileClickedCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});
}

class _$TileClickedCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res>
    implements $TileClickedCopyWith<$Res> {
  _$TileClickedCopyWithImpl(
      TileClicked _value, $Res Function(TileClicked) _then)
      : super(_value, (v) => _then(v as TileClicked));

  @override
  TileClicked get _value => super._value as TileClicked;

  @override
  $Res call({
    Object pokemon = freezed,
  }) {
    return _then(TileClicked(
      pokemon == freezed ? _value.pokemon : pokemon as Pokemon,
    ));
  }
}

class _$TileClicked implements TileClicked {
  const _$TileClicked(this.pokemon) : assert(pokemon != null);

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'PokemonListEvent.tileClicked(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TileClicked &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality().equals(other.pokemon, pokemon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemon);

  @override
  $TileClickedCopyWith<TileClicked> get copyWith =>
      _$TileClickedCopyWithImpl<TileClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMoreData(),
    @required Result tileClicked(Pokemon pokemon),
    @required Result viewEntered(),
    @required Result pokemonListUpdated(List<Pokemon> pokemonList),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return tileClicked(pokemon);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMoreData(),
    Result tileClicked(Pokemon pokemon),
    Result viewEntered(),
    Result pokemonListUpdated(List<Pokemon> pokemonList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tileClicked != null) {
      return tileClicked(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMoreData(FetchMoreData value),
    @required Result tileClicked(TileClicked value),
    @required Result viewEntered(ViewEntered value),
    @required Result pokemonListUpdated(PokemonListUpdated value),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return tileClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMoreData(FetchMoreData value),
    Result tileClicked(TileClicked value),
    Result viewEntered(ViewEntered value),
    Result pokemonListUpdated(PokemonListUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tileClicked != null) {
      return tileClicked(this);
    }
    return orElse();
  }
}

abstract class TileClicked implements PokemonListEvent {
  const factory TileClicked(Pokemon pokemon) = _$TileClicked;

  Pokemon get pokemon;
  $TileClickedCopyWith<TileClicked> get copyWith;
}

abstract class $ViewEnteredCopyWith<$Res> {
  factory $ViewEnteredCopyWith(
          ViewEntered value, $Res Function(ViewEntered) then) =
      _$ViewEnteredCopyWithImpl<$Res>;
}

class _$ViewEnteredCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res>
    implements $ViewEnteredCopyWith<$Res> {
  _$ViewEnteredCopyWithImpl(
      ViewEntered _value, $Res Function(ViewEntered) _then)
      : super(_value, (v) => _then(v as ViewEntered));

  @override
  ViewEntered get _value => super._value as ViewEntered;
}

class _$ViewEntered implements ViewEntered {
  const _$ViewEntered();

  @override
  String toString() {
    return 'PokemonListEvent.viewEntered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ViewEntered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMoreData(),
    @required Result tileClicked(Pokemon pokemon),
    @required Result viewEntered(),
    @required Result pokemonListUpdated(List<Pokemon> pokemonList),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return viewEntered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMoreData(),
    Result tileClicked(Pokemon pokemon),
    Result viewEntered(),
    Result pokemonListUpdated(List<Pokemon> pokemonList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewEntered != null) {
      return viewEntered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMoreData(FetchMoreData value),
    @required Result tileClicked(TileClicked value),
    @required Result viewEntered(ViewEntered value),
    @required Result pokemonListUpdated(PokemonListUpdated value),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return viewEntered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMoreData(FetchMoreData value),
    Result tileClicked(TileClicked value),
    Result viewEntered(ViewEntered value),
    Result pokemonListUpdated(PokemonListUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewEntered != null) {
      return viewEntered(this);
    }
    return orElse();
  }
}

abstract class ViewEntered implements PokemonListEvent {
  const factory ViewEntered() = _$ViewEntered;
}

abstract class $PokemonListUpdatedCopyWith<$Res> {
  factory $PokemonListUpdatedCopyWith(
          PokemonListUpdated value, $Res Function(PokemonListUpdated) then) =
      _$PokemonListUpdatedCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemonList});
}

class _$PokemonListUpdatedCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res>
    implements $PokemonListUpdatedCopyWith<$Res> {
  _$PokemonListUpdatedCopyWithImpl(
      PokemonListUpdated _value, $Res Function(PokemonListUpdated) _then)
      : super(_value, (v) => _then(v as PokemonListUpdated));

  @override
  PokemonListUpdated get _value => super._value as PokemonListUpdated;

  @override
  $Res call({
    Object pokemonList = freezed,
  }) {
    return _then(PokemonListUpdated(
      pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
    ));
  }
}

class _$PokemonListUpdated implements PokemonListUpdated {
  const _$PokemonListUpdated(this.pokemonList) : assert(pokemonList != null);

  @override
  final List<Pokemon> pokemonList;

  @override
  String toString() {
    return 'PokemonListEvent.pokemonListUpdated(pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonListUpdated &&
            (identical(other.pokemonList, pokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonList, pokemonList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemonList);

  @override
  $PokemonListUpdatedCopyWith<PokemonListUpdated> get copyWith =>
      _$PokemonListUpdatedCopyWithImpl<PokemonListUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMoreData(),
    @required Result tileClicked(Pokemon pokemon),
    @required Result viewEntered(),
    @required Result pokemonListUpdated(List<Pokemon> pokemonList),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return pokemonListUpdated(pokemonList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMoreData(),
    Result tileClicked(Pokemon pokemon),
    Result viewEntered(),
    Result pokemonListUpdated(List<Pokemon> pokemonList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListUpdated != null) {
      return pokemonListUpdated(pokemonList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMoreData(FetchMoreData value),
    @required Result tileClicked(TileClicked value),
    @required Result viewEntered(ViewEntered value),
    @required Result pokemonListUpdated(PokemonListUpdated value),
  }) {
    assert(fetchMoreData != null);
    assert(tileClicked != null);
    assert(viewEntered != null);
    assert(pokemonListUpdated != null);
    return pokemonListUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMoreData(FetchMoreData value),
    Result tileClicked(TileClicked value),
    Result viewEntered(ViewEntered value),
    Result pokemonListUpdated(PokemonListUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListUpdated != null) {
      return pokemonListUpdated(this);
    }
    return orElse();
  }
}

abstract class PokemonListUpdated implements PokemonListEvent {
  const factory PokemonListUpdated(List<Pokemon> pokemonList) =
      _$PokemonListUpdated;

  List<Pokemon> get pokemonList;
  $PokemonListUpdatedCopyWith<PokemonListUpdated> get copyWith;
}

class _$PokemonListStateTearOff {
  const _$PokemonListStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  PokemonListAvailable pokemonListAvailable(List<Pokemon> pokemonList) {
    return PokemonListAvailable(
      pokemonList,
    );
  }

// ignore: unused_element
  EmptyList emptyList(String reason) {
    return EmptyList(
      reason,
    );
  }
}

// ignore: unused_element
const $PokemonListState = _$PokemonListStateTearOff();

mixin _$PokemonListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result emptyList(String reason),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result emptyList(String reason),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result emptyList(EmptyList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result emptyList(EmptyList value),
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

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$PokemonListStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PokemonListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result emptyList(String reason),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result emptyList(String reason),
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
    @required Result initial(Initial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result emptyList(EmptyList value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result emptyList(EmptyList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PokemonListState {
  const factory Initial() = _$Initial;
}

abstract class $PokemonListAvailableCopyWith<$Res> {
  factory $PokemonListAvailableCopyWith(PokemonListAvailable value,
          $Res Function(PokemonListAvailable) then) =
      _$PokemonListAvailableCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemonList});
}

class _$PokemonListAvailableCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListAvailableCopyWith<$Res> {
  _$PokemonListAvailableCopyWithImpl(
      PokemonListAvailable _value, $Res Function(PokemonListAvailable) _then)
      : super(_value, (v) => _then(v as PokemonListAvailable));

  @override
  PokemonListAvailable get _value => super._value as PokemonListAvailable;

  @override
  $Res call({
    Object pokemonList = freezed,
  }) {
    return _then(PokemonListAvailable(
      pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
    ));
  }
}

class _$PokemonListAvailable implements PokemonListAvailable {
  const _$PokemonListAvailable(this.pokemonList) : assert(pokemonList != null);

  @override
  final List<Pokemon> pokemonList;

  @override
  String toString() {
    return 'PokemonListState.pokemonListAvailable(pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonListAvailable &&
            (identical(other.pokemonList, pokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonList, pokemonList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemonList);

  @override
  $PokemonListAvailableCopyWith<PokemonListAvailable> get copyWith =>
      _$PokemonListAvailableCopyWithImpl<PokemonListAvailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result emptyList(String reason),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    return pokemonListAvailable(pokemonList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result emptyList(String reason),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListAvailable != null) {
      return pokemonListAvailable(pokemonList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result emptyList(EmptyList value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    return pokemonListAvailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result emptyList(EmptyList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListAvailable != null) {
      return pokemonListAvailable(this);
    }
    return orElse();
  }
}

abstract class PokemonListAvailable implements PokemonListState {
  const factory PokemonListAvailable(List<Pokemon> pokemonList) =
      _$PokemonListAvailable;

  List<Pokemon> get pokemonList;
  $PokemonListAvailableCopyWith<PokemonListAvailable> get copyWith;
}

abstract class $EmptyListCopyWith<$Res> {
  factory $EmptyListCopyWith(EmptyList value, $Res Function(EmptyList) then) =
      _$EmptyListCopyWithImpl<$Res>;
  $Res call({String reason});
}

class _$EmptyListCopyWithImpl<$Res> extends _$PokemonListStateCopyWithImpl<$Res>
    implements $EmptyListCopyWith<$Res> {
  _$EmptyListCopyWithImpl(EmptyList _value, $Res Function(EmptyList) _then)
      : super(_value, (v) => _then(v as EmptyList));

  @override
  EmptyList get _value => super._value as EmptyList;

  @override
  $Res call({
    Object reason = freezed,
  }) {
    return _then(EmptyList(
      reason == freezed ? _value.reason : reason as String,
    ));
  }
}

class _$EmptyList implements EmptyList {
  const _$EmptyList(this.reason) : assert(reason != null);

  @override
  final String reason;

  @override
  String toString() {
    return 'PokemonListState.emptyList(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyList &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @override
  $EmptyListCopyWith<EmptyList> get copyWith =>
      _$EmptyListCopyWithImpl<EmptyList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result emptyList(String reason),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    return emptyList(reason);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result emptyList(String reason),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyList != null) {
      return emptyList(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result emptyList(EmptyList value),
  }) {
    assert(initial != null);
    assert(pokemonListAvailable != null);
    assert(emptyList != null);
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result emptyList(EmptyList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class EmptyList implements PokemonListState {
  const factory EmptyList(String reason) = _$EmptyList;

  String get reason;
  $EmptyListCopyWith<EmptyList> get copyWith;
}
