extension NonNullString on String? {
  String get orEmpty {
    if (this == null) {
      return '';
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension BoolInteger on int? {
  bool orBool() {
    if (this == null) {
      return false;
    } else {
      if (this == 0) {
        return false;
      } else {
        return true;
      }
    }
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullbool on bool? {
  bool orFalse() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}

extension NonNullList on List? {
  List orEmpty() {
    if (this == null) {
      return [];
    } else {
      return this!;
    }
  }
}