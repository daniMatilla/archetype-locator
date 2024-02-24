// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSampleEntityCollection on Isar {
  IsarCollection<SampleEntity> get sampleEntitys => this.collection();
}

const SampleEntitySchema = CollectionSchema(
  name: r'Samples',
  id: 657566907527539070,
  properties: {
    r'answer': PropertySchema(
      id: 0,
      name: r'answer',
      type: IsarType.string,
      enumMap: _SampleEntityanswerEnumValueMap,
    ),
    r'urlGif': PropertySchema(
      id: 1,
      name: r'urlGif',
      type: IsarType.string,
    )
  },
  estimateSize: _sampleEntityEstimateSize,
  serialize: _sampleEntitySerialize,
  deserialize: _sampleEntityDeserialize,
  deserializeProp: _sampleEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sampleEntityGetId,
  getLinks: _sampleEntityGetLinks,
  attach: _sampleEntityAttach,
  version: '3.1.0+1',
);

int _sampleEntityEstimateSize(
  SampleEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.answer.name.length * 3;
  {
    final value = object.urlGif;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _sampleEntitySerialize(
  SampleEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer.name);
  writer.writeString(offsets[1], object.urlGif);
}

SampleEntity _sampleEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SampleEntity();
  object.answer =
      _SampleEntityanswerValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          Answer.yes;
  object.urlGif = reader.readStringOrNull(offsets[1]);
  return object;
}

P _sampleEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_SampleEntityanswerValueEnumMap[
              reader.readStringOrNull(offset)] ??
          Answer.yes) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SampleEntityanswerEnumValueMap = {
  r'yes': r'yes',
  r'no': r'no',
  r'maybe': r'maybe',
};
const _SampleEntityanswerValueEnumMap = {
  r'yes': Answer.yes,
  r'no': Answer.no,
  r'maybe': Answer.maybe,
};

Id _sampleEntityGetId(SampleEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sampleEntityGetLinks(SampleEntity object) {
  return [];
}

void _sampleEntityAttach(
    IsarCollection<dynamic> col, Id id, SampleEntity object) {}

extension SampleEntityQueryWhereSort
    on QueryBuilder<SampleEntity, SampleEntity, QWhere> {
  QueryBuilder<SampleEntity, SampleEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SampleEntityQueryWhere
    on QueryBuilder<SampleEntity, SampleEntity, QWhereClause> {
  QueryBuilder<SampleEntity, SampleEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterWhereClause> idBetween(
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

extension SampleEntityQueryFilter
    on QueryBuilder<SampleEntity, SampleEntity, QFilterCondition> {
  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> answerEqualTo(
    Answer value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerGreaterThan(
    Answer value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerLessThan(
    Answer value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> answerBetween(
    Answer lower,
    Answer upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> answerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urlGif',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urlGif',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> urlGifEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlGif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urlGif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urlGif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> urlGifBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urlGif',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urlGif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urlGif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urlGif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> urlGifMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urlGif',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlGif',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      urlGifIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urlGif',
        value: '',
      ));
    });
  }
}

extension SampleEntityQueryObject
    on QueryBuilder<SampleEntity, SampleEntity, QFilterCondition> {}

extension SampleEntityQueryLinks
    on QueryBuilder<SampleEntity, SampleEntity, QFilterCondition> {}

extension SampleEntityQuerySortBy
    on QueryBuilder<SampleEntity, SampleEntity, QSortBy> {
  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> sortByAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> sortByAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.desc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> sortByUrlGif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlGif', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> sortByUrlGifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlGif', Sort.desc);
    });
  }
}

extension SampleEntityQuerySortThenBy
    on QueryBuilder<SampleEntity, SampleEntity, QSortThenBy> {
  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.desc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByUrlGif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlGif', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByUrlGifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlGif', Sort.desc);
    });
  }
}

extension SampleEntityQueryWhereDistinct
    on QueryBuilder<SampleEntity, SampleEntity, QDistinct> {
  QueryBuilder<SampleEntity, SampleEntity, QDistinct> distinctByAnswer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QDistinct> distinctByUrlGif(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urlGif', caseSensitive: caseSensitive);
    });
  }
}

extension SampleEntityQueryProperty
    on QueryBuilder<SampleEntity, SampleEntity, QQueryProperty> {
  QueryBuilder<SampleEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SampleEntity, Answer, QQueryOperations> answerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answer');
    });
  }

  QueryBuilder<SampleEntity, String?, QQueryOperations> urlGifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urlGif');
    });
  }
}
