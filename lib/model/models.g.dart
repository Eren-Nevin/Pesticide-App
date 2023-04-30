// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LandSchema = Schema(
  name: r'Land',
  id: 5713980603420079464,
  properties: {
    r'area': PropertySchema(
      id: 0,
      name: r'area',
      type: IsarType.double,
    ),
    r'landId': PropertySchema(
      id: 1,
      name: r'landId',
      type: IsarType.long,
    ),
    r'lattitude': PropertySchema(
      id: 2,
      name: r'lattitude',
      type: IsarType.double,
    ),
    r'location': PropertySchema(
      id: 3,
      name: r'location',
      type: IsarType.string,
    ),
    r'longitude': PropertySchema(
      id: 4,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'slope': PropertySchema(
      id: 6,
      name: r'slope',
      type: IsarType.double,
    ),
    r'structure': PropertySchema(
      id: 7,
      name: r'structure',
      type: IsarType.string,
      enumMap: _LandstructureEnumValueMap,
    ),
    r'texture': PropertySchema(
      id: 8,
      name: r'texture',
      type: IsarType.string,
      enumMap: _LandtextureEnumValueMap,
    )
  },
  estimateSize: _landEstimateSize,
  serialize: _landSerialize,
  deserialize: _landDeserialize,
  deserializeProp: _landDeserializeProp,
);

int _landEstimateSize(
  Land object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.location.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.structure.name.length * 3;
  bytesCount += 3 + object.texture.name.length * 3;
  return bytesCount;
}

void _landSerialize(
  Land object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.area);
  writer.writeLong(offsets[1], object.landId);
  writer.writeDouble(offsets[2], object.lattitude);
  writer.writeString(offsets[3], object.location);
  writer.writeDouble(offsets[4], object.longitude);
  writer.writeString(offsets[5], object.name);
  writer.writeDouble(offsets[6], object.slope);
  writer.writeString(offsets[7], object.structure.name);
  writer.writeString(offsets[8], object.texture.name);
}

Land _landDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Land(
    area: reader.readDoubleOrNull(offsets[0]) ?? 0,
    landId: reader.readLongOrNull(offsets[1]) ?? 0,
    lattitude: reader.readDoubleOrNull(offsets[2]) ?? 0,
    location: reader.readStringOrNull(offsets[3]) ?? '',
    longitude: reader.readDoubleOrNull(offsets[4]) ?? 0,
    name: reader.readStringOrNull(offsets[5]) ?? '',
    slope: reader.readDoubleOrNull(offsets[6]) ?? 0,
    structure:
        _LandstructureValueEnumMap[reader.readStringOrNull(offsets[7])] ??
            SoilStructure.VeryThin,
    texture: _LandtextureValueEnumMap[reader.readStringOrNull(offsets[8])] ??
        SoilTexture.Sandy,
  );
  return object;
}

P _landDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 7:
      return (_LandstructureValueEnumMap[reader.readStringOrNull(offset)] ??
          SoilStructure.VeryThin) as P;
    case 8:
      return (_LandtextureValueEnumMap[reader.readStringOrNull(offset)] ??
          SoilTexture.Sandy) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _LandstructureEnumValueMap = {
  r'VeryThin': r'VeryThin',
  r'Thin': r'Thin',
  r'Medium': r'Medium',
  r'Thick': r'Thick',
  r'VeryThick': r'VeryThick',
};
const _LandstructureValueEnumMap = {
  r'VeryThin': SoilStructure.VeryThin,
  r'Thin': SoilStructure.Thin,
  r'Medium': SoilStructure.Medium,
  r'Thick': SoilStructure.Thick,
  r'VeryThick': SoilStructure.VeryThick,
};
const _LandtextureEnumValueMap = {
  r'Sandy': r'Sandy',
  r'Silt': r'Silt',
  r'Clay': r'Clay',
  r'Loamy': r'Loamy',
};
const _LandtextureValueEnumMap = {
  r'Sandy': SoilTexture.Sandy,
  r'Silt': SoilTexture.Silt,
  r'Clay': SoilTexture.Clay,
  r'Loamy': SoilTexture.Loamy,
};

