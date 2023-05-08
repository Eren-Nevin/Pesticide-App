import 'models.dart';

Map<
    String,
    Map<
        String,
        List<
            Map<String, List<ShownPesticide>>>>> getCropProblemPesticideMap() =>
    {
      'Wheat': {
        'Turkey': [
          {
            'Sunn Pest': [
              ShownPesticide('60 g/l Gamma-cyhalothrin', 0.075, 28),
              ShownPesticide('100 g/l Alpha-cypermethrin', 0.15, 14),
              ShownPesticide('120 g/l Deltamethrin', 0.05, 3),
              ShownPesticide('25 g/l Beta-cyfluthrin', 0.05, 14),
              ShownPesticide('25 g/l Cypermethrin', 1.8, 14),
              ShownPesticide('250 g/l Cypermethrin', 0.3, 7),
              ShownPesticide('5 g/l Deltamethrin', 1.5, 3),
              ShownPesticide('50 g/l Lambda-cyhalothrin', 0.2, 14),
              ShownPesticide('500 g/l Cypermethrin', 0.15, 7),
              ShownPesticide('60 g/l Gamma-cyhalothrin', 0.075, 28),
            ]
          },
          {
            'Stink Bug': [
              ShownPesticide('100 g/l Alpha-cypermethrin', 0.45, 14),
              ShownPesticide('120 g/l Deltamethrin', 0.075, 0),
            ]
          },
          {
            'Cereal Weevil': [
              ShownPesticide('500 g/l Cypermethrin', 0.15, 7),
              ShownPesticide('100 g/l Alpha-cypermethrin', 0.14, 15),
              ShownPesticide('25 g/l Beta-cyfluthrin', 0.3, 14),
              ShownPesticide('50 g/l Lambda-cyhalothrin ', 0.25, 14),
            ]
          },
          {
            'Yellow Rust': [
              ShownPesticide(
                  '62.5 g/L Pyraclostrobin+ 50 g/L Fenpicoxamid', 1.5, 42),
              ShownPesticide('%25 Tebuconazole', 0.75, 35),
              ShownPesticide(
                  '%52.5 Mancozeb + %3.75 Azoxystrobin + %3.75 Prothioconazole',
                  2,
                  35),
              ShownPesticide('%70 Kükürt + %4.5 Tebuconazole', 3.2, 35),
              ShownPesticide('%70 Mancozeb + %5 Azoxystrobin', 2, 28),
              ShownPesticide('%80 Mancozeb', 3.5, 28),
              ShownPesticide(
                  '100 g/l Azoxystrobin + 80 g/l Tetraconazole', 1.25, 42),
              ShownPesticide('100 g/l Fluquinconazole', 100, 35),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  1,
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', 1, 42),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', 1.5, 56),
              ShownPesticide('125 g/l Epoxiconazole', 0.8, 35),
              ShownPesticide(
                  '125 g/l Epoxiconazole + 125 g/l Kresoxim-methyl', 1, 49),
              ShownPesticide('125 g/l Flutriafol', 1, 35),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', 1, 35),
              ShownPesticide(
                  '125 g/l Prothioconazole+90 g/l Azoxystrobin', 1, 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  0.75,
                  42),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', 0.75, 42),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', 1, 42),
              ShownPesticide(
                  '200 g/l Prothioconazole+50 g/l Proquinazid', 0.75, 42),
              ShownPesticide('200 g/l Pyraclostrobin', 1, 56),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  0.5,
                  42),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', 0.75, 56),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  0.8,
                  49),
              ShownPesticide('225 g/l Tebuconazole + 75 g/l Flutriafol', 1, 49),
              ShownPesticide('230 g/L Prochloraz+ 41 g/L Tetraconazole', 2, 56),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  1.75,
                  42),
              ShownPesticide(
                  '240 g/l Cyprodinil + 40 g/l Azoxystrobin', 1.5, 42),
              ShownPesticide('250 g/l Azoxystrobin', 1, 56),
              ShownPesticide('250 g/l Flutriafol', 0.5, 30),
              ShownPesticide(
                  '250 g/l Prochloraz+75 g/l Trifloxystrobin+50 g/l Cyproconazole',
                  1,
                  42),
              ShownPesticide('250 g/l Prothioconazole', 0.8, 56),
              ShownPesticide('250 g/l Tebuconazole', 0.75, 35),
              ShownPesticide(
                  '280 g/l Azoxystrobin + 120 g/l Prothioconazole', 0.8, 35),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', 0.3, 56),
              ShownPesticide(
                  '310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                  0.6,
                  35),
              ShownPesticide('60 g/l Metconazole', 1.5, 35),
              ShownPesticide('62.5 g/l Fluxapyroxad', 1.5, 49),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', 1, 56),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 31.25 g/l Epoxiconazole', 2, 56),
            ]
          },
          {
            'Brown Rust': [
              ShownPesticide(
                  '175 g/l Prothioconazole + 125 g/l Difenoconazole', 1, 35),
              ShownPesticide('%70 Kükürt + %4.5 Tebuconazole', 3.2, 35),
              ShownPesticide('%80 Mancozeb', 3.5, 28),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', 0.8, 42),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  1,
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', 1, 42),
              ShownPesticide(
                  '100 g/l Prothioconazole + 50 g/l Fluoxastrobin + 40 g/l Bixafen',
                  1,
                  35),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', 1.25, 56),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', 1, 28),
              ShownPesticide('125 g/l Flutriafol', 1, 30),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', 1, 35),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', 1.5, 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  0.75,
                  42),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', 0.75, 42),
              ShownPesticide(
                  '175 g/l Prothioconazole + 88 g/l Trifloxystrobin', 1, 35),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', 1, 42),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  0.5,
                  42),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  0.8,
                  49),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  1.75,
                  42),
              ShownPesticide('250 g/l Azoxystrobin', 1, 56),
              ShownPesticide(
                  '267 g/l Prochloraz + 133 g/l Tebuconazole', 1.5, 42),
              ShownPesticide(
                  '282 g/l Thiophanate-methyl + 56 g/l Pyraclostrobin',
                  1.75,
                  56),
              ShownPesticide(
                  '85 g/l Pyraclostrobin + 62.5 g/l Epoxiconazole', 2, 42),
            ]
          },
          {
            'Speckled': [
              ShownPesticide('%25 Tebuconazole', 0.75, 35),
              ShownPesticide(
                  '%52.5 Mancozeb + %3.75 Azoxystrobin + %3.75 Prothioconazole',
                  2,
                  35),
              ShownPesticide('100 g/l Fluquinconazole', 100, 35),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', 0.8, 42),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  1,
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', 1, 42),
              ShownPesticide(
                  '100 g/l Prothioconazole + 50 g/l Fluoxastrobin + 40 g/l Bixafen',
                  1,
                  35),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', 1.25, 56),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', 1, 28),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Flutriafol', 70, 56),
              ShownPesticide(
                  '125 g/l Epoxiconazole + 125 g/l Kresoxim-methyl', 1, 49),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', 1, 35),
              ShownPesticide(
                  '125 g/l Prothioconazole+90 g/l Azoxystrobin', 1, 42),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', 1.5, 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  75,
                  42),
              ShownPesticide(
                  '150 g/l Prochloraz + 42 g/l Epoxiconazole', 200, 56),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', 75, 42),
              ShownPesticide(
                  '175 g/l Prothioconazole + 125 g/l Difenoconazole', 1, 35),
              ShownPesticide(
                  '175 g/l Prothioconazole + 88 g/l Trifloxystrobin', 1, 35),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 150 g/l Prothioconazole', 1, 56),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', 1, 42),
              ShownPesticide(
                  '200 g/l Prothioconazole+50 g/l Proquinazid', 1, 42),
              ShownPesticide('200 g/l Pyraclostrobin', 1.25, 56),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  0.5,
                  42),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', 100, 21),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  0.8,
                  49),
              ShownPesticide('225 g/l Tebuconazole + 75 g/l Flutriafol', 1, 49),
              ShownPesticide('230 g/L Prochloraz+ 41 g/L Tetraconazole', 2, 56),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  1.75,
                  42),
              ShownPesticide(
                  '240 g/l Cyprodinil + 40 g/l Azoxystrobin', 1.5, 42),
              ShownPesticide('250 g/l Azoxystrobin', 1, 56),
              ShownPesticide(
                  '250 g/l Prochloraz+75 g/l Trifloxystrobin+50 g/l Cyproconazole',
                  1,
                  42),
              ShownPesticide('250 g/l Prothioconazole', 0.8, 56),
              ShownPesticide(
                  '250 g/l Spiroxamine + 100 g/l Prothioconazole + 50 g/l Bixafen',
                  1,
                  35),
              ShownPesticide(
                  '267 g/l Prochloraz + 133 g/l Tebuconazole', 1.25, 42),
              ShownPesticide(
                  '280 g/l Azoxystrobin + 120 g/l Prothioconazole', 0.8, 35),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', 0.3, 56),
              ShownPesticide(
                  '300 g/l Prochloraz+ 200 g/l Tebuconazole', 1.25, 42),
              ShownPesticide(
                  '300 g/l Spiroxamine + 160 g/l Prothioconazole', 1, 35),
              ShownPesticide(
                  '310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                  0.6,
                  35),
              ShownPesticide('380 g/l Kalsiyum polisülfür', 3, 0),
              ShownPesticide('450 g/l Prochloraz', 1, 35),
              ShownPesticide('60 g/l Metconazole', 1.5, 35),
              ShownPesticide('62,5 g/l Fluxapyroxad', 1.5, 49),
              ShownPesticide(
                  '62.5 g/L Pyraclostrobin+ 50 g/L Fenpicoxamid', 1.5, 42),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', 1, 56),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 31,25 g/l Epoxiconazole', 2, 56),
            ]
          },
          {
            'Powdery': [
              ShownPesticide(
                  '%52.5 Mancozeb + %3.75 Azoxystrobin + %3.75 Prothioconazole',
                  2,
                  35),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', 1, 42),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  1,
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', 1, 42),
              ShownPesticide(
                  '100 g/l Prothioconazole + 50 g/l Fluoxastrobin + 40 g/l Bixafen',
                  1,
                  35),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', 1.5, 56),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', 1, 28),
              ShownPesticide(
                  '125 g/l Epoxiconazole + 125 g/l Kresoxim-methyl', 1, 49),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', 1, 35),
              ShownPesticide(
                  '125 g/l Prothioconazole+90 g/l Azoxystrobin', 1, 42),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', 1.5, 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  0.75,
                  42),
              ShownPesticide(
                  '150 g/l Prochloraz + 42 g/l Epoxiconazole', 2, 56),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', 0.75, 42),
              ShownPesticide(
                  '175 g/l Prothioconazole + 88 g/l Trifloxystrobin', 1, 35),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 150 g/l Prothioconazole', 1, 56),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', 1, 42),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', 1, 42),
              ShownPesticide(
                  '200 g/l Picoxystrobin + 80 g/l Cyproconazole', 0.5, 35),
              ShownPesticide(
                  '200 g/l Prothioconazole+50 g/l Proquinazid', 0.75, 42),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  0.5,
                  42),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', 0.75, 56),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  0.8,
                  49),
              ShownPesticide('225 g/l Tebuconazole + 75 g/l Flutriafol', 1, 49),
              ShownPesticide('230 g/L Prochloraz+ 41 g/L Tetraconazole', 2, 56),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  1.75,
                  42),
              ShownPesticide(
                  '240 g/l Cyprodinil + 40 g/l Azoxystrobin', 1.5, 42),
              ShownPesticide('250 g/l Azoxystrobin', 1, 56),
              ShownPesticide(
                  '250 g/l Prochloraz+75 g/l Trifloxystrobin+50 g/l Cyproconazole',
                  1,
                  42),
              ShownPesticide('250 g/l Prothioconazole', 0.8, 56),
              ShownPesticide(
                  '250 g/l Spiroxamine + 100 g/l Prothioconazole + 50 g/l Bixafen',
                  1,
                  35),
              ShownPesticide('250 g/l Tebuconazole', 0.75, 35),
              ShownPesticide(
                  '267 g/l Prochloraz + 133 g/l Tebuconazole', 1.5, 42),
              ShownPesticide(
                  '280 g/l Azoxystrobin + 120 g/l Prothioconazole', 0.8, 35),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', 0.3, 56),
              ShownPesticide(
                  '300 g/l Spiroxamine + 160 g/l Prothioconazole', 1, 35),
              ShownPesticide(
                  '310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                  0.6,
                  35),
              ShownPesticide('450 g/l Prochloraz', 1, 35),
              ShownPesticide('62.5 g/l Fluxapyroxad', 1.5, 49),
              ShownPesticide(
                  '62.5 g/L Pyraclostrobin+ 50 g/L Fenpicoxamid', 1.5, 42),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', 1, 56),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 31.25 g/l Epoxiconazole', 2, 56),
              ShownPesticide('825 g/l Kükürt', 4, 0),
              ShownPesticide(
                  '85 g/l Pyraclostrobin + 62.5 g/l Epoxiconazole', 2, 42),
            ]
          },
        ]
      },
      'Corn': {
        'Turkey': [
          {'Leaf Blight': []},
          {'Two-Spotted Spider Mite': []},
          {'Mediterranean Corn Borer': []},
          {'European Maize Borer': []},
          {'Cutworm': []},
          {'Corn Leaf Aphid': []},
          {'Wire Worm': []},
          {'Beet Army Worm': []}
        ]
      },
      'Grape': {
        'Turkey': [
          {'Phomopsis Cane And Leaf Spot': []},
          {'Grape Anthracnose': []},
          {'Grape Downy Mildew': []},
        ]
      },
      'Tomato': {
        'Turkey': [
          {'Late Blight': []},
          {'Bacterial Speck': []},
          {'Early Blight': []},
          {'Grey Mold': []},
          {'Powdery Mildew': []},
          {'Bacterial Spot': []},
          {'Grey Mold': []},
          {'Powdery Mildew': []},
          {'Leaf Miner': []},
          {'Fruit Borer': []},
          {'Whiteflies': []},
          {'Aphids': []},
        ]
      },
      'Pepper': {
        'Turkey': [
          {'Green Peach Aphid': []},
          {'Powdery Mildew': []},
          {'Grey Mold': []},
          {'Thrips': []},
          {'Leafworm': []},
          {'Fruit Borer': []},
          {'Whiteflies': []}
        ]
      },
      'Apple': {
        'Turkey': [
          {'Codling Moth': []},
          {'San Jose Scale': []},
          {'Two-Spotted Spider Mite': []},
          {'Apple Scab': []},
          {'Apple Powdery Mildew': []},
          {'Cedar-Apple Rust': []}
        ],
      },
    };
