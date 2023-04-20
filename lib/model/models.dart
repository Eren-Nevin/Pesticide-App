import 'package:isar/isar.dart';
import 'package:pesticide/model/app_state.dart';
part 'models.g.dart';

class Segment {
  String title;
  String pagePath;
  int color;

  Segment({
    required this.title,
    required this.pagePath,
    required this.color,
  });
}

Segment landSegment =
    Segment(title: 'Lands', pagePath: '/dashboard/lands', color: 0xF332a84e);
Segment cropSegment =
    Segment(title: 'Crops', pagePath: '/dashboard/crops', color: 0xFF32a889);
Segment pesticideSegment = Segment(
    title: 'Pesticides', pagePath: '/dashboard/pesticides', color: 0xFF83a832);
Segment unitConversionSegment = Segment(
  title: 'Unit Conversion',
  pagePath: '/dashboard/unit_conversion',
  color: 0xFFa83263,
);

Map<int, Segment> segementPositions = {
  0: landSegment,
  1: cropSegment,
  2: pesticideSegment,
  3: unitConversionSegment,
};

enum PesticideProblems {
  ProblemA,
  ProblemB,
  Other,
}

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
  final String name;
  final double lattitude;
  final double longitude;

  final String location;
  final double area;
  final double slope;

  @Enumerated(EnumType.name)
  final SoilStructure structure;
  @Enumerated(EnumType.name)
  final SoilTexture texture;

  Land({
    this.name = '',
    this.landId = 0,
    this.lattitude = 0,
    this.longitude = 0,
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

  Land apply({
    String? name,
    double? lattitude,
    double? longitude,
    double? area,
    double? slope,
    String? location,
    SoilTexture? soilTexture,
    SoilStructure? soilStructure,
  }) {
    Land newLand = Land(
        name: name ?? this.name,
        landId: 0,
        lattitude: lattitude ?? this.lattitude,
        longitude: longitude ?? this.longitude,
        area: area ?? this.area,
        slope: slope ?? this.slope,
        location: location ?? this.location,
        texture: soilTexture ?? texture,
        structure: soilStructure ?? structure);
    return newLand;
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
  // TODO: Should it be list or single?
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

  Crop apply({
    String? name,
    int? plantingDate,
    int? landId,
    List<int>? harvestDates,
  }) {
    Crop newCrop = Crop(
      cropId: 0,
      name: name ?? this.name,
      plantingDate: plantingDate ?? this.plantingDate,
      landId: landId ?? this.landId,
      harvestDates: harvestDates ?? this.harvestDates,
    );
    return newCrop;
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
  double dose = 0;
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

  Pesticide apply({
    int? landId,
    int? cropId,
    String? problem,
    String? pesticide,
    double? dose,
    int? applicationDate,
    int? harvestIntervalDays,
  }) {
    Pesticide newPesticide = Pesticide(
      landId: landId ?? 0,
      cropId: cropId ?? 0,
      problem: problem ?? this.problem,
      pesticide: pesticide ?? this.pesticide,
      dose: dose ?? this.dose,
      applicationDate: applicationDate ?? this.applicationDate,
      harvestIntervalDays: harvestIntervalDays ?? this.harvestIntervalDays,
    );
    return newPesticide;
  }
}

Land? getLandById(AppState appState, int id) {
  List<Land> possibleLands =
      appState.lands.where((land) => land.landId == id).toList();
  if (possibleLands.isEmpty) {
    return null;
  }

  return possibleLands[0];
}

Crop? getCropById(AppState appState, int id) {
  List<Crop> possibleCrops =
      appState.crops.where((crop) => crop.cropId == id).toList();
  if (possibleCrops.isEmpty) {
    return null;
  }

  return possibleCrops[0];
}

Pesticide? getPesiticideById(AppState appState, int id) {
  List<Pesticide> possiblePesticides =
      appState.pesticides.where((pesticide) => pesticide.cropId == id).toList();
  if (possiblePesticides.isEmpty) {
    return null;
  }

  return possiblePesticides[0];
}
