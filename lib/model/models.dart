import 'package:isar/isar.dart';
part 'models.g.dart';

class Segment {
  String title;
  String pagePath;
  int color;
  int number;

  Segment(
      {required this.title,
      required this.pagePath,
      required this.color,
      required this.number});
}

Segment landSegment = Segment(
    title: 'Lands', pagePath: '/dashboard/lands', color: 0xF332a84e, number: 2);
Segment cropSegment = Segment(
    title: 'Crops', pagePath: '/dashboard/crops', color: 0xFF32a889, number: 2);
Segment pesticideSegment = Segment(
    title: 'Pesticides',
    pagePath: '/dashboard/pesticides',
    color: 0xFF83a832,
    number: 2);
Segment unitConversionSegment = Segment(
    title: 'Unit Conversion',
    pagePath: '/dashboard/unit_conversion',
    color: 0xFFa83263,
    number: 2);

Map<int, Segment> segementPositions = {
  0: landSegment,
  1: cropSegment,
  2: pesticideSegment,
  3: unitConversionSegment,
};

enum SoilStructure {
  VeryThin,
  Thin,
  Medium,
  Thick,
  VeryThick,
}

enum SoilTexture {
  Sandy,
  Silt,
  Clay,
  Loamy,
}

@embedded
class Land {
  int landId;
  final double lattitude;
  final double longtitude;

  final String location;
  final double area;
  final double slope;

  @Enumerated(EnumType.name)
  final SoilStructure structure;
  @Enumerated(EnumType.name)
  final SoilTexture texture;

  Land({
    this.landId = 0,
    this.lattitude = 0,
    this.longtitude = 0,
    this.location = '',
    this.area = 0,
    this.slope = 0,
    this.structure = SoilStructure.VeryThin,
    this.texture = SoilTexture.Sandy,
  }) {
    if (landId == 0) {
      landId = DateTime.now().millisecondsSinceEpoch;
    }
  }
}

List<String> knownCropNames = [
  "Wheat",
  "Corn",
  "Grape",
  "Tomato",
  "Pepper",
  "Apple",
];

@embedded
class Crop {
  String name = '';
  int cropId;
  int plantingDate = 0;
  List<int>? harvestDates = [];
  int landId = 0;

  Crop({
    this.cropId = 0,
    this.name = '',
    this.plantingDate = 0,
    this.harvestDates,
    this.landId = 0,
  }) {
    if (cropId == 0) {
      cropId = DateTime.now().millisecondsSinceEpoch;
    }
  }

  @override
  String toString() => """name: $name, 
      plantingDate: $plantingDate""";
}

@embedded
class Pesticide {
  int pesticideId = 0;
  int landId = 0;
  int cropId = 0;

  String problem = '';
  String pesticide = '';
  int dose = 0;
  int applicationDate = 0;
  int harvestIntervalDays = 0;

  Pesticide({
    this.pesticideId = 0,
    this.landId = 0,
    this.cropId = 0,
    this.problem = '',
    this.pesticide = '',
    this.dose = 0,
    this.applicationDate = 0,
    this.harvestIntervalDays = 0,
  }) {
    if (pesticideId == 0) {
      pesticideId = DateTime.now().millisecondsSinceEpoch;
    }
  }
}
