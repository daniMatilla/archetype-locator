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
  name: r'samples',
  id: 2498640880145511601,
  properties: {
    r'answer': PropertySchema(
      id: 0,
      name: r'answer',
      type: IsarType.string,
      enumMap: _SampleEntityanswerEnumValueMap,
    ),
    r'gif': PropertySchema(
      id: 1,
      name: r'gif',
      type: IsarType.string,
    )
  },
  estimateSize: _sampleEntityEstimateSize,
  serialize: _sampleEntitySerialize,
  deserialize: _sampleEntityDeserialize,
  deserializeProp: _sampleEntityDeserializeProp,
  idName: r'sample',
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
  bytesCount += 3 + object.gif.length * 3;
  return bytesCount;
}

void _sampleEntitySerialize(
  SampleEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer.name);
  writer.writeString(offsets[1], object.gif);
}

SampleEntity _sampleEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SampleEntity(
    answer:
        _SampleEntityanswerValueEnumMap[reader.readStringOrNull(offsets[0])] ??
            Answer.yes,
    gif: reader.readString(offsets[1]),
  );
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
      return (reader.readString(offset)) as P;
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      gifGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gif',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gif',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> gifIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gif',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition>
      gifIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gif',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sample',
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
        property: r'sample',
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
        property: r'sample',
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
        property: r'sample',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> sortByGif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gif', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> sortByGifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gif', Sort.desc);
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

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByGif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gif', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByGifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gif', Sort.desc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sample', Sort.asc);
    });
  }

  QueryBuilder<SampleEntity, SampleEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sample', Sort.desc);
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

  QueryBuilder<SampleEntity, SampleEntity, QDistinct> distinctByGif(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gif', caseSensitive: caseSensitive);
    });
  }
}

extension SampleEntityQueryProperty
    on QueryBuilder<SampleEntity, SampleEntity, QQueryProperty> {
  QueryBuilder<SampleEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sample');
    });
  }

  QueryBuilder<SampleEntity, Answer, QQueryOperations> answerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answer');
    });
  }

  QueryBuilder<SampleEntity, String, QQueryOperations> gifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gif');
    });
  }
}
