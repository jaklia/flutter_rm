import 'package:flutter_rm/model/enums.dart';
import 'package:flutter_rm/model/location.dart';

class Watch {
  String id;
  bool isNotificationsEnabled;
  bool onlyPolisWithPictures;
  String nameSpace;
  List<Location> locations;
  String name;
  AssignmentTypes assignmentType;
  List<EstateTypes> estateTypes;
  DateTime createTime;
  int? minPrice;
  int? maxPrice;
  int? minFloorArea;
  int? maxFloorArea;
  int? minUnitPrice;
  int? maxUnitPrice;

  Watch({
    required this.id,
    required this.name,
    this.isNotificationsEnabled = true,
    this.onlyPolisWithPictures = true,
    required this.createTime,
    required this.nameSpace,
    required this.locations,
    this.minPrice,
    this.maxPrice,
    this.minFloorArea,
    this.maxFloorArea,
    this.minUnitPrice,
    this.maxUnitPrice,
    required this.assignmentType,
    required this.estateTypes,
  });

  //   this is probably not the best way to do this, but it'll do for now
  String get price {
    if (maxPrice == null) {
      if (minPrice == null) {
        return '0+ HUF';
      }
      return '$minPrice+ HUF';
    }
    if (minPrice == null) {
      return '0 - $maxPrice HUF';
    }
    return '$minPrice - $maxPrice HUF';
  }

  String get assignmentTypeStr {
    if (assignmentType == AssignmentTypes.forSale) {
      return 'for sale';
    }
    return 'to let';
  }

  String get estateTypeStr {
    return estateTypes
        .map((e) => e == EstateTypes.flat ? 'flat' : 'house')
        .join(', ');
  }

  String get area {
    if (maxFloorArea == null) {
      if (minFloorArea == null) {
        return '0+ m2';
      }
      return '$minFloorArea+ m2';
    }
    if (minFloorArea == null) {
      return '0 - $maxFloorArea m2';
    }
    return '$minFloorArea - $maxFloorArea m2';
  }

  String get locationStr {
    return locations.map((e) => e.adminLevels[8]).join(', ');
  }
}