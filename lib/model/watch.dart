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
}
