// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppStateCollection on Isar {
  IsarCollection<AppState> get appStates => this.collection();
}

const AppStateSchema = CollectionSchema(
  name: r'AppState',
  id: 7189399113359544372,
  properties: {
    r'chosenLocale': PropertySchema(
      id: 0,
      name: r'chosenLocale',
      type: IsarType.string,
    ),
    r'crops': PropertySchema(
      id: 1,
      name: r'crops',
      type: IsarType.objectList,
      target: r'Crop',
    ),
    r'everythingIsGood': PropertySchema(
      id: 2,
      name: r'everythingIsGood',
      type: IsarType.bool,
    ),
    r'hasChosenLocale': PropertySchema(
      id: 3,
      name: r'hasChosenLocale',
      type: IsarType.bool,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'lands': PropertySchema(
      id: 5,
      name: r'lands',
      type: IsarType.objectList,
      target: r'Land',
    ),
    r'pesticides': PropertySchema(
      id: 6,
      name: r'pesticides',
      type: IsarType.objectList,
      target: r'PesticideApplication',
    )
  },
  estimateSize: _appStateEstimateSize,
  serialize: _appStateSerialize,
  deserialize: _appStateDeserialize,
  deserializeProp: _appStateDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Land': LandSchema,
    r'Crop': CropSchema,
    r'PesticideApplication': PesticideApplicationSchema
  },
  getId: _appStateGetId,
  getLinks: _appStateGetLinks,
  attach: _appStateAttach,
  version: '3.1.0+1',
);

