import 'package:json_annotation/json_annotation.dart';

enum AssignmentTypes {
  @JsonValue('FOR_SALE')
  forSale,
  @JsonValue('TO_LET')
  toLet,
}

enum EstateTypes {
  @JsonValue('FLAT')
  flat,
  @JsonValue('HOUSE')
  house,
}
