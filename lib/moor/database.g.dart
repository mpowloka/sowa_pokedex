// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MoorPokemonData extends DataClass implements Insertable<MoorPokemonData> {
  final int id;
  final String name;
  final int exp;
  final int weight;
  final int height;
  final String sprite;
  MoorPokemonData(
      {@required this.id,
      @required this.name,
      @required this.exp,
      @required this.weight,
      @required this.height,
      @required this.sprite});
  factory MoorPokemonData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoorPokemonData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      exp: intType.mapFromDatabaseResponse(data['${effectivePrefix}exp']),
      weight: intType.mapFromDatabaseResponse(data['${effectivePrefix}weight']),
      height: intType.mapFromDatabaseResponse(data['${effectivePrefix}height']),
      sprite:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sprite']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || exp != null) {
      map['exp'] = Variable<int>(exp);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int>(weight);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || sprite != null) {
      map['sprite'] = Variable<String>(sprite);
    }
    return map;
  }

  MoorPokemonCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      exp: exp == null && nullToAbsent ? const Value.absent() : Value(exp),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      sprite:
          sprite == null && nullToAbsent ? const Value.absent() : Value(sprite),
    );
  }

  factory MoorPokemonData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      exp: serializer.fromJson<int>(json['exp']),
      weight: serializer.fromJson<int>(json['weight']),
      height: serializer.fromJson<int>(json['height']),
      sprite: serializer.fromJson<String>(json['sprite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'exp': serializer.toJson<int>(exp),
      'weight': serializer.toJson<int>(weight),
      'height': serializer.toJson<int>(height),
      'sprite': serializer.toJson<String>(sprite),
    };
  }

  MoorPokemonData copyWith(
          {int id,
          String name,
          int exp,
          int weight,
          int height,
          String sprite}) =>
      MoorPokemonData(
        id: id ?? this.id,
        name: name ?? this.name,
        exp: exp ?? this.exp,
        weight: weight ?? this.weight,
        height: height ?? this.height,
        sprite: sprite ?? this.sprite,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('exp: $exp, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('sprite: $sprite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              exp.hashCode,
              $mrjc(
                  weight.hashCode, $mrjc(height.hashCode, sprite.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonData &&
          other.id == this.id &&
          other.name == this.name &&
          other.exp == this.exp &&
          other.weight == this.weight &&
          other.height == this.height &&
          other.sprite == this.sprite);
}

class MoorPokemonCompanion extends UpdateCompanion<MoorPokemonData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> exp;
  final Value<int> weight;
  final Value<int> height;
  final Value<String> sprite;
  const MoorPokemonCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.exp = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.sprite = const Value.absent(),
  });
  MoorPokemonCompanion.insert({
    @required int id,
    @required String name,
    @required int exp,
    @required int weight,
    @required int height,
    @required String sprite,
  })  : id = Value(id),
        name = Value(name),
        exp = Value(exp),
        weight = Value(weight),
        height = Value(height),
        sprite = Value(sprite);
  static Insertable<MoorPokemonData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<int> exp,
    Expression<int> weight,
    Expression<int> height,
    Expression<String> sprite,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (exp != null) 'exp': exp,
      if (weight != null) 'weight': weight,
      if (height != null) 'height': height,
      if (sprite != null) 'sprite': sprite,
    });
  }

  MoorPokemonCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<int> exp,
      Value<int> weight,
      Value<int> height,
      Value<String> sprite}) {
    return MoorPokemonCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      exp: exp ?? this.exp,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      sprite: sprite ?? this.sprite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (exp.present) {
      map['exp'] = Variable<int>(exp.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (sprite.present) {
      map['sprite'] = Variable<String>(sprite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('exp: $exp, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('sprite: $sprite')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonTable extends MoorPokemon
    with TableInfo<$MoorPokemonTable, MoorPokemonData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _expMeta = const VerificationMeta('exp');
  GeneratedIntColumn _exp;
  @override
  GeneratedIntColumn get exp => _exp ??= _constructExp();
  GeneratedIntColumn _constructExp() {
    return GeneratedIntColumn(
      'exp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  GeneratedIntColumn _weight;
  @override
  GeneratedIntColumn get weight => _weight ??= _constructWeight();
  GeneratedIntColumn _constructWeight() {
    return GeneratedIntColumn(
      'weight',
      $tableName,
      false,
    );
  }

  final VerificationMeta _heightMeta = const VerificationMeta('height');
  GeneratedIntColumn _height;
  @override
  GeneratedIntColumn get height => _height ??= _constructHeight();
  GeneratedIntColumn _constructHeight() {
    return GeneratedIntColumn(
      'height',
      $tableName,
      false,
    );
  }

  final VerificationMeta _spriteMeta = const VerificationMeta('sprite');
  GeneratedTextColumn _sprite;
  @override
  GeneratedTextColumn get sprite => _sprite ??= _constructSprite();
  GeneratedTextColumn _constructSprite() {
    return GeneratedTextColumn(
      'sprite',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, exp, weight, height, sprite];
  @override
  $MoorPokemonTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon';
  @override
  final String actualTableName = 'moor_pokemon';
  @override
  VerificationContext validateIntegrity(Insertable<MoorPokemonData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('exp')) {
      context.handle(
          _expMeta, exp.isAcceptableOrUnknown(data['exp'], _expMeta));
    } else if (isInserting) {
      context.missing(_expMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight'], _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height'], _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('sprite')) {
      context.handle(_spriteMeta,
          sprite.isAcceptableOrUnknown(data['sprite'], _spriteMeta));
    } else if (isInserting) {
      context.missing(_spriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MoorPokemonData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorPokemonTable createAlias(String alias) {
    return $MoorPokemonTable(_db, alias);
  }
}

class MoorPokemonStatData extends DataClass
    implements Insertable<MoorPokemonStatData> {
  final int id;
  final String statName;
  final int value;
  MoorPokemonStatData(
      {@required this.id, @required this.statName, @required this.value});
  factory MoorPokemonStatData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoorPokemonStatData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      statName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stat_name']),
      value: intType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || statName != null) {
      map['stat_name'] = Variable<String>(statName);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    return map;
  }

  MoorPokemonStatCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonStatCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      statName: statName == null && nullToAbsent
          ? const Value.absent()
          : Value(statName),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory MoorPokemonStatData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonStatData(
      id: serializer.fromJson<int>(json['id']),
      statName: serializer.fromJson<String>(json['statName']),
      value: serializer.fromJson<int>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'statName': serializer.toJson<String>(statName),
      'value': serializer.toJson<int>(value),
    };
  }

  MoorPokemonStatData copyWith({int id, String statName, int value}) =>
      MoorPokemonStatData(
        id: id ?? this.id,
        statName: statName ?? this.statName,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonStatData(')
          ..write('id: $id, ')
          ..write('statName: $statName, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(statName.hashCode, value.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonStatData &&
          other.id == this.id &&
          other.statName == this.statName &&
          other.value == this.value);
}

class MoorPokemonStatCompanion extends UpdateCompanion<MoorPokemonStatData> {
  final Value<int> id;
  final Value<String> statName;
  final Value<int> value;
  const MoorPokemonStatCompanion({
    this.id = const Value.absent(),
    this.statName = const Value.absent(),
    this.value = const Value.absent(),
  });
  MoorPokemonStatCompanion.insert({
    this.id = const Value.absent(),
    @required String statName,
    @required int value,
  })  : statName = Value(statName),
        value = Value(value);
  static Insertable<MoorPokemonStatData> custom({
    Expression<int> id,
    Expression<String> statName,
    Expression<int> value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (statName != null) 'stat_name': statName,
      if (value != null) 'value': value,
    });
  }

  MoorPokemonStatCompanion copyWith(
      {Value<int> id, Value<String> statName, Value<int> value}) {
    return MoorPokemonStatCompanion(
      id: id ?? this.id,
      statName: statName ?? this.statName,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (statName.present) {
      map['stat_name'] = Variable<String>(statName.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonStatCompanion(')
          ..write('id: $id, ')
          ..write('statName: $statName, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonStatTable extends MoorPokemonStat
    with TableInfo<$MoorPokemonStatTable, MoorPokemonStatData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonStatTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _statNameMeta = const VerificationMeta('statName');
  GeneratedTextColumn _statName;
  @override
  GeneratedTextColumn get statName => _statName ??= _constructStatName();
  GeneratedTextColumn _constructStatName() {
    return GeneratedTextColumn(
      'stat_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, statName, value];
  @override
  $MoorPokemonStatTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_stat';
  @override
  final String actualTableName = 'moor_pokemon_stat';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonStatData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('stat_name')) {
      context.handle(_statNameMeta,
          statName.isAcceptableOrUnknown(data['stat_name'], _statNameMeta));
    } else if (isInserting) {
      context.missing(_statNameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorPokemonStatData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonStatData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorPokemonStatTable createAlias(String alias) {
    return $MoorPokemonStatTable(_db, alias);
  }
}

class MoorPokemonTypeData extends DataClass
    implements Insertable<MoorPokemonTypeData> {
  final int id;
  final String typeName;
  MoorPokemonTypeData({@required this.id, @required this.typeName});
  factory MoorPokemonTypeData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoorPokemonTypeData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      typeName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}type_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || typeName != null) {
      map['type_name'] = Variable<String>(typeName);
    }
    return map;
  }

  MoorPokemonTypeCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonTypeCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      typeName: typeName == null && nullToAbsent
          ? const Value.absent()
          : Value(typeName),
    );
  }

  factory MoorPokemonTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonTypeData(
      id: serializer.fromJson<int>(json['id']),
      typeName: serializer.fromJson<String>(json['typeName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'typeName': serializer.toJson<String>(typeName),
    };
  }

  MoorPokemonTypeData copyWith({int id, String typeName}) =>
      MoorPokemonTypeData(
        id: id ?? this.id,
        typeName: typeName ?? this.typeName,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonTypeData(')
          ..write('id: $id, ')
          ..write('typeName: $typeName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, typeName.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonTypeData &&
          other.id == this.id &&
          other.typeName == this.typeName);
}

class MoorPokemonTypeCompanion extends UpdateCompanion<MoorPokemonTypeData> {
  final Value<int> id;
  final Value<String> typeName;
  const MoorPokemonTypeCompanion({
    this.id = const Value.absent(),
    this.typeName = const Value.absent(),
  });
  MoorPokemonTypeCompanion.insert({
    this.id = const Value.absent(),
    @required String typeName,
  }) : typeName = Value(typeName);
  static Insertable<MoorPokemonTypeData> custom({
    Expression<int> id,
    Expression<String> typeName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (typeName != null) 'type_name': typeName,
    });
  }

  MoorPokemonTypeCompanion copyWith({Value<int> id, Value<String> typeName}) {
    return MoorPokemonTypeCompanion(
      id: id ?? this.id,
      typeName: typeName ?? this.typeName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (typeName.present) {
      map['type_name'] = Variable<String>(typeName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonTypeCompanion(')
          ..write('id: $id, ')
          ..write('typeName: $typeName')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonTypeTable extends MoorPokemonType
    with TableInfo<$MoorPokemonTypeTable, MoorPokemonTypeData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonTypeTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _typeNameMeta = const VerificationMeta('typeName');
  GeneratedTextColumn _typeName;
  @override
  GeneratedTextColumn get typeName => _typeName ??= _constructTypeName();
  GeneratedTextColumn _constructTypeName() {
    return GeneratedTextColumn(
      'type_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, typeName];
  @override
  $MoorPokemonTypeTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_type';
  @override
  final String actualTableName = 'moor_pokemon_type';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('type_name')) {
      context.handle(_typeNameMeta,
          typeName.isAcceptableOrUnknown(data['type_name'], _typeNameMeta));
    } else if (isInserting) {
      context.missing(_typeNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorPokemonTypeData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonTypeData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorPokemonTypeTable createAlias(String alias) {
    return $MoorPokemonTypeTable(_db, alias);
  }
}

class MoorPokemonStatLinkData extends DataClass
    implements Insertable<MoorPokemonStatLinkData> {
  final int pokemonId;
  final int statId;
  MoorPokemonStatLinkData({@required this.pokemonId, @required this.statId});
  factory MoorPokemonStatLinkData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return MoorPokemonStatLinkData(
      pokemonId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}pokemon_id']),
      statId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}stat_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || pokemonId != null) {
      map['pokemon_id'] = Variable<int>(pokemonId);
    }
    if (!nullToAbsent || statId != null) {
      map['stat_id'] = Variable<int>(statId);
    }
    return map;
  }

  MoorPokemonStatLinkCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonStatLinkCompanion(
      pokemonId: pokemonId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonId),
      statId:
          statId == null && nullToAbsent ? const Value.absent() : Value(statId),
    );
  }

  factory MoorPokemonStatLinkData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonStatLinkData(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      statId: serializer.fromJson<int>(json['statId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'statId': serializer.toJson<int>(statId),
    };
  }

  MoorPokemonStatLinkData copyWith({int pokemonId, int statId}) =>
      MoorPokemonStatLinkData(
        pokemonId: pokemonId ?? this.pokemonId,
        statId: statId ?? this.statId,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonStatLinkData(')
          ..write('pokemonId: $pokemonId, ')
          ..write('statId: $statId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(pokemonId.hashCode, statId.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonStatLinkData &&
          other.pokemonId == this.pokemonId &&
          other.statId == this.statId);
}

class MoorPokemonStatLinkCompanion
    extends UpdateCompanion<MoorPokemonStatLinkData> {
  final Value<int> pokemonId;
  final Value<int> statId;
  const MoorPokemonStatLinkCompanion({
    this.pokemonId = const Value.absent(),
    this.statId = const Value.absent(),
  });
  MoorPokemonStatLinkCompanion.insert({
    @required int pokemonId,
    @required int statId,
  })  : pokemonId = Value(pokemonId),
        statId = Value(statId);
  static Insertable<MoorPokemonStatLinkData> custom({
    Expression<int> pokemonId,
    Expression<int> statId,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (statId != null) 'stat_id': statId,
    });
  }

  MoorPokemonStatLinkCompanion copyWith(
      {Value<int> pokemonId, Value<int> statId}) {
    return MoorPokemonStatLinkCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      statId: statId ?? this.statId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (statId.present) {
      map['stat_id'] = Variable<int>(statId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonStatLinkCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('statId: $statId')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonStatLinkTable extends MoorPokemonStatLink
    with TableInfo<$MoorPokemonStatLinkTable, MoorPokemonStatLinkData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonStatLinkTable(this._db, [this._alias]);
  final VerificationMeta _pokemonIdMeta = const VerificationMeta('pokemonId');
  GeneratedIntColumn _pokemonId;
  @override
  GeneratedIntColumn get pokemonId => _pokemonId ??= _constructPokemonId();
  GeneratedIntColumn _constructPokemonId() {
    return GeneratedIntColumn(
      'pokemon_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statIdMeta = const VerificationMeta('statId');
  GeneratedIntColumn _statId;
  @override
  GeneratedIntColumn get statId => _statId ??= _constructStatId();
  GeneratedIntColumn _constructStatId() {
    return GeneratedIntColumn(
      'stat_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [pokemonId, statId];
  @override
  $MoorPokemonStatLinkTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_stat_link';
  @override
  final String actualTableName = 'moor_pokemon_stat_link';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonStatLinkData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(_pokemonIdMeta,
          pokemonId.isAcceptableOrUnknown(data['pokemon_id'], _pokemonIdMeta));
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('stat_id')) {
      context.handle(_statIdMeta,
          statId.isAcceptableOrUnknown(data['stat_id'], _statIdMeta));
    } else if (isInserting) {
      context.missing(_statIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MoorPokemonStatLinkData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonStatLinkData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorPokemonStatLinkTable createAlias(String alias) {
    return $MoorPokemonStatLinkTable(_db, alias);
  }
}

class MoorPokemonTypeLinkData extends DataClass
    implements Insertable<MoorPokemonTypeLinkData> {
  final int pokemonId;
  final int typeId;
  MoorPokemonTypeLinkData({@required this.pokemonId, @required this.typeId});
  factory MoorPokemonTypeLinkData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return MoorPokemonTypeLinkData(
      pokemonId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}pokemon_id']),
      typeId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}type_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || pokemonId != null) {
      map['pokemon_id'] = Variable<int>(pokemonId);
    }
    if (!nullToAbsent || typeId != null) {
      map['type_id'] = Variable<int>(typeId);
    }
    return map;
  }

  MoorPokemonTypeLinkCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonTypeLinkCompanion(
      pokemonId: pokemonId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonId),
      typeId:
          typeId == null && nullToAbsent ? const Value.absent() : Value(typeId),
    );
  }

  factory MoorPokemonTypeLinkData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonTypeLinkData(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      typeId: serializer.fromJson<int>(json['typeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'typeId': serializer.toJson<int>(typeId),
    };
  }

  MoorPokemonTypeLinkData copyWith({int pokemonId, int typeId}) =>
      MoorPokemonTypeLinkData(
        pokemonId: pokemonId ?? this.pokemonId,
        typeId: typeId ?? this.typeId,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonTypeLinkData(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(pokemonId.hashCode, typeId.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonTypeLinkData &&
          other.pokemonId == this.pokemonId &&
          other.typeId == this.typeId);
}

class MoorPokemonTypeLinkCompanion
    extends UpdateCompanion<MoorPokemonTypeLinkData> {
  final Value<int> pokemonId;
  final Value<int> typeId;
  const MoorPokemonTypeLinkCompanion({
    this.pokemonId = const Value.absent(),
    this.typeId = const Value.absent(),
  });
  MoorPokemonTypeLinkCompanion.insert({
    @required int pokemonId,
    @required int typeId,
  })  : pokemonId = Value(pokemonId),
        typeId = Value(typeId);
  static Insertable<MoorPokemonTypeLinkData> custom({
    Expression<int> pokemonId,
    Expression<int> typeId,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (typeId != null) 'type_id': typeId,
    });
  }

  MoorPokemonTypeLinkCompanion copyWith(
      {Value<int> pokemonId, Value<int> typeId}) {
    return MoorPokemonTypeLinkCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      typeId: typeId ?? this.typeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonTypeLinkCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonTypeLinkTable extends MoorPokemonTypeLink
    with TableInfo<$MoorPokemonTypeLinkTable, MoorPokemonTypeLinkData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonTypeLinkTable(this._db, [this._alias]);
  final VerificationMeta _pokemonIdMeta = const VerificationMeta('pokemonId');
  GeneratedIntColumn _pokemonId;
  @override
  GeneratedIntColumn get pokemonId => _pokemonId ??= _constructPokemonId();
  GeneratedIntColumn _constructPokemonId() {
    return GeneratedIntColumn(
      'pokemon_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  GeneratedIntColumn _typeId;
  @override
  GeneratedIntColumn get typeId => _typeId ??= _constructTypeId();
  GeneratedIntColumn _constructTypeId() {
    return GeneratedIntColumn(
      'type_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [pokemonId, typeId];
  @override
  $MoorPokemonTypeLinkTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_type_link';
  @override
  final String actualTableName = 'moor_pokemon_type_link';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonTypeLinkData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(_pokemonIdMeta,
          pokemonId.isAcceptableOrUnknown(data['pokemon_id'], _pokemonIdMeta));
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(_typeIdMeta,
          typeId.isAcceptableOrUnknown(data['type_id'], _typeIdMeta));
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MoorPokemonTypeLinkData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonTypeLinkData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorPokemonTypeLinkTable createAlias(String alias) {
    return $MoorPokemonTypeLinkTable(_db, alias);
  }
}

abstract class _$PokemonDatabase extends GeneratedDatabase {
  _$PokemonDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MoorPokemonTable _moorPokemon;
  $MoorPokemonTable get moorPokemon => _moorPokemon ??= $MoorPokemonTable(this);
  $MoorPokemonStatTable _moorPokemonStat;
  $MoorPokemonStatTable get moorPokemonStat =>
      _moorPokemonStat ??= $MoorPokemonStatTable(this);
  $MoorPokemonTypeTable _moorPokemonType;
  $MoorPokemonTypeTable get moorPokemonType =>
      _moorPokemonType ??= $MoorPokemonTypeTable(this);
  $MoorPokemonStatLinkTable _moorPokemonStatLink;
  $MoorPokemonStatLinkTable get moorPokemonStatLink =>
      _moorPokemonStatLink ??= $MoorPokemonStatLinkTable(this);
  $MoorPokemonTypeLinkTable _moorPokemonTypeLink;
  $MoorPokemonTypeLinkTable get moorPokemonTypeLink =>
      _moorPokemonTypeLink ??= $MoorPokemonTypeLinkTable(this);
  PokemonDao _pokemonDao;
  PokemonDao get pokemonDao =>
      _pokemonDao ??= PokemonDao(this as PokemonDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        moorPokemon,
        moorPokemonStat,
        moorPokemonType,
        moorPokemonStatLink,
        moorPokemonTypeLink
      ];
}