int _appStateEstimateSize(
  AppState object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.chosenLocale.length * 3;
  bytesCount += 3 + object.crops.length * 3;
  {
    final offsets = allOffsets[Crop]!;
    for (var i = 0; i < object.crops.length; i++) {
      final value = object.crops[i];
      bytesCount += CropSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.lands.length * 3;
  {
    final offsets = allOffsets[Land]!;
    for (var i = 0; i < object.lands.length; i++) {
      final value = object.lands[i];
      bytesCount += LandSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.pesticides.length * 3;
  {
    final offsets = allOffsets[PesticideApplication]!;
    for (var i = 0; i < object.pesticides.length; i++) {
      final value = object.pesticides[i];
      bytesCount +=
          PesticideApplicationSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _appStateSerialize(
  AppState object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chosenLocale);
  writer.writeObjectList<Crop>(
    offsets[1],
    allOffsets,
    CropSchema.serialize,
    object.crops,
  );
  writer.writeBool(offsets[2], object.everythingIsGood);
  writer.writeBool(offsets[3], object.hasChosenLocale);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeObjectList<Land>(
    offsets[5],
    allOffsets,
    LandSchema.serialize,
    object.lands,
  );
  writer.writeObjectList<PesticideApplication>(
    offsets[6],
    allOffsets,
    PesticideApplicationSchema.serialize,
    object.pesticides,
  );
}

AppState _appStateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppState(
    chosenLocale: reader.readStringOrNull(offsets[0]) ?? 'en',
    everythingIsGood: reader.readBool(offsets[2]),
    hasChosenLocale: reader.readBoolOrNull(offsets[3]) ?? false,
  );
  object.crops = reader.readObjectList<Crop>(
        offsets[1],
        CropSchema.deserialize,
        allOffsets,
        Crop(),
      ) ??
      [];
  object.id = id;
  object.lands = reader.readObjectList<Land>(
        offsets[5],
        LandSchema.deserialize,
        allOffsets,
        Land(),
      ) ??
      [];
  object.pesticides = reader.readObjectList<PesticideApplication>(
        offsets[6],
        PesticideApplicationSchema.deserialize,
        allOffsets,
        PesticideApplication(),
      ) ??
      [];
  return object;
}

P _appStateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? 'en') as P;
    case 1:
      return (reader.readObjectList<Crop>(
            offset,
            CropSchema.deserialize,
            allOffsets,
            Crop(),
          ) ??
          []) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readObjectList<Land>(
            offset,
            LandSchema.deserialize,
            allOffsets,
            Land(),
          ) ??
          []) as P;
    case 6:
      return (reader.readObjectList<PesticideApplication>(
            offset,
            PesticideApplicationSchema.deserialize,
            allOffsets,
            PesticideApplication(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appStateGetId(AppState object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appStateGetLinks(AppState object) {
  return [];
}

void _appStateAttach(IsarCollection<dynamic> col, Id id, AppState object) {
  object.id = id;
}

extension AppStateQueryWhereSort on QueryBuilder<AppState, AppState, QWhere> {
  QueryBuilder<AppState, AppState, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppStateQueryWhere on QueryBuilder<AppState, AppState, QWhereClause> {
  QueryBuilder<AppState, AppState, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppState, AppState, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppStateQueryFilter
    on QueryBuilder<AppState, AppState, QFilterCondition> {
  QueryBuilder<AppState, AppState, QAfterFilterCondition> chosenLocaleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chosenLocale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      chosenLocaleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chosenLocale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> chosenLocaleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chosenLocale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> chosenLocaleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chosenLocale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      chosenLocaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chosenLocale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> chosenLocaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chosenLocale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> chosenLocaleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chosenLocale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> chosenLocaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chosenLocale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      chosenLocaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chosenLocale',
        value: '',
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      chosenLocaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chosenLocale',
        value: '',
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> cropsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crops',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> cropsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crops',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> cropsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crops',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> cropsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crops',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      cropsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crops',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> cropsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'crops',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      everythingIsGoodEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'everythingIsGood',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      hasChosenLocaleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasChosenLocale',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> landsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lands',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> landsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lands',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> landsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lands',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> landsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lands',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      landsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lands',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> landsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lands',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      pesticidesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pesticides',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> pesticidesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pesticides',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      pesticidesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pesticides',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      pesticidesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pesticides',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      pesticidesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pesticides',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition>
      pesticidesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pesticides',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension AppStateQueryObject
    on QueryBuilder<AppState, AppState, QFilterCondition> {
  QueryBuilder<AppState, AppState, QAfterFilterCondition> cropsElement(
      FilterQuery<Crop> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'crops');
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> landsElement(
      FilterQuery<Land> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lands');
    });
  }

  QueryBuilder<AppState, AppState, QAfterFilterCondition> pesticidesElement(
      FilterQuery<PesticideApplication> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pesticides');
    });
  }
}

extension AppStateQueryLinks
    on QueryBuilder<AppState, AppState, QFilterCondition> {}

extension AppStateQuerySortBy on QueryBuilder<AppState, AppState, QSortBy> {
  QueryBuilder<AppState, AppState, QAfterSortBy> sortByChosenLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenLocale', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByChosenLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenLocale', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByEverythingIsGood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'everythingIsGood', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByEverythingIsGoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'everythingIsGood', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByHasChosenLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasChosenLocale', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByHasChosenLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasChosenLocale', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }
}

extension AppStateQuerySortThenBy
    on QueryBuilder<AppState, AppState, QSortThenBy> {
  QueryBuilder<AppState, AppState, QAfterSortBy> thenByChosenLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenLocale', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByChosenLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenLocale', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByEverythingIsGood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'everythingIsGood', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByEverythingIsGoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'everythingIsGood', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByHasChosenLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasChosenLocale', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByHasChosenLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasChosenLocale', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppState, AppState, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension AppStateQueryWhereDistinct
    on QueryBuilder<AppState, AppState, QDistinct> {
  QueryBuilder<AppState, AppState, QDistinct> distinctByChosenLocale(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chosenLocale', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppState, AppState, QDistinct> distinctByEverythingIsGood() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'everythingIsGood');
    });
  }

  QueryBuilder<AppState, AppState, QDistinct> distinctByHasChosenLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasChosenLocale');
    });
  }

  QueryBuilder<AppState, AppState, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }
}

extension AppStateQueryProperty
    on QueryBuilder<AppState, AppState, QQueryProperty> {
  QueryBuilder<AppState, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppState, String, QQueryOperations> chosenLocaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chosenLocale');
    });
  }

  QueryBuilder<AppState, List<Crop>, QQueryOperations> cropsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crops');
    });
  }

  QueryBuilder<AppState, bool, QQueryOperations> everythingIsGoodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'everythingIsGood');
    });
  }

  QueryBuilder<AppState, bool, QQueryOperations> hasChosenLocaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasChosenLocale');
    });
  }

  QueryBuilder<AppState, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<AppState, List<Land>, QQueryOperations> landsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lands');
    });
  }

  QueryBuilder<AppState, List<PesticideApplication>, QQueryOperations>
      pesticidesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pesticides');
    });
  }
}
