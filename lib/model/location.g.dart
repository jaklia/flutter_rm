// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      adminLevels: (json['adminLevels'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'adminLevels':
          instance.adminLevels.map((k, e) => MapEntry(k.toString(), e)),
    };
