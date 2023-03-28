// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_state.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetAuthenticationStateCollection on Isar {
  IsarCollection<AuthenticationState> get authenticationStates =>
      this.collection();
}

const AuthenticationStateSchema = CollectionSchema(
  name: r'AuthenticationState',
  id: 8182159040314066632,
  properties: {
    r'firebaseToken': PropertySchema(
      id: 0,
      name: r'firebaseToken',
      type: IsarType.string,
    ),
    r'loggedIn': PropertySchema(
      id: 1,
      name: r'loggedIn',
      type: IsarType.bool,
    ),
    r'loggedInUserGlobalId': PropertySchema(
      id: 2,
      name: r'loggedInUserGlobalId',
      type: IsarType.long,
    ),
    r'profileImageUrl': PropertySchema(
      id: 3,
      name: r'profileImageUrl',
      type: IsarType.string,
    ),
    r'token': PropertySchema(
      id: 4,
      name: r'token',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 5,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _authenticationStateEstimateSize,
  serialize: _authenticationStateSerialize,
  deserialize: _authenticationStateDeserialize,
  deserializeProp: _authenticationStateDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _authenticationStateGetId,
  getLinks: _authenticationStateGetLinks,
  attach: _authenticationStateAttach,
  version: '3.0.5',
);

int _authenticationStateEstimateSize(
  AuthenticationState object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.firebaseToken.length * 3;
  bytesCount += 3 + object.profileImageUrl.length * 3;
  bytesCount += 3 + object.token.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _authenticationStateSerialize(
  AuthenticationState object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.firebaseToken);
  writer.writeBool(offsets[1], object.loggedIn);
  writer.writeLong(offsets[2], object.loggedInUserGlobalId);
  writer.writeString(offsets[3], object.profileImageUrl);
  writer.writeString(offsets[4], object.token);
  writer.writeString(offsets[5], object.username);
}

AuthenticationState _authenticationStateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AuthenticationState(
    firebaseToken: reader.readString(offsets[0]),
    loggedIn: reader.readBoolOrNull(offsets[1]) ?? false,
    loggedInUserGlobalId: reader.readLong(offsets[2]),
    profileImageUrl: reader.readString(offsets[3]),
    token: reader.readString(offsets[4]),
    username: reader.readString(offsets[5]),
  );
  object.id = id;
  return object;
}

P _authenticationStateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _authenticationStateGetId(AuthenticationState object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _authenticationStateGetLinks(
    AuthenticationState object) {
  return [];
}

void _authenticationStateAttach(
    IsarCollection<dynamic> col, Id id, AuthenticationState object) {
  object.id = id;
}

extension AuthenticationStateQueryWhereSort
    on QueryBuilder<AuthenticationState, AuthenticationState, QWhere> {
  QueryBuilder<AuthenticationState, AuthenticationState, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AuthenticationStateQueryWhere
    on QueryBuilder<AuthenticationState, AuthenticationState, QWhereClause> {
  QueryBuilder<AuthenticationState, AuthenticationState, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterWhereClause>
      idBetween(
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

extension AuthenticationStateQueryFilter on QueryBuilder<AuthenticationState,
    AuthenticationState, QFilterCondition> {
  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firebaseToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firebaseToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firebaseToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firebaseToken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firebaseToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firebaseToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firebaseToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firebaseToken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firebaseToken',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      firebaseTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firebaseToken',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      loggedInEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loggedIn',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      loggedInUserGlobalIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loggedInUserGlobalId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      loggedInUserGlobalIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loggedInUserGlobalId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      loggedInUserGlobalIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loggedInUserGlobalId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      loggedInUserGlobalIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loggedInUserGlobalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profileImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profileImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      profileImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'token',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension AuthenticationStateQueryObject on QueryBuilder<AuthenticationState,
    AuthenticationState, QFilterCondition> {}

extension AuthenticationStateQueryLinks on QueryBuilder<AuthenticationState,
    AuthenticationState, QFilterCondition> {}

extension AuthenticationStateQuerySortBy
    on QueryBuilder<AuthenticationState, AuthenticationState, QSortBy> {
  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByFirebaseToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firebaseToken', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByFirebaseTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firebaseToken', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByLoggedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByLoggedInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByLoggedInUserGlobalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInUserGlobalId', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByLoggedInUserGlobalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInUserGlobalId', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByProfileImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImageUrl', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByProfileImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImageUrl', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AuthenticationStateQuerySortThenBy
    on QueryBuilder<AuthenticationState, AuthenticationState, QSortThenBy> {
  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByFirebaseToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firebaseToken', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByFirebaseTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firebaseToken', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByLoggedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByLoggedInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedIn', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByLoggedInUserGlobalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInUserGlobalId', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByLoggedInUserGlobalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInUserGlobalId', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByProfileImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImageUrl', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByProfileImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImageUrl', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.desc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QAfterSortBy>
      thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AuthenticationStateQueryWhereDistinct
    on QueryBuilder<AuthenticationState, AuthenticationState, QDistinct> {
  QueryBuilder<AuthenticationState, AuthenticationState, QDistinct>
      distinctByFirebaseToken({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firebaseToken',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QDistinct>
      distinctByLoggedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loggedIn');
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QDistinct>
      distinctByLoggedInUserGlobalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loggedInUserGlobalId');
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QDistinct>
      distinctByProfileImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profileImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QDistinct>
      distinctByToken({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'token', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AuthenticationState, AuthenticationState, QDistinct>
      distinctByUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension AuthenticationStateQueryProperty
    on QueryBuilder<AuthenticationState, AuthenticationState, QQueryProperty> {
  QueryBuilder<AuthenticationState, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AuthenticationState, String, QQueryOperations>
      firebaseTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firebaseToken');
    });
  }

  QueryBuilder<AuthenticationState, bool, QQueryOperations> loggedInProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loggedIn');
    });
  }

  QueryBuilder<AuthenticationState, int, QQueryOperations>
      loggedInUserGlobalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loggedInUserGlobalId');
    });
  }

  QueryBuilder<AuthenticationState, String, QQueryOperations>
      profileImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profileImageUrl');
    });
  }

  QueryBuilder<AuthenticationState, String, QQueryOperations> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'token');
    });
  }

  QueryBuilder<AuthenticationState, String, QQueryOperations>
      usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
