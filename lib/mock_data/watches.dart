import 'package:flutter_rm/model/enums.dart';
import 'package:flutter_rm/model/location.dart';

import '../model/watch.dart';

class MockData {
  static List<Watch> watches = [
    Watch(
      id: 'abc1',
      name: 'Watch1',
      createTime: DateTime.now(),
      nameSpace: 'hu',
      locations: [
        Location(
          adminLevels: <int, String>{
            6: 'Zala megye',
            8: 'Zalaegerszeg',
          },
        ),
      ],
      assignmentType: AssignmentTypes.toLet,
      estateTypes: [EstateTypes.flat],
    ),
    Watch(
      id: 'abc2',
      name: 'Watch2',
      createTime: DateTime.now(),
      nameSpace: 'hu',
      locations: [
        Location(
          adminLevels: <int, String>{
            6: 'Budapest',
            8: 'Budapest',
          },
        ),
      ],
      assignmentType: AssignmentTypes.forSale,
      estateTypes: [EstateTypes.house],
      minPrice: 69000000,
      maxPrice: 420000000,
    ),
    Watch(
      id: 'abc3',
      name: 'Watch3',
      createTime: DateTime.now(),
      nameSpace: 'hu',
      locations: [
        Location(
          adminLevels: <int, String>{
            6: 'Zala megye',
            8: 'Zalaegerszeg',
          },
        ),
        Location(
          adminLevels: <int, String>{
            6: 'asdasdasd',
            8: 'Győr',
          },
        ),
        Location(
          adminLevels: <int, String>{
            6: 'asdasdasd',
            8: 'Budapest',
          },
        ),
      ],
      assignmentType: AssignmentTypes.forSale,
      estateTypes: [EstateTypes.flat],
    ),
    Watch(
      id: 'abc4',
      name: 'Watch4',
      createTime: DateTime.now(),
      nameSpace: 'hu',
      locations: [
        Location(
          adminLevels: <int, String>{
            6: 'Zala megye',
            8: 'Zalaegerszeg',
          },
        ),
      ],
      assignmentType: AssignmentTypes.forSale,
      estateTypes: [EstateTypes.flat, EstateTypes.house],
    ),
  ];
}
