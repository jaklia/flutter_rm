// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Watch _$WatchFromJson(Map<String, dynamic> json) => Watch(
      id: json['id'] as String,
      name: json['name'] as String,
      isNotificationEnabled: json['isNotificationEnabled'] as bool,
      onlyPolisWithPictures: json['onlyPolisWithPictures'] as bool,
      createTime: Watch._fromJson(json['createTime'] as int),
      nameSpace: json['nameSpace'] as String,
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      minPrice: json['minPrice'] as int?,
      maxPrice: json['maxPrice'] as int?,
      minFloorArea: json['minFloorArea'] as int?,
      maxFloorArea: json['maxFloorArea'] as int?,
      minUnitPrice: json['minUnitPrice'] as int?,
      maxUnitPrice: json['maxUnitPrice'] as int?,
      assignmentType:
          $enumDecode(_$AssignmentTypesEnumMap, json['assignmentType']),
      estateTypes: (json['estateTypes'] as List<dynamic>)
          .map((e) => $enumDecode(_$EstateTypesEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$WatchToJson(Watch instance) => <String, dynamic>{
      'id': instance.id,
      'isNotificationEnabled': instance.isNotificationEnabled,
      'onlyPolisWithPictures': instance.onlyPolisWithPictures,
      'nameSpace': instance.nameSpace,
      'locations': instance.locations,
      'name': instance.name,
      'assignmentType': _$AssignmentTypesEnumMap[instance.assignmentType]!,
      'estateTypes':
          instance.estateTypes.map((e) => _$EstateTypesEnumMap[e]!).toList(),
      'createTime': Watch._toJson(instance.createTime),
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'minFloorArea': instance.minFloorArea,
      'maxFloorArea': instance.maxFloorArea,
      'minUnitPrice': instance.minUnitPrice,
      'maxUnitPrice': instance.maxUnitPrice,
    };

const _$AssignmentTypesEnumMap = {
  AssignmentTypes.forSale: 'FOR_SALE',
  AssignmentTypes.toLet: 'TO_LET',
};

const _$EstateTypesEnumMap = {
  EstateTypes.flat: 'FLAT',
  EstateTypes.house: 'HOUSE',
};
