import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/model/app_state.dart';

import 'pesticides_db.dart';
part 'models.g.dart';

// Each land has one crop but can have multiple pesticide applications

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

// TODO: Fix This
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

// TODO: Make these nullable so that we know if user has choosen one
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

  @override
  String toString() {
    return """
    landId: $landId, name: $name,
    lattitude: $lattitude, longitude: $longitude,
    area: $area, location: $location,
    soilStructure: $structure, soilTexture: $texture
  """;
  }

  Map<String, dynamic> toJson() => {
        'landId': landId,
        'name': name,
        'lattitude': lattitude,
        'longitude': longitude,
        'area': area,
        'slope': slope,
        'location': location,
        'soilTexture': texture.toString(),
        'soilStructure': structure.toString(),
      };
}

List<String> getKnownCropNames() => [
      "Wheat".i18n(),
      "Corn".i18n(),
      "Grape".i18n(),
      "Tomato".i18n(),
      "Pepper".i18n(),
      "Apple".i18n(),
    ];

class ShownPesticide {
  String name;
  String dose;
  int phi;

  ShownPesticide(this.name, this.dose, this.phi);
}

var string = '''
''';

List<String> getShownProblems(String country, String crop) {
  Map<String, Map<String, List<Map<String, List<ShownPesticide>>>>> res =
      getCropProblemPesticideMap();

  List<Map<String, List<ShownPesticide>>> problemsPesticidesMap =
      res[crop]?[country] ?? [];

  List<String> problems =
      problemsPesticidesMap.map((e) => e.keys.first).toList();

  return problems;
}

List<ShownPesticide> getShownPesticides(
    String country, String crop, String problem) {
  Map<String, Map<String, List<Map<String, List<ShownPesticide>>>>> res =
      getCropProblemPesticideMap();

  List<Map<String, List<ShownPesticide>>> problemsPesticidesList =
      res[crop]?[country] ?? [];

  List<ShownPesticide> specificProblemPesticides = [];

  for (Map<String, List<ShownPesticide>> pesticidesForProblem
      in problemsPesticidesList) {
    if (pesticidesForProblem.keys.contains(problem)) {
      specificProblemPesticides = [...pesticidesForProblem.values.first];
      break;
    }
  }

  return specificProblemPesticides;
}

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
    harvestDates ??= [];
  }

  Crop apply(
      {String? name,
      int? plantingDate,
      int? landId,
      List<int>? harvestDates,
      bool useSameId = false}) {
    Crop newCrop = Crop(
      cropId: useSameId ? cropId : 0,
      name: name ?? this.name,
      plantingDate: plantingDate ?? this.plantingDate,
      landId: landId ?? this.landId,
      harvestDates: harvestDates ?? this.harvestDates,
    );
    return newCrop;
  }

  Map<String, dynamic> toJson() => {
        'cropId': cropId,
        'landId': landId,
        'name': name,
        'planting_date': plantingDate,
        'harvest_dates': harvestDates,
      };

  @override
  String toString() {
    return """
    landId: $landId, cropId: $cropId
    plantingDate: $plantingDate, harvestDates: $harvestDates
    name: $name, 
  """;
  }
}

@embedded
class PesticideApplication {
  int pesticideId = 0;
  int landId = 0;
  int cropId = 0;

  String problem = '';
  String pesticide = '';
  String dose = '';
  int applicationDate = 0;
  int harvestIntervalDays = 0;

  PesticideApplication({
    this.pesticideId = 0,
    this.landId = 0,
    this.cropId = 0,
    this.problem = '',
    this.pesticide = '',
    this.dose = '',
    this.applicationDate = 0,
    this.harvestIntervalDays = 0,
  }) {
    if (pesticideId == 0) {
      pesticideId = DateTime.now().millisecondsSinceEpoch;
    }
  }

  PesticideApplication apply({
    int? landId,
    int? cropId,
    String? problem,
    String? pesticide,
    String? dose,
    int? applicationDate,
    int? harvestIntervalDays,
  }) {
    PesticideApplication newPesticide = PesticideApplication(
      landId: landId ?? this.landId,
      cropId: cropId ?? this.cropId,
      problem: problem ?? this.problem,
      pesticide: pesticide ?? this.pesticide,
      dose: dose ?? this.dose,
      applicationDate: applicationDate ?? this.applicationDate,
      harvestIntervalDays: harvestIntervalDays ?? this.harvestIntervalDays,
    );
    return newPesticide;
  }

  Map<String, dynamic> toJson() => {
        'pesticide_id': pesticideId,
        'crop_id': cropId,
        'land_id': landId,
        'pesticide': pesticide,
        'dose': dose,
        'problem': problem,
        'application_date': applicationDate,
        'harvest_interval_days': harvestIntervalDays
      };
  @override
  String toString() {
    return """
    pesticideId: $pesticideId
    landId: $landId, cropId: $cropId
    problem: $problem, pesticide: $pesticide
    dose: $dose, applicationDate: $applicationDate
    harvestIntervalDays: $harvestIntervalDays
  """;
  }
}

Land? findACropsLand(AppState appState, Crop crop) {
  List<Land> possibleLands =
      appState.lands.where((land) => land.landId == crop.landId).toList();

  if (possibleLands.isEmpty) {
    return null;
  }

  return possibleLands[0];
}

Crop? findALandCrop(AppState appState, Land land) {
  List<Crop> crops = appState.crops.where((crop) {
    return crop.landId == land.landId;
  }).toList();

  if (crops.isEmpty) {
    return null;
  }

  return crops[0];
}

List<PesticideApplication> findALandCropPairPesiticdeApplications(
    AppState appState, Land land, Crop crop) {
  List<PesticideApplication> pesticideApplications = appState.pesticides
      .where((PesticideApplication pesticide) =>
          pesticide.landId == land.landId && pesticide.cropId == crop.cropId)
      .toList();

  return pesticideApplications;
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

PesticideApplication? getPesiticideById(AppState appState, int id) {
  List<PesticideApplication> possiblePesticides =
      appState.pesticides.where((pesticide) => pesticide.cropId == id).toList();
  if (possiblePesticides.isEmpty) {
    return null;
  }

  return possiblePesticides[0];
}
