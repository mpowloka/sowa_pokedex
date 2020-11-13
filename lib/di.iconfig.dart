// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sowa_pokedex/di.dart';
import 'package:chopper/chopper.dart';
import 'package:sowa_pokedex/domain/connectivity/connectivity_checker.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import 'package:sowa_pokedex/data_network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/data_moor/database.dart';
import 'package:sowa_pokedex/data_network/pokemon/service.dart';
import 'package:sowa_pokedex/domain/pokemon/mapper/pokemon_stat_mapper.dart';
import 'package:sowa_pokedex/domain/pokemon/type_color_resolver.dart';
import 'package:sowa_pokedex/domain/pokemon/mapper/pokemon_type_mapper.dart';
import 'package:sowa_pokedex/data_network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/data_network/pokemon/fetch_pokemon_details.dart';
import 'package:sowa_pokedex/data_moor/pokemon/dao.dart';
import 'package:sowa_pokedex/domain/pokemon/mapper/pokemon_mapper.dart';
import 'package:sowa_pokedex/domain/pokemon/repository.dart';
import 'package:sowa_pokedex/ui/pokemon_details/view_model/view_model.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view_model/view_model.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final applicationModule = _$ApplicationModule();
  g.registerLazySingleton<ChopperClient>(() => applicationModule.chopperClient);
  g.registerFactory<ConnectionChecker>(() => ConnectionChecker());
  g.registerLazySingleton<GlobalKey<NavigatorState>>(
      () => applicationModule.key);
  g.registerLazySingleton<Logger>(() => applicationModule.logger);
  g.registerFactory<NetworkCallsRetryHandler>(() => NetworkCallsRetryHandler());
  g.registerLazySingleton<PokemonDatabase>(() => PokemonDatabase());
  g.registerLazySingleton<PokemonService>(
      () => PokemonService.create(g<ChopperClient>()));
  g.registerFactory<PokemonStatMapper>(() => PokemonStatMapper());
  g.registerFactory<PokemonTypeColorResolver>(() => PokemonTypeColorResolver());
  g.registerFactory<PokemonTypeMapper>(
      () => PokemonTypeMapper(g<PokemonTypeColorResolver>()));
  g.registerFactory<FetchPokemonBatch>(() =>
      FetchPokemonBatch(g<PokemonService>(), g<NetworkCallsRetryHandler>()));
  g.registerFactory<FetchPokemonDetails>(() =>
      FetchPokemonDetails(g<PokemonService>(), g<NetworkCallsRetryHandler>()));
  g.registerFactory<PokemonDao>(() => PokemonDao(g<PokemonDatabase>()));
  g.registerFactory<PokemonMapper>(() => PokemonMapper(
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
        g<Logger>(),
      ));
  g.registerFactory<PokemonDetailsViewModel>(
      () => PokemonDetailsViewModel(g<PokemonRepository>()));
  g.registerFactory<PokemonListViewModel>(() => PokemonListViewModel(
        g<PokemonRepository>(),
        g<GlobalKey<NavigatorState>>(),
        g<ConnectionChecker>(),
      ));
}

class _$ApplicationModule extends ApplicationModule {}