extension LandQueryFilter on QueryBuilder<Land, Land, QFilterCondition> {
  QueryBuilder<Land, Land, QAfterFilterCondition> areaEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> areaGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> areaLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> areaBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'area',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> landIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> landIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> landIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> landIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'landId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> lattitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lattitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> lattitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lattitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> lattitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lattitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> lattitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lattitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> longitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> longitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> longitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> longitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> slopeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slope',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> slopeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slope',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> slopeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slope',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> slopeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slope',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureEqualTo(
    SoilStructure value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'structure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureGreaterThan(
    SoilStructure value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'structure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureLessThan(
    SoilStructure value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'structure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureBetween(
    SoilStructure lower,
    SoilStructure upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'structure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'structure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'structure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'structure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'structure',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'structure',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> structureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'structure',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureEqualTo(
    SoilTexture value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'texture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureGreaterThan(
    SoilTexture value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'texture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureLessThan(
    SoilTexture value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'texture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureBetween(
    SoilTexture lower,
    SoilTexture upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'texture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'texture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'texture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'texture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'texture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'texture',
        value: '',
      ));
    });
  }

  QueryBuilder<Land, Land, QAfterFilterCondition> textureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'texture',
        value: '',
      ));
    });
  }
}

extension LandQueryObject on QueryBuilder<Land, Land, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CropSchema = Schema(
  name: r'Crop',
  id: 4741289162411298676,
  properties: {
    r'cropId': PropertySchema(
      id: 0,
      name: r'cropId',
      type: IsarType.long,
    ),
    r'harvestDates': PropertySchema(
      id: 1,
      name: r'harvestDates',
      type: IsarType.longList,
    ),
    r'landId': PropertySchema(
      id: 2,
      name: r'landId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'plantingDate': PropertySchema(
      id: 4,
      name: r'plantingDate',
      type: IsarType.long,
    )
  },
  estimateSize: _cropEstimateSize,
  serialize: _cropSerialize,
  deserialize: _cropDeserialize,
  deserializeProp: _cropDeserializeProp,
);

int _cropEstimateSize(
  Crop object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.harvestDates;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _cropSerialize(
  Crop object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cropId);
  writer.writeLongList(offsets[1], object.harvestDates);
  writer.writeLong(offsets[2], object.landId);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.plantingDate);
}

Crop _cropDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Crop(
    cropId: reader.readLongOrNull(offsets[0]) ?? 0,
    harvestDates: reader.readLongList(offsets[1]),
    landId: reader.readLongOrNull(offsets[2]) ?? 0,
    name: reader.readStringOrNull(offsets[3]) ?? '',
    plantingDate: reader.readLongOrNull(offsets[4]) ?? 0,
  );
  return object;
}

