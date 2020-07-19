// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sowa_pokedex/di.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sowa_pokedex/network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/moor/database.dart';
import 'package:sowa_pokedex/network/pokemon/service.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_stat_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/type_color_resolver.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_type_mapper.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_details.dart';
import 'package:sowa_pokedex/moor/pokemon/dao.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/repository.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final applicationModule = _$ApplicationModule();
  g.registerLazySingleton<ChopperClient>(() => applicationModule.chopperClient);
  g.registerLazySingleton<GlobalKey<NavigatorState>>(
      () => applicationModule.key);
  g.registerLazySingleton<NetworkCallsRetryHandler>(
      () => NetworkCallsRetryHandler());
  g.registerLazySingleton<PokemonDatabase>(() => PokemonDatabase());
  g.registerLazySingleton<PokemonService>(
      () => PokemonService.create(g<ChopperClient>()));
  g.registerLazySingleton<PokemonStatMapper>(() => PokemonStatMapper());
  g.registerLazySingleton<PokemonTypeColorResolver>(
      () => PokemonTypeColorResolver());
  g.registerLazySingleton<PokemonTypeMapper>(
      () => PokemonTypeMapper(g<PokemonTypeColorResolver>()));
  g.registerLazySingleton<FetchPokemonBatch>(() =>
      FetchPokemonBatch(g<PokemonService>(), g<NetworkCallsRetryHandler>()));
  g.registerLazySingleton<FetchPokemonDetails>(() =>
      FetchPokemonDetails(g<PokemonService>(), g<NetworkCallsRetryHandler>()));
  g.registerLazySingleton<PokemonDao>(() => PokemonDao(g<PokemonDatabase>()));
  g.registerLazySingleton<PokemonMapper>(() => PokemonMapper(
        g<PokemonStatMapper>(),
        g<PokemonTypeMapper>(),
        g<PokemonTypeColorResolver>(),
      ));
  g.registerLazySingleton<PokemonRepository>(() => PokemonRepository(
        g<FetchPokemonBatch>(),
        g<PokemonDao>(),
        g<FetchPokemonDetails>(),
        g<PokemonMapper>(),
        g<PokemonStatMapper>(),
        g<PokemonTypeMapper>(),
      ));
  g.registerLazySingleton<PokemonListBloc>(() =>
      PokemonListBloc(g<PokemonRepository>(), g<GlobalKey<NavigatorState>>()));
}

class _$ApplicationModule extends ApplicationModule {}