P _cropDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongList(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CropQueryFilter on QueryBuilder<Crop, Crop, QFilterCondition> {
  QueryBuilder<Crop, Crop, QAfterFilterCondition> cropIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cropId',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> cropIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cropId',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> cropIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cropId',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> cropIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cropId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'harvestDates',
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'harvestDates',
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'harvestDates',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition>
      harvestDatesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'harvestDates',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'harvestDates',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'harvestDates',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'harvestDates',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'harvestDates',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'harvestDates',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'harvestDates',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'harvestDates',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> harvestDatesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'harvestDates',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> landIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> landIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> landIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> landIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'landId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> plantingDateEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plantingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> plantingDateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plantingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> plantingDateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plantingDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Crop, Crop, QAfterFilterCondition> plantingDateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plantingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CropQueryObject on QueryBuilder<Crop, Crop, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PesticideSchema = Schema(
  name: r'Pesticide',
  id: -525179504933645722,
  properties: {
    r'applicationDate': PropertySchema(
      id: 0,
      name: r'applicationDate',
      type: IsarType.long,
    ),
    r'cropId': PropertySchema(
      id: 1,
      name: r'cropId',
      type: IsarType.long,
    ),
    r'dose': PropertySchema(
      id: 2,
      name: r'dose',
      type: IsarType.double,
    ),
    r'harvestIntervalDays': PropertySchema(
      id: 3,
      name: r'harvestIntervalDays',
      type: IsarType.long,
    ),
    r'landId': PropertySchema(
      id: 4,
      name: r'landId',
      type: IsarType.long,
    ),
    r'pesticide': PropertySchema(
      id: 5,
      name: r'pesticide',
      type: IsarType.string,
    ),
    r'pesticideId': PropertySchema(
      id: 6,
      name: r'pesticideId',
      type: IsarType.long,
    ),
    r'problem': PropertySchema(
      id: 7,
      name: r'problem',
      type: IsarType.string,
    )
  },
  estimateSize: _pesticideEstimateSize,
  serialize: _pesticideSerialize,
  deserialize: _pesticideDeserialize,
  deserializeProp: _pesticideDeserializeProp,
);

int _pesticideEstimateSize(
  Pesticide object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.pesticide.length * 3;
  bytesCount += 3 + object.problem.length * 3;
  return bytesCount;
}

void _pesticideSerialize(
  Pesticide object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.applicationDate);
  writer.writeLong(offsets[1], object.cropId);
  writer.writeDouble(offsets[2], object.dose);
  writer.writeLong(offsets[3], object.harvestIntervalDays);
  writer.writeLong(offsets[4], object.landId);
  writer.writeString(offsets[5], object.pesticide);
  writer.writeLong(offsets[6], object.pesticideId);
  writer.writeString(offsets[7], object.problem);
}

Pesticide _pesticideDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Pesticide(
    applicationDate: reader.readLongOrNull(offsets[0]) ?? 0,
    cropId: reader.readLongOrNull(offsets[1]) ?? 0,
    dose: reader.readDoubleOrNull(offsets[2]) ?? 0,
    harvestIntervalDays: reader.readLongOrNull(offsets[3]) ?? 0,
    landId: reader.readLongOrNull(offsets[4]) ?? 0,
    pesticide: reader.readStringOrNull(offsets[5]) ?? '',
    pesticideId: reader.readLongOrNull(offsets[6]) ?? 0,
    problem: reader.readStringOrNull(offsets[7]) ?? '',
  );
  return object;
}

P _pesticideDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PesticideQueryFilter
    on QueryBuilder<Pesticide, Pesticide, QFilterCondition> {
  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      applicationDateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'applicationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      applicationDateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'applicationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      applicationDateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'applicationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      applicationDateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'applicationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> cropIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cropId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> cropIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cropId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> cropIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cropId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> cropIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cropId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> doseEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dose',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> doseGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dose',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> doseLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dose',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> doseBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dose',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      harvestIntervalDaysEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'harvestIntervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      harvestIntervalDaysGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'harvestIntervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      harvestIntervalDaysLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'harvestIntervalDays',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      harvestIntervalDaysBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'harvestIntervalDays',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> landIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> landIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> landIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'landId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> landIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'landId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesticide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      pesticideGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pesticide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pesticide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pesticide',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pesticide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pesticide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pesticide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pesticide',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesticide',
        value: '',
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      pesticideIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pesticide',
        value: '',
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pesticideId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      pesticideIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pesticideId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pesticideId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> pesticideIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pesticideId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'problem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'problem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'problem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'problem',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'problem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'problem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'problem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'problem',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition> problemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'problem',
        value: '',
      ));
    });
  }

  QueryBuilder<Pesticide, Pesticide, QAfterFilterCondition>
      problemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'problem',
        value: '',
      ));
    });
  }
}

extension PesticideQueryObject
    on QueryBuilder<Pesticide, Pesticide, QFilterCondition> {}
