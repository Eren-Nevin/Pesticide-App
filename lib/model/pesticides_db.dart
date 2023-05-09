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
              ShownPesticide('60 g/l Gamma-cyhalothrin', '0.075', 28),
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.15', 14),
              ShownPesticide('120 g/l Deltamethrin', '0.05', 3),
              ShownPesticide('25 g/l Beta-cyfluthrin', '0.05', 14),
              ShownPesticide('25 g/l Cypermethrin', '1.80', 14),
              ShownPesticide('250 g/l Cypermethrin', '0.3', 7),
              ShownPesticide('5 g/l Deltamethrin', '1.5', 3),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.2', 14),
              ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
              ShownPesticide('60 g/l Gamma-cyhalothrin', '0.075', 28),
            ]
          },
          {
            'Stink Bug': [
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.45', 14),
              ShownPesticide('120 g/l Deltamethrin', '0.075', 0),
            ]
          },
          {
            'Cereal Weevil': [
              ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.14', 15),
              ShownPesticide('25 g/l Beta-cyfluthrin', '0.3', 14),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.25', 14),
            ]
          },
          {
            'Yellow Rust': [
              ShownPesticide(
                  '62.5 g/L Pyraclostrobin+ 50 g/L Fenpicoxamid', '1.5', 42),
              ShownPesticide('%25 Tebuconazole', '0.75', 35),
              ShownPesticide(
                  '%52,5 Mancozeb + %3,75 Azoxystrobin + %3,75 Prothioconazole',
                  '2',
                  35),
              ShownPesticide('%70 Kükürt + %4,5 Tebuconazole', '3.2', 35),
              ShownPesticide('%70 Mancozeb + %5 Azoxystrobin', '2', 28),
              ShownPesticide('%80 Mancozeb', '3.5', 28),
              ShownPesticide(
                  '100 g/l Azoxystrobin + 80 g/l Tetraconazole', '1.25', 42),
              ShownPesticide('100 g/l Fluquinconazole', '100', 35),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  '1',
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', '1', 42),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', '1.5', 56),
              ShownPesticide('125 g/l Epoxiconazole', '0.8', 35),
              ShownPesticide(
                  '125 g/l Epoxiconazole + 125 g/l Kresoxim-methyl', '1', 49),
              ShownPesticide('125 g/l Flutriafol', '1', 35),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', '1', 35),
              ShownPesticide(
                  '125 g/l Prothioconazole+90 g/l Azoxystrobin', '1', 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  '0.75',
                  42),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', '0.75', 42),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '1', 42),
              ShownPesticide(
                  '200 g/l Prothioconazole+50 g/l Proquinazid', '0.75', 42),
              ShownPesticide('200 g/l Pyraclostrobin', '1', 56),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  '0.5',
                  42),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '0.75', 56),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  '0.8',
                  49),
              ShownPesticide(
                  '225 g/l Tebuconazole + 75 g/l Flutriafol', '1', 49),
              ShownPesticide(
                  '230 g/L Prochloraz+ 41 g/L Tetraconazole', '2', 56),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  '1.75',
                  42),
              ShownPesticide(
                  '240 g/l Cyprodinil + 40 g/l Azoxystrobin', '1.5', 42),
              ShownPesticide('250 g/l Azoxystrobin', '1', 56),
              ShownPesticide('250 g/l Flutriafol', '0.5', 30),
              ShownPesticide(
                  '250 g/l Prochloraz+75 g/l Trifloxystrobin+50 g/l Cyproconazole',
                  '1',
                  42),
              ShownPesticide('250 g/l Prothioconazole', '0.8', 56),
              ShownPesticide('250 g/l Tebuconazole', '0.75', 35),
              ShownPesticide(
                  '280 g/l Azoxystrobin + 120 g/l Prothioconazole', '0.8', 35),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '0.3', 56),
              ShownPesticide(
                  '310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                  '0.6',
                  35),
              ShownPesticide('60 g/l Metconazole', '1.5', 35),
              ShownPesticide('62,5 g/l Fluxapyroxad', '1.5', 49),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', '1', 56),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 31,25 g/l Epoxiconazole', '2', 56),
            ]
          },
          {
            'Brown Rust': [
              ShownPesticide(
                  '175 g/l Prothioconazole + 125 g/l Difenoconazole', '1', 35),
              ShownPesticide('%70 Kükürt + %4,5 Tebuconazole', '3.2', 35),
              ShownPesticide('%80 Mancozeb', '3.5', 28),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', '0.8', 42),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  '1',
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', '1', 42),
              ShownPesticide(
                  '100 g/l Prothioconazole + 50 g/l Fluoxastrobin + 40 g/l Bixafen',
                  '1',
                  35),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', '1.25', 56),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', '1', 28),
              ShownPesticide('125 g/l Flutriafol', '1', 30),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', '1', 35),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', '1.5', 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  '0.75',
                  42),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', '0.75', 42),
              ShownPesticide(
                  '175 g/l Prothioconazole + 88 g/l Trifloxystrobin', '1', 35),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '1', 42),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  '0.5',
                  42),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  '0.8',
                  49),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  '1.75',
                  42),
              ShownPesticide('250 g/l Azoxystrobin', '1', 56),
              ShownPesticide(
                  '267 g/l Prochloraz + 133 g/l Tebuconazole', '1.5', 42),
              ShownPesticide(
                  '282 g/l Thiophanate-methyl + 56 g/l Pyraclostrobin',
                  '1.75',
                  56),
              ShownPesticide(
                  '85 g/l Pyraclostrobin + 62,5 g/l Epoxiconazole', '2', 42),
            ]
          },
          {
            'Speckled': [
              ShownPesticide('%25 Tebuconazole', '0.75', 35),
              ShownPesticide(
                  '%52,5 Mancozeb + %3,75 Azoxystrobin + %3,75 Prothioconazole',
                  '2',
                  35),
              ShownPesticide('100 g/l Fluquinconazole', '100', 35),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', '0.8', 42),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  '1',
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', '1', 42),
              ShownPesticide(
                  '100 g/l Prothioconazole + 50 g/l Fluoxastrobin + 40 g/l Bixafen',
                  '1',
                  35),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', '1.25', 56),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', '1', 28),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Flutriafol', '70', 56),
              ShownPesticide(
                  '125 g/l Epoxiconazole + 125 g/l Kresoxim-methyl', '1', 49),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', '1', 35),
              ShownPesticide(
                  '125 g/l Prothioconazole+90 g/l Azoxystrobin', '1', 42),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', '1.5', 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  '75',
                  42),
              ShownPesticide(
                  '150 g/l Prochloraz + 42 g/l Epoxiconazole', '200', 56),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', '75', 42),
              ShownPesticide(
                  '175 g/l Prothioconazole + 125 g/l Difenoconazole', '1', 35),
              ShownPesticide(
                  '175 g/l Prothioconazole + 88 g/l Trifloxystrobin', '1', 35),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 150 g/l Prothioconazole', '1', 56),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '1', 42),
              ShownPesticide(
                  '200 g/l Prothioconazole+50 g/l Proquinazid', '1', 42),
              ShownPesticide('200 g/l Pyraclostrobin', '1.25', 56),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  '0.5',
                  42),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '100', 21),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  '0.8',
                  49),
              ShownPesticide(
                  '225 g/l Tebuconazole + 75 g/l Flutriafol', '1', 49),
              ShownPesticide(
                  '230 g/L Prochloraz+ 41 g/L Tetraconazole', '2', 56),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  '1.75',
                  42),
              ShownPesticide(
                  '240 g/l Cyprodinil + 40 g/l Azoxystrobin', '1.5', 42),
              ShownPesticide('250 g/l Azoxystrobin', '1', 56),
              ShownPesticide(
                  '250 g/l Prochloraz+75 g/l Trifloxystrobin+50 g/l Cyproconazole',
                  '1',
                  42),
              ShownPesticide('250 g/l Prothioconazole', '0.8', 56),
              ShownPesticide(
                  '250 g/l Spiroxamine + 100 g/l Prothioconazole + 50 g/l Bixafen',
                  '1',
                  35),
              ShownPesticide(
                  '267 g/l Prochloraz + 133 g/l Tebuconazole', '1.25', 42),
              ShownPesticide(
                  '280 g/l Azoxystrobin + 120 g/l Prothioconazole', '0.8', 35),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '0.3', 56),
              ShownPesticide(
                  '300 g/l Prochloraz+ 200 g/l Tebuconazole', '1.25', 42),
              ShownPesticide(
                  '300 g/l Spiroxamine + 160 g/l Prothioconazole', '1', 35),
              ShownPesticide(
                  '310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                  '0.6',
                  35),
              ShownPesticide('380 g/l Kalsiyum polisülfür', '3', 0),
              ShownPesticide('450 g/l Prochloraz', '1', 35),
              ShownPesticide('60 g/l Metconazole', '1.5', 35),
              ShownPesticide('62,5 g/l Fluxapyroxad', '1.5', 49),
              ShownPesticide(
                  '62.5 g/L Pyraclostrobin+ 50 g/L Fenpicoxamid', '1.5', 42),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', '1', 56),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 31,25 g/l Epoxiconazole', '2', 56),
            ]
          },
          {
            'Powdery': [
              ShownPesticide(
                  '%52,5 Mancozeb + %3,75 Azoxystrobin + %3,75 Prothioconazole',
                  '2',
                  35),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', '1', 42),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 100 g/l Pyraclostrobin',
                  '1',
                  49),
              ShownPesticide(
                  '100 g/l Mefentrifluconazole + 50 g/l Fluxapyroxad', '1', 42),
              ShownPesticide(
                  '100 g/l Prothioconazole + 50 g/l Fluoxastrobin + 40 g/l Bixafen',
                  '1',
                  35),
              ShownPesticide(
                  '100 g/l Tebuconazole + 60 g/l Azoxystrobin', '1.5', 56),
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', '1', 28),
              ShownPesticide(
                  '125 g/l Epoxiconazole + 125 g/l Kresoxim-methyl', '1', 49),
              ShownPesticide(
                  '125 g/l Prothioconazole + 125 g/l Tebuconazole', '1', 35),
              ShownPesticide(
                  '125 g/l Prothioconazole+90 g/l Azoxystrobin', '1', 42),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', '1.5', 42),
              ShownPesticide(
                  '150 g/l Kresoxim-methyl + 100 g/l Mefentrifluconazole',
                  '0.75',
                  42),
              ShownPesticide(
                  '150 g/l Prochloraz + 42 g/l Epoxiconazole', '2', 56),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', '0.75', 42),
              ShownPesticide(
                  '175 g/l Prothioconazole + 88 g/l Trifloxystrobin', '1', 35),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 150 g/l Prothioconazole', '1', 56),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '1', 42),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '1', 42),
              ShownPesticide(
                  '200 g/l Picoxystrobin + 80 g/l Cyproconazole', '0.5', 35),
              ShownPesticide(
                  '200 g/l Prothioconazole+50 g/l Proquinazid', '0.75', 42),
              ShownPesticide(
                  '200 g/l Pyraclostrobin+40 g/l Fluxapyroxad+30 g/l Mefentrifluconazole',
                  '0.5',
                  42),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '0.75', 56),
              ShownPesticide(
                  '224 g/l Spiroxamine + 148 g/l Tebuconazole + 53 g/l Prothioconazole',
                  '0.8',
                  49),
              ShownPesticide(
                  '225 g/l Tebuconazole + 75 g/l Flutriafol', '1', 49),
              ShownPesticide(
                  '230 g/L Prochloraz+ 41 g/L Tetraconazole', '2', 56),
              ShownPesticide(
                  '233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                  '1.75',
                  42),
              ShownPesticide(
                  '240 g/l Cyprodinil + 40 g/l Azoxystrobin', '1.5', 42),
              ShownPesticide('250 g/l Azoxystrobin', '1', 56),
              ShownPesticide(
                  '250 g/l Prochloraz+75 g/l Trifloxystrobin+50 g/l Cyproconazole',
                  '1',
                  42),
              ShownPesticide('250 g/l Prothioconazole', '0.8', 56),
              ShownPesticide(
                  '250 g/l Spiroxamine + 100 g/l Prothioconazole + 50 g/l Bixafen',
                  '1',
                  35),
              ShownPesticide('250 g/l Tebuconazole', '0.75', 35),
              ShownPesticide(
                  '267 g/l Prochloraz + 133 g/l Tebuconazole', '1.5', 42),
              ShownPesticide(
                  '280 g/l Azoxystrobin + 120 g/l Prothioconazole', '0.8', 35),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '0.3', 56),
              ShownPesticide(
                  '300 g/l Spiroxamine + 160 g/l Prothioconazole', '1', 35),
              ShownPesticide(
                  '310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                  '0.6',
                  35),
              ShownPesticide('450 g/l Prochloraz', '1', 35),
              ShownPesticide('62,5 g/l Fluxapyroxad', '1.5', 49),
              ShownPesticide(
                  '62.5 g/L Pyraclostrobin+ 50 g/L Fenpicoxamid', '1.5', 42),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', '1', 56),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 31,25 g/l Epoxiconazole', '2', 56),
              ShownPesticide('825 g/l Kükürt', '4', 0),
              ShownPesticide(
                  '85 g/l Pyraclostrobin + 62,5 g/l Epoxiconazole', '2', 42),
            ]
          },
        ],
        'Coratia': [
          {
            'Sunn Pest': [
              ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
              ShownPesticide('50g/l Lambda-cihalotrin', '0,16 l / ha', 30),
              ShownPesticide('100 g/l Deltametrin', '0,125 l / ha', 30),
              ShownPesticide('25g/l Deltametrin', '0,3 - 0,5 l / ha', 30),
              ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
            ],
          },
          {
            'Root Worm': [
              ShownPesticide('4g/kg Lambda-cihalotrin', '12 - 15 kg / ha', 56),
              ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
              ShownPesticide('16g/kg Cipermetrin', '12 kg / ha', 56),
              ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
              ShownPesticide('15g/kg Teflutrin', '12,2 kg / ha', 56),
            ],
          },
          {
            'Stink Bug': [
              ShownPesticide('50 g/l Lambda cihalotrin', '0,16 l / ha', 30),
              ShownPesticide('25 g/l Deltametrin', '0,5 l / ha', 30),
            ],
          },
          {
            'European Corn Borer': [
              ShownPesticide(
                  '100g/l Klorantraniliprol+50g/l Lambda cihalotrin    0,3 l/ha',
                  'None',
                  14),
              ShownPesticide(
                  '200g/l Klorantraniliprol', '100 - 150 ml / ha', 7),
              ShownPesticide('25g/ l Deltametrin', '0,3 - 0,5 l / ha', 30),
              ShownPesticide('100g/l Deltametrin', '0,125 l / ha', 30),
              ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
              ShownPesticide(
                  '45g/l Klorantraniliprol+18g/l Abamektin', '0,8 l / ha', 14),
            ],
          },
          {
            'Cereal Weevil': [
              ShownPesticide('80 g/l Cipermetrin', '10 -20ml/480ml vode/1t', 1),
              ShownPesticide('20g/l Cipermetrin', '42-84ml/1t', 1),
              ShownPesticide('25 g/l Deltametrin', '20ml/330ml vode/1t', 2),
              ShownPesticide('50 g/l Lambda-cihalotrin', '16 ml / ha', 30),
              ShownPesticide('1000g/kg Kieselgur', '1,0 - 2,0 kg / t', 0),
            ],
          },
          {
            'Yellow Rust': [
              ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide('30g/l Fluksapiroksad + 200g/l Piraklostrobin',
                  '0,75 - 1,0 l / ha', 35),
              ShownPesticide('333g/l Fluksapiroksad', '150 ml / 100kg', 42),
              ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                  '0,5 - 1,0 l / ha', 42),
              ShownPesticide(
                  '100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
              ShownPesticide('150 g/l Protiokonazol + 125 g/l Izopirazam',
                  '1,0 l / ha', 42),
              ShownPesticide(
                  '100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha',
                  35),
              ShownPesticide(
                  '66,70g/l Fluksapiroksad + 66,70g/l Mefentriflukonazol',
                  '0,75 - 1,125 l / ha',
                  35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroksamin + 148 g/l Tebukonazol + 53 g/l Protiokonazol',
                  '0,7 - 1,0 l / ha',
                  35),
              ShownPesticide(
                  '107g/l Spiroksamin+ 80g/l Trifloksistrobin+ 93,30g/l Protiokonazol',
                  '1,5 l / ha',
                  42),
              ShownPesticide(
                  '130g/l Protiokonazol +65g/l Fluopiram + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('300g/l Protiokonazol', '0,33 - 0,65 l/ ha', 35),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('100g/l Protiokonazol +50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('200 g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l/ ha',
                  42),
              ShownPesticide(
                  '60g/l Metkonazol 1,2 -1,5 l / ha', '1,2 - 1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide('430 g/l Tebuconazol', '0,6 l / ha', 35),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
            ],
          },
          {
            'Brown Rust': [
              ShownPesticide('150 g/l Protiokonazol + 125 g/l Izopirazam',
                  '1,0 l / ha', 42),
              ShownPesticide(
                  '100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
              ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                  '0,5 - 1,0 l / ha', 42),
              ShownPesticide('333g/l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha',
                  35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide(
                  '107g/l Spiroksamin + 80g/l Trifloksistrobin + 93,30g/l Protiokonazol',
                  '1,5 l / ha',
                  42),
              ShownPesticide('120 g/l Azoksistrobin + 200 g/l Tebukonazol',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide(
                  '66,70g/l Fluksapiroksad + 66,70g/l Mefentriflukonazol',
                  '0,75 - 1,125 l / ha',
                  35),
              ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('30g/l Fluksapiroksad + 200g/l Piraklostrobin',
                  '0,75 - 1,0 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroksamin + 148 g/l Tebukonazol + 53 g/l Protiokonazol',
                  '0,7 - 1,0 l/ ha',
                  35),
              ShownPesticide(
                  '130g/l Protiokonazol +65g/l Fluopiram + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l/ ha', 35),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('100g/l Protiokonazol +50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('150 g/l Piraklostrobin + 75 g/l Fluksapiroksad',
                  '0,75 - 1,5 l/ ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide(
                  '100g/l Difenkonazol + 250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('60g/l Metkonazol', '1,2 -1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide(
                  '100g/l Difenkonazol + 250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide('430 g/l Tebuconazol', '0,6 l / ha', 35),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
            ],
          },
          {
            'Speckled Leaf Blotch': [
              ShownPesticide(
                  '250g/l Tebuconazol + 100g/l Difenconazol', '1,0 l / ha', 35),
              ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
              ShownPesticide('430g/l Tebuconazol', '0,6 l / ha', 35),
              ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
              ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
              ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
              ShownPesticide(
                  '333g/l Fluksapiroksad', '150 ml/100kg sjemena', 35),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide('50g/l Fluksapiroksad + 100g/l Mefentrifluconazol',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '66,70g/l Fluksapiroksad + 66,70g/l Mefentriflukonazol',
                  '0,75 - 1,125 l / ha',
                  35),
              ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide(
                  '107g/l Spiroksamin + 80g/l Trifloksistrobin + 93,30g/l Protiokonazol',
                  '1,5 l / ha',
                  42),
              ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                  '0,5 - 1,0 l / ha', 42),
              ShownPesticide(
                  '65g/l Fluopiram + 130g/l Protiokonazol + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('250g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('300g/l Protiokonazol', '0,33 - 0,65 l / ha', 35),
              ShownPesticide('300g/l Spiroksamin + 160g/l Protiokonazol',
                  '1,25 l / ha', 42),
              ShownPesticide('100g/l Protiokonazol + 50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '0,8 l / ha', 56),
              ShownPesticide('200 g/l Piraklostrobin+30 g/l Fluksapiroksad',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroxamin + 148 g/l Tebuconazol + 53 g/l Protioconazol',
                  '0,7 - 1,0 l / ha',
                  35),
              ShownPesticide('250g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('150g/l Piraklostrobin + 75g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '150g/l Spiroksamin + 100g/l Protiokonazol + 75g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide(
                  '100g/l Difenkonazol + 250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('60g/l Metkonazol', '1,2 - 1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
            ],
          },
          {
            'Powdery Mildew': [
              ShownPesticide(
                  '150g/l Protiokonazol + 125g/l Izopirazam', '1l/ha', 42),
              ShownPesticide('333g/l Fluksapiroksad', '150 ml/ha', 42),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide('50g/l Fluksapiroksad + 100g/l Mefentriflukonazol',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  35),
              ShownPesticide('100 g/l Tebukonazol + 60 g/l Azoksistrobin',
                  '150 ml / da', 56),
              ShownPesticide('62,5 g/l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('300g/l Metrafenon', '0,2 - 0,5 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroksamin + 148 g/l Tebukonazol + 53 g/l Protiokonazol',
                  '0,7 - 1,0 l / ha',
                  35),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide(
                  '130g/l Protiokonazol +65g/l Fluopiram + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('300g/l Protiokonazol', '0,33 - 0,65 l / ha', 35),
              ShownPesticide('100g/l Protiokonazol + 50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide(
                  '93,30 g/l Protiokonazol + 80 g/l Trifloksistrobin + 107g/l Spiroksamin',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('150g/l Piraklostrobin + 75g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '100g/l Piraklostrobin + 100g/l Mefentriflukonazol',
                  '0,75 - 1,0 l / ha',
                  35),
              ShownPesticide('60g/l Metkonazol', '1,2 - 1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol', '1,25 l / ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Protiokonazol + 75g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('430 g/l Tebukonazol', '0,6 l / ha', 35),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
              ShownPesticide('300 g/l Spiroksamin + 160 g/l Protiokonazol',
                  '1,25 l / ha', 42),
            ],
          },
        ],
        'Italy': [
          {
            'Speckled Leaf Blotch': [
              ShownPesticide('Tebuconazolo 25%', '1 lt/ha', 28),
              ShownPesticide('Bixafen 5%- tebuconazolo 16,8%', '1,5 lt/ha', 60),
              ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 35),
              ShownPesticide('Tebuconazolo 25%', '2,5 lt /ha', 35),
              ShownPesticide('Metconazolo 9%', '1 Lt/ha', 35),
              ShownPesticide('''Bixafen puro 6,4 %
Fluopyram puro 6,4 %
Protioconazolo puro 12,7%''', '1,5 lt/ha', 60),
              ShownPesticide(
                  'protioconazolo 16,2%-tebuconazolo 8,1%', '1lt/ha', 35),
              ShownPesticide(
                  'Tetraconazolo 3,9% Procloraz 21,9%', '1,96 lt/ha', 60),
              ShownPesticide(
                  'azoxystrobin 11,03%-tebuconazolo 18,4%', '1,25 lt/ha', 35),
              ShownPesticide('Procloraz puro 39,7%', '1 lt/ha', 60),
              ShownPesticide('Pyraclostrobin 23,6%', '1 lt/ha', 35),
              ShownPesticide(
                  'Azoxystrobin 18,22%- Ciproconazolo 7,29%', '1 lt/ha', 60),
              ShownPesticide('Tetraconazolo puro 3,85 %', '3 lt/ha', 60),
              ShownPesticide('Protioconazolo 25%', '0,8 lt/ha', 60),
              ShownPesticide(
                  'Benzovindiflupyr 7,43%-Protioconazolo14,9%', '1 lt/ha', 60),
              ShownPesticide('Benzovindiflupyr 10,2%', '0,75 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,5% Zolfo 70%', '5,5 kg/ha', 0),
              ShownPesticide('Flutriafol  11.8 %', '1 lt/ha', 60),
              ShownPesticide(
                  'Azoxystrobin 11,03%-Tebuconazolo 18,4%', '1,25 lt/ha', 35),
              ShownPesticide('Laminarina 3,5 g', '1 lt/ha', 60),
              ShownPesticide(
                  'Fluxapyroxad 7,28%-Pyraclostrobin 14,56%', '1,5 lt/ha', 35),
              ShownPesticide(
                  'spiroxamina 30,6%-protioconazolo 16,3%', '1,25 lt/ha', 42),
              ShownPesticide('Mefentrifluconazolo 9,78%- Pyraclostrobin 9,78%',
                  '1,5 lt/ha', 35),
              ShownPesticide(
                  'Bromuconazolo 15,86%-tebuconazolo 10,17%', '1,2 lt/ha', 60),
              ShownPesticide('''Isopyrazam 11,2% 
Protioconazolo 13,5%''', '1 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam puro 9% Azoxystrobin puro 9%  Ciproconazolo puro 7,2%',
                  '1 lt/ha',
                  60),
              ShownPesticide('''Protioconazolo 5,4%
Spiroxamina 22,9% 
Tebuconazolo 15,1%''', '1 lt/ha', 60),
              ShownPesticide(
                  'Difenoconazolo 9,93% -Tebuconazolo 24,83%', '1 lt/ha', 60),
              ShownPesticide('Bromuconazolo puro 27,03 %', '1 lt/ha', 60),
            ]
          },
          {
            'Brown Rust': [
              ShownPesticide('Tebuconazolo 25%', '1 Kg/ha', 28),
              ShownPesticide('Bixafen 5%  Tebuconazolo 16,8%', '1,5 lt/ha', 60),
              ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 35),
              ShownPesticide('Tebuconazolo puro 40,18%', '0,5 lt/ha', 35),
              ShownPesticide('Metconazolo 9%', '1 lt/ha', 35),
              ShownPesticide(
                  'Bixafen puro 6,4 % Fluopyram puro 6,4 % Protioconazolo puro 12,7%',
                  '1,5 lt/ha',
                  60),
              ShownPesticide(
                  'protioconazolo 16,2% tebuconazolo 8,1%', '1 lt/ha', 60),
              ShownPesticide(
                  'Tetraconazolo  3,9% Procloraz  21,9%', '1,96 lt/ha', 60),
              ShownPesticide(
                  'azoxystrobin 11,03%  tebuconazolo 18,4%', '1,25 lt/ha', 35),
              ShownPesticide('Protioconazolo puro 25,38%', '0,8 lt/ha', 35),
              ShownPesticide('Pyraclostrobin 23,6%', '0,25 lt/ha', 35),
              ShownPesticide(
                  'azoxystrobin 18,22% ciproconazolo 7,29%', '1 lt/ha', 42),
              ShownPesticide('Tetraconazolo puro 3,85 %', '3 lt/ha', 60),
              ShownPesticide('Benzovindiflupyr  10,2 %', '0,75 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,5% Zolfo 70%', '5,5 kg/ha', 60),
              ShownPesticide('Flutriafol 11.8 %', '1 lt/ha', 60),
              ShownPesticide('Laminarina 3,5 g', '1 lt/ha', 0),
              ShownPesticide(
                  'Fluxapyroxad 7,28%-Pyraclostrobin 14,56%', '1,5 lt/ha', 35),
              ShownPesticide(
                  'spiroxamina 30,6% protioconazolo16,3%', '1,25 lt/ha', 42),
              ShownPesticide('mefentrifuconazolo 9,78% pyraclostrobin 9,78%',
                  '1,5 lt/ha', 35),
              ShownPesticide(
                  'Isopyrazam puro 12,5%  Ciproconazolo 8 %', '1 lt/ha', 60),
              ShownPesticide(
                  'Bromuconazolo 15,86% tebuconazolo 10,17 %', '1,2 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam 11,2% Protioconazolo 13,5%', '1 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam puro 9%  Azoxystrobin puro 9% Ciproconazolo puro 7,2%',
                  '1 lt/ha',
                  60),
              ShownPesticide(
                  'Protioconazolo 5,4% Spiroxamina 22,9%  Tebuconazolo 15,1%',
                  '1 lt/ha',
                  60),
              ShownPesticide('Procloraz 39,8%', '1 lt/ha', 35),
              ShownPesticide(
                  'Difenoconazolo 9,93% Tebuconazolo 24,83%', '1 lt/ha', 60),
              ShownPesticide('Bromuconazolo puro 27,03 %', '1 lt/ha', 60),
              ShownPesticide('Zolfo (esente da Selenio) 80%', '8 kg/ha', 5),
            ]
          },
          {
            'Yellow Rust': [
              ShownPesticide('Tebuconazolo 25%', '1 Kg/ha', 28),
              ShownPesticide('Bixafen 5%  Tebuconazolo 16,8%', '1,5 lt/ha', 60),
              ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 35),
              ShownPesticide('Tebuconazolo puro 40,18%', '0,5 lt/ha', 35),
              ShownPesticide('Metconazolo 9%', '1 lt/ha', 35),
              ShownPesticide(
                  'Bixafen puro 6,4 % Fluopyram puro 6,4 % Protioconazolo puro 12,7%',
                  '1,5 lt/ha',
                  60),
              ShownPesticide(
                  'protioconazolo 16,2% tebuconazolo 8,1%', '1 lt/ha', 60),
              ShownPesticide(
                  'Tetraconazolo  3,9% Procloraz  21,9%', '1,96 lt/ha', 60),
              ShownPesticide(
                  'azoxystrobin 11,03%  tebuconazolo 18,4%', '1,25 lt/ha', 35),
              ShownPesticide('Protioconazolo puro 25,38%', '0,8 lt/ha', 35),
              ShownPesticide('Pyraclostrobin 23,6%', '0,25 lt/ha', 35),
              ShownPesticide(
                  'azoxystrobin 18,22% ciproconazolo 7,29%', '1 lt/ha', 42),
              ShownPesticide('Tetraconazolo puro 3,85 %', '3 lt/ha', 60),
              ShownPesticide('Benzovindiflupyr  10,2 %', '0,75 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,5% Zolfo 70%', '5,5 kg/ha', 60),
              ShownPesticide('Flutriafol 11.8 %', '1 lt/ha', 60),
              ShownPesticide('Laminarina 3,5 g', '1 lt/ha', 0),
              ShownPesticide(
                  'Fluxapyroxad 7,28%-Pyraclostrobin 14,56%', '1,5 lt/ha', 35),
              ShownPesticide(
                  'spiroxamina 30,6% protioconazolo16,3%', '1,25 lt/ha', 42),
              ShownPesticide('mefentrifuconazolo 9,78% pyraclostrobin 9,78%',
                  '1,5 lt/ha', 35),
              ShownPesticide(
                  'Isopyrazam puro 12,5%  Ciproconazolo 8 %', '1 lt/ha', 60),
              ShownPesticide(
                  'Bromuconazolo 15,86% tebuconazolo 10,17 %', '1,2 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam 11,2% Protioconazolo 13,5%', '1 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam puro 9%  Azoxystrobin puro 9% Ciproconazolo puro 7,2%',
                  '1 lt/ha',
                  60),
              ShownPesticide(
                  'Protioconazolo 5,4% Spiroxamina 22,9%  Tebuconazolo 15,1%',
                  '1 lt/ha',
                  60),
              ShownPesticide('Procloraz 39,8%', '1 lt/ha', 35),
              ShownPesticide(
                  'Difenoconazolo 9,93% Tebuconazolo 24,83%', '1 lt/ha', 60),
              ShownPesticide('Bromuconazolo puro 27,03 %', '1 lt/ha', 60),
              ShownPesticide('Zolfo (esente da Selenio) 80%', '8 kg/ha', 5),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide(
                  'tebuconazolo12,3% procloraz 24,61%', '1,7 lt/ha', 28),
              ShownPesticide('Tebuconazolo 25%', '1 Kg/ha', 28),
              ShownPesticide('Bixafen 5%  Tebuconazolo 16,8%', '1,5 lt/ha', 60),
              ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 35),
              ShownPesticide('Tebuconazolo puro 40,18%', '0,5 lt/ha', 35),
              ShownPesticide('Metconazolo 9%', '1 lt/ha', 35),
              ShownPesticide(
                  'Bixafen puro 6,4 % Fluopyram puro 6,4 % Protioconazolo puro 12,7%',
                  '1,5 lt/ha',
                  60),
              ShownPesticide(
                  'protioconazolo 16,2% tebuconazolo 8,1%', '1 lt/ha', 60),
              ShownPesticide(
                  'Tetraconazolo  3,9% Procloraz  21,9%', '1,96 lt/ha', 60),
              ShownPesticide(
                  'azoxystrobin 11,03%  tebuconazolo 18,4%', '1,25 lt/ha', 35),
              ShownPesticide('Protioconazolo puro 25,38%', '0,8 lt/ha', 35),
              ShownPesticide('Pyraclostrobin 23,6%', '0,25 lt/ha', 35),
              ShownPesticide(
                  'azoxystrobin 18,22% ciproconazolo 7,29%', '1 lt/ha', 42),
              ShownPesticide('Tetraconazolo puro 3,85 %', '3 lt/ha', 60),
              ShownPesticide('Benzovindiflupyr  10,2 %', '0,75 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,5% Zolfo 70%', '5,5 kg/ha', 60),
              ShownPesticide('Flutriafol 11.8 %', '1 lt/ha', 60),
              ShownPesticide('Laminarina 3,5 g', '1 lt/ha', 0),
              ShownPesticide(
                  'Fluxapyroxad 7,28%-Pyraclostrobin 14,56%', '1,5 lt/ha', 35),
              ShownPesticide(
                  'spiroxamina 30,6% protioconazolo16,3%', '1,25 lt/ha', 42),
              ShownPesticide('mefentrifuconazolo 9,78% pyraclostrobin 9,78%',
                  '1,5 lt/ha', 35),
              ShownPesticide(
                  'Isopyrazam puro 12,5%  Ciproconazolo 8 %', '1 lt/ha', 60),
              ShownPesticide(
                  'Bromuconazolo 15,86% tebuconazolo 10,17 %', '1,2 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam 11,2% Protioconazolo 13,5%', '1 lt/ha', 60),
              ShownPesticide(
                  'Isopyrazam puro 9%  Azoxystrobin puro 9% Ciproconazolo puro 7,2%',
                  '1 lt/ha',
                  60),
              ShownPesticide(
                  'Protioconazolo 5,4% Spiroxamina 22,9%  Tebuconazolo 15,1%',
                  '1 lt/ha',
                  60),
              ShownPesticide('Procloraz 39,8%', '1 lt/ha', 35),
              ShownPesticide(
                  'Difenoconazolo 9,93% Tebuconazolo 24,83%', '1 lt/ha', 60),
              ShownPesticide('Bromuconazolo puro 27,03 %', '1 lt/ha', 60),
              ShownPesticide('Zolfo (esente da Selenio) 80%', '8 kg/ha', 5),
            ]
          },
          {
            'Stink Bug': [
              ShownPesticide('Deltametrina 2,81 %', '50 ml/hl', 30),
              ShownPesticide('Acetamiprid 4,67%', '1 lt/ha', 28),
              ShownPesticide('Tau-fluvalinate 21,4%', '0,2 lt/ha', 30),
              ShownPesticide('Lambda-cialotrina 9,48%', '0,2 lt/ha', 40),
            ]
          },
          {
            'Cereal Weevil': [
              ShownPesticide('Deltametrina 2,81 %', '50 ml/hl', 30),
              ShownPesticide('Acetamiprid 4,67%', '1 lt/ha', 28),
              ShownPesticide('Tau-fluvalinate 21,4%', '0,2 lt/ha', 30),
              ShownPesticide('Lambda-cialotrina 9,48%', '0,2 lt/ha', 40),
            ]
          },
          {
            'Pachytychius Hordei': [
              ShownPesticide('Deltametrina 0,2%', '0,25 Kg/ton', 90),
              ShownPesticide('Deltametrina 2,66% piperonilbutossido 23,66 %',
                  '10 ml/ton', 180),
              ShownPesticide('Deltametrina 0,66% piperonilbutossido 6,14 %',
                  '42 ml/ton', 180),
            ]
          },
        ],
        'Romania': [
          {
            'Sunn Pest': [
              ShownPesticide('VANTEX 60 CS/ NEXIDE 60 CS', '80 ml/ha', 0),
              ShownPesticide('KAISO SORBIE 5 EG ', '0,15 KG/HA', 28),
              ShownPesticide('MAVRIK 2 F/ EVURE', '0,2 L/HA', 0),
              ShownPesticide('KARATE ZEON /NINJA ', '.,15 L/HA', 0),
              ShownPesticide('acetamiprid 200 g/l', '100 g/ha', 7),
              ShownPesticide('esfenvalerat 50 ml/l', '200 ml/ha', 7),
              ShownPesticide('deltametrin 250 g/kg', '30 g/ha', 30),
              ShownPesticide('alfa-cipermetrin 50 g/l', '200 ml/ha', 30),
              ShownPesticide('lambda - cihalotrin 50 g/l', '150 ml/ha', 30),
              ShownPesticide('cipermetrin 250 g/l', '60 ml/ha', 30),
              ShownPesticide('Tau-fluvalinat 240 g/litru', '200 ml/ha', 30),
            ]
          },
          {
            'Stink Bug': [
              ShownPesticide('VANTEX 60 CS/ NEXIDE 60 CS', '80 ml/ha', 0),
              ShownPesticide('KAISO SORBIE 5 EG ', '0,15 KG/HA', 28),
              ShownPesticide('MAVRIK 2 F/ EVURE', '0,2 L/HA', 0),
              ShownPesticide('KARATE ZEON /NINJA ', '.,15 L/HA', 0),
              ShownPesticide('acetamiprid 200 g/l', '100 g/ha', 7),
              ShownPesticide('esfenvalerat 50 ml/l', '200 ml/ha', 7),
              ShownPesticide('deltametrin 250 g/kg', '30 g/ha', 30),
              ShownPesticide('alfa-cipermetrin 50 g/l', '200 ml/ha', 30),
              ShownPesticide('lambda - cihalotrin 50 g/l', '150 ml/ha', 30),
              ShownPesticide('cipermetrin 250 g/l', '60 ml/ha', 30),
              ShownPesticide('Tau-fluvalinat 240 g/litru', '200 ml/ha', 30),
            ]
          },
          {
            'Yellow Rust': [
              ShownPesticide('CORRIB (300g/L procloraz+ 75g/L epoxiconazol',
                  '1,4L/ha', 21),
              ShownPesticide(
                  'ZOXIS 250 SC 250 g/L azoxistrobin', '1,0 L/ha', 21),
              ShownPesticide(
                  'ZAKEO XTRA 200g/L azoxistrobin+80 g/L ciproconazol',
                  '0,5L/ha',
                  21),
              ShownPesticide('300 g/L protioconazol', '500 ml/ha', 35),
              ShownPesticide(
                  '75 g/l benzovindiflupir (Solatenol), 150 g/l protioconazol',
                  '1000 ml/ha',
                  35),
              ShownPesticide('250 g/l azoxistrobin', '1000 ml/ha', 35),
              ShownPesticide('100 g/l difenoconazol, 250 g/l tebuconazol',
                  '1000 ml/ha', 35),
              ShownPesticide(
                  'protioconazol 150 g/l+bixafen 75 g/l', '1000 ml/ha', 21),
              ShownPesticide(
                  'protioconazol 53 g/L + spiroxamină 224 g/L + tebuconazol 148 g/L',
                  '600 ml/ha',
                  35),
              ShownPesticide('trifloxistrobin 100 g/l + tebuconazol 200 g/l',
                  '1000 ml/ha', 21),
              ShownPesticide('protioconazol 125 g/l + tebuconazol 125 g/l',
                  '750 ml/ha', 35),
              ShownPesticide(
                  'bixafen 50 g/l + tebuconazol 166 g/l', '1000 ml/ha', 21),
              ShownPesticide(
                  '200 g/l Piraclostrobin, 30 g/l Xemium® (fluxapiroxad)',
                  '750 ml/ha',
                  21),
              ShownPesticide(
                  '75 g/l Xemium® (fluxapiroxad), 150 g/l Piraclostrobin',
                  '750 ml/ha',
                  21),
              ShownPesticide('200 g/l Piraclostrobin', '1000 ml/ha', 21),
              ShownPesticide(
                  '100 g/l Revysol® (mefentrifluconazol), 100 g/l Piraclostrobin',
                  '1000 ml/ha',
                  21),
            ]
          },
          {
            'Brown Rust': [
              ShownPesticide(
                  'PRIAXOR EC (75g/L fluxapiroxad+150g/L piraclostrobin)',
                  '0,75-1,0 L/ha',
                  21),
              ShownPesticide(
                  'PROTECTOR SUPER 250 EC 250 g/L tebuconazol', '0,5 L/ha', 21),
              ShownPesticide(
                  'ZAKEO XTRA 200g/L azoxistrobin+80 g/L ciproconazol',
                  '0,5 L/ha',
                  21),
              ShownPesticide(
                  '75 g/l benzovindiflupir (Solatenol), 150 g/l protioconazol',
                  '500 ml/ha',
                  35),
              ShownPesticide('250 g/l azoxistrobin', '1000 ml/ha', 35),
              ShownPesticide('100 g/l difenoconazol, 250 g/l tebuconazol',
                  '1000 ml/ha', 35),
              ShownPesticide(
                  'protioconazol 150 g/l+bixafen 75 g/l', '1000 ml/ha', 35),
              ShownPesticide(
                  'protioconazol 53 g/L + spiroxamină 224 g/L + tebuconazol 148 g/L',
                  '1000 ml/ha',
                  21),
              ShownPesticide('trifloxistrobin 100 g/l + tebuconazol 200 g/l',
                  '600 ml/ha', 35),
              ShownPesticide('protioconazol 125 g/l + tebuconazol 125 g/l',
                  '1000 ml/ha', 21),
              ShownPesticide(
                  'bixafen 50 g/l + tebuconazol 166 g/l', '750 ml/ha', 35),
              ShownPesticide(
                  '200 g/l Piraclostrobin, 30 g/l Xemium® (fluxapiroxad)',
                  '1000 ml/ha',
                  21),
              ShownPesticide(
                  '75 g/l Xemium® (fluxapiroxad), 150 g/l Piraclostrobin',
                  '750 ml/ha',
                  21),
              ShownPesticide('200 g/l Piraclostrobin', '750 ml/ha', 21),
              ShownPesticide(
                  '100 g/l Revysol® (mefentrifluconazol), 100 g/l Piraclostrobin',
                  '1000 ml/ha',
                  21),
            ]
          },
          {
            'Speckled Leaf Blotch': [
              ShownPesticide(
                  'PRIAXOR EC (75g/L fluxapiroxad+150g/L piraclostrobin)',
                  '0,75-1,0 L/ha',
                  21),
              ShownPesticide(
                  'PROTECTOR SUPER 250 EC 250 g/L tebuconazol', '0,5 L/ha', 21),
              ShownPesticide(
                  'ZAKEO XTRA 200g/L azoxistrobin+80 g/L ciproconazol',
                  '0,5 L/ha',
                  21),
              ShownPesticide('300 g/L protioconazol', '500 ml/ha', 35),
              ShownPesticide(
                  '75 g/l benzovindiflupir (Solatenol), 150 g/l protioconazol',
                  '1000 ml/ha',
                  35),
              ShownPesticide('250 g/l azoxistrobin', '1000 ml/ha', 35),
              ShownPesticide('100 g/l difenoconazol, 250 g/l tebuconazol',
                  '1000 ml/ha', 35),
              ShownPesticide(
                  'protioconazol 150 g/l+bixafen 75 g/l', '1000 ml/ha', 21),
              ShownPesticide(
                  'protioconazol 53 g/L + spiroxamină 224 g/L + tebuconazol 148 g/L',
                  '600 ml/ha',
                  35),
              ShownPesticide('trifloxistrobin 100 g/l + tebuconazol 200 g/l',
                  '1000 ml/ha', 21),
              ShownPesticide('protioconazol 125 g/l + tebuconazol 125 g/l',
                  '750 ml/ha', 35),
              ShownPesticide(
                  'bixafen 50 g/l + tebuconazol 166 g/l', '1000 ml/ha', 21),
              ShownPesticide(
                  '200 g/l Piraclostrobin, 30 g/l Xemium® (fluxapiroxad)',
                  '750 ml/ha',
                  21),
              ShownPesticide(
                  '75 g/l Xemium® (fluxapiroxad), 150 g/l Piraclostrobin',
                  '750 ml/ha',
                  21),
              ShownPesticide('200 g/l Piraclostrobin', '1000 ml/ha', 21),
              ShownPesticide(
                  '100 g/l Revysol® (mefentrifluconazol), 100 g/l Piraclostrobin',
                  '1000 ml/ha',
                  21),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide('SULBARI 800g/kg sulf ', '8,0 kg/ha', 21),
              ShownPesticide(
                  'PROTECTOR SUPER 250 EC 250 g/L tebuconazol', '0,5 L/ha', 21),
              ShownPesticide(
                  'ZAKEO XTRA 200g/L azoxistrobin+80 g/L ciproconazol',
                  '0,5 L/ha',
                  21),
              ShownPesticide('300 g/L protioconazol', '500 ml/ha', 35),
              ShownPesticide(
                  '75 g/l benzovindiflupir (Solatenol), 150 g/l protioconazol',
                  '1000 ml/ha',
                  35),
              ShownPesticide('250 g/l azoxistrobin', '1000 ml/ha', 35),
              ShownPesticide('100 g/l difenoconazol, 250 g/l tebuconazol',
                  '1000 ml/ha', 35),
              ShownPesticide(
                  'protioconazol 150 g/l+bixafen 75 g/l', '1000 ml/ha', 21),
              ShownPesticide(
                  'protioconazol 53 g/L + spiroxamină 224 g/L + tebuconazol 148 g/L',
                  '600 ml/ha',
                  35),
              ShownPesticide('trifloxistrobin 100 g/l + tebuconazol 200 g/l',
                  '1000 ml/ha', 21),
              ShownPesticide('protioconazol 125 g/l + tebuconazol 125 g/l',
                  '750 ml/ha', 35),
              ShownPesticide(
                  'bixafen 50 g/l + tebuconazol 166 g/l', '1000 ml/ha', 21),
              ShownPesticide(
                  '200 g/l Piraclostrobin, 30 g/l Xemium® (fluxapiroxad)',
                  '750 ml/ha',
                  21),
              ShownPesticide(
                  '75 g/l Xemium® (fluxapiroxad), 150 g/l Piraclostrobin',
                  '750 ml/ha',
                  21),
              ShownPesticide('200 g/l Piraclostrobin', '1000 ml/ha', 21),
              ShownPesticide(
                  '100 g/l Revysol® (mefentrifluconazol), 100 g/l Piraclostrobin',
                  '1000 ml/ha',
                  21),
            ]
          },
        ],
        'Germany': [
          {
            'Eyespot Disease': [
              ShownPesticide(
                  'Prothioconazol', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'Prothioconazol', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'Prothioconazol', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'Prothioconazol', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'Prothioconazol', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide('prothioconazole + fluopyram + bixafen',
                  '1.5 l/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('prothioconazole + fluopyram + bixafen',
                  '1.2l/ha in 100 to 400 l/ha of water', 0),
            ]
          },
          {
            'Annual Dicot Weeds': [
              ShownPesticide(
                  'metsulfuron', '20g/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'metsulfuron', '30g/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'metsulfuron', '20g/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('metsulfuron + thifensulfuron',
                  '70g/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('metsulfuron + thifensulfuron',
                  '60g/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('Aclonifen + Diflufenican + Flufenacet',
                  '1l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'pendimethalin', '4l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'pendimethalin', '4l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'pendimethalin', '4l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('metsulfuron + diflufenican',
                  '65g/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('metsulfuron + diflufenican',
                  '100g/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('metsulfuron + diflufenican',
                  '100g/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('MCPA + clopyralid + fluroxypyr',
                  '4l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'Trinexapac', '3l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'Trinexapac', '3.75l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('Bifenox + Florasulam',
                  '1.2l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('Bifenox + Florasulam',
                  '1l/ha in 200 to 400 l/ha of water', 0),
            ]
          },
          {
            'Stem Strengthening': [
              ShownPesticide(
                  'chlormequat', '2l/ha in 200 to 600 l/ha of water', 42),
              ShownPesticide(
                  'chlormequat', '1.3l/ha in 200 to 600 l/ha of water', 63),
              ShownPesticide(
                  'chlormequat', '2l/ha in 200 to 600 l/ha of water', 63),
              ShownPesticide(
                  'chlormequat', '2l/ha in 200 to 600 l/ha of water', 63),
              ShownPesticide(
                  'chlormequat', '2.1l/ha in 200 to 600 l/ha of water', 63),
              ShownPesticide('chlormequat + trinexapac',
                  '2l/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('chlormequat + trinexapac',
                  '2l/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('chlormequat + trinexapac',
                  '2l/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('chlormequat + trinexapac',
                  '2l/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('chlormequat + trinexapac',
                  '2l/ha in 100 to 400 l/ha of water', 0),
            ]
          },
          {
            'Common Wind stalk Annual Bluegrass': [
              ShownPesticide('pendimethalin + diflufenican',
                  '2.5l/ha in 200 to 400 l/ha of water', 0),
            ]
          },
          {
            'Yellow Rust': [
              ShownPesticide(
                  'prothioconazole', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'prothioconazole', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'prothioconazole', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'prothioconazole', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'tetraconazoles', '1.25l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'metconazole', '1.5 l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('prothioconazole + fluopyram + bixafen',
                  '1.5 l/ha in 100 to 400 l/ha of water', 0),
            ]
          },
          {
            'Brown Rust': [
              ShownPesticide(
                  'prothioconazole', '0.8l/ha in 100 to 300 l/ha of water', 0),
              ShownPesticide(
                  'tetraconazoles', '1.25l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'metconazole', '1.5 l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide('prothioconazole + fluopyram + bixafen',
                  '1.5 l/ha in 100 to 400 l/ha of water', 0),
              ShownPesticide('prothioconazole + fluopyram + bixafen',
                  '1.5 l/ha in 100 to 400 l/ha of water', 0),
            ]
          },
          {
            'Rhynchosporium Secalis': [
              ShownPesticide(
                  'metconazole', '1.5 l/ha in 200 to 400 l/ha of water', 0),
              ShownPesticide(
                  'metconazole', '1.5 l/ha in 200 to 400 l/ha of water', 0),
            ]
          },
        ],
        'English': [],
      },
      // Only italy remains, germany had only one corn crop
      'Corn': {
        'Turkey': [
          {
            'Leaf Blight': [
              ShownPesticide(
                  '125 g/l Azoxystrobin + 125 g/l Difenoconazole', '1', 28),
              ShownPesticide(
                  '133 g/l Pyraclostrobin + 50 g/l Epoxiconazole', '1.5', 42),
              ShownPesticide(
                  '150 g/L Pyraclostrobin+ 75 g/L Fluxapyroxad', '0.75', 0),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '0.5', 14),
              ShownPesticide('200 g/l Pyraclostrobin', '1', 49),
              ShownPesticide(
                  '85 g/l Pyraclostrobin + 62,5 g/l Epoxiconazole', '2', 14),
            ]
          },
          {
            'Two-Spotted Spider Mite': [
              ShownPesticide('110 g/l Etoxazole', '0.25', 1),
            ]
          },
          {
            'Mediterranean Corn Borer': [
              ShownPesticide('%25 Spinetoram', '0.2', 14),
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.4', 14),
              ShownPesticide(
                  '100 g/l Chlorantraniliprole + 50 g/l Lambda-cyhalothrin',
                  '0.25',
                  7),
              ShownPesticide('125 g/l Beta-cyfluthrin', '0.15', 14),
              ShownPesticide('150 g/l Diflubenzuron', '1.2', 21),
              ShownPesticide('150 g/l Indoxacarb', '0.3', 3),
              ShownPesticide('150 g/l Indoxacarb methyl', '0.3', 3),
              ShownPesticide('200 g/l Esfenvalerate', '0.3', 21),
              ShownPesticide('222 g/l Flubendiamide', '0.3', 0),
              ShownPesticide('25 g/l Deltamethrin', '50', 3),
              ShownPesticide('250 g/l Cypermethrin', '0.3', 7),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '0.55', 7),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.3', 14),
              ShownPesticide('60 g/l Gamma-cyhalothrin', '0.125', 21),
            ]
          },
          {
            'European Maize Borer': [
              ShownPesticide('%25 Spinetoram', '200', 14),
              ShownPesticide(
                  '%10 Acetamiprid + %3 Lambda-cyhalothrin', '200', 21),
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.4', 14),
              ShownPesticide(
                  '100 g/l Chlorantraniliprole + 50 g/l Lambda-cyhalothrin',
                  '0.25',
                  7),
              ShownPesticide('100 g/l Zeta-cypermethrin', '0.4', 7),
              ShownPesticide('125 g/l Beta-cyfluthrin', '0.15', 14),
              ShownPesticide('125 g/l Beta-cyfluthrin', '0.3', 3),
              ShownPesticide('150 g/l Indoxacarb methyl', '0.3', 3),
              ShownPesticide('200 g/l Chlorantraniliprole', '0.35', 21),
              ShownPesticide('200 g/l Cypermethrin', '0.375', 7),
              ShownPesticide('200 g/l Esfenvalerate', '0.3', 21),
              ShownPesticide('222 g/l Flubendiamide', '0.3', 0),
              ShownPesticide('25 g/l Beta-cyfluthrin', '0.75', 14),
              ShownPesticide('250 g/l Cypermethrin', '0.3', 7),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '0.55', 7),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.3', 14),
            ]
          },
          {
            'Cutworm': [
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.5', 14),
            ]
          },
          {
            'Corn Leaf Aphid': [
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.75', 14),
            ]
          },
          {
            'Wire Worm': [
              ShownPesticide('%25 Malathion', '5', 7),
              ShownPesticide('%30 Indoxacarb', '0.125', 3),
              ShownPesticide('100 g/l Novaluron', '0.2', 49),
              ShownPesticide('150 g/l Teflubenzuron', '0.4', 14),
              ShownPesticide('190 g/l Malathion', '6', 7),
              ShownPesticide('50 g/l Lufenuron', '0.2', 35),
              ShownPesticide('650 g/l Malathion', '2', 7),
            ]
          },
          {
            'Beet Army Worm': [
              ShownPesticide('190 g/l Malathion', '6', 7),
              ShownPesticide('%25 Malathion', '5', 7),
              ShownPesticide('%30 Indoxacarb', '0.125', 3),
              ShownPesticide('100 g/l Novaluron', '0.2', 49),
              ShownPesticide('150 g/l Teflubenzuron', '0.4', 14),
              ShownPesticide('190 g/l Malathion', '6', 7),
              ShownPesticide('50 g/l Lufenuron', '0.2', 35),
              ShownPesticide('650 g/l Malathion', '2', 7),
            ]
          }
        ],
        'Coratia': [
          {
            'Sunn Pest': [
              ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
              ShownPesticide('50g/l Lambda-cihalotrin', '0,16 l / ha', 30),
              ShownPesticide('100 g/l Deltametrin', '0,125 l / ha', 30),
              ShownPesticide('25g/l Deltametrin', '0,3 - 0,5 l / ha', 30),
              ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
            ],
          },
          {
            'Western Corn': [
              ShownPesticide(
                  '100g/l Klorantraniliprol+50g/l Lambdacihalotrim        0,3 l / ha',
                  '0,3 l / ha',
                  14),
              ShownPesticide('8g/kg Cipermetrin', '12 kg / ha', 56),
              ShownPesticide('100g/l Deltametrin', '0,125 l / ha', 30),
              ShownPesticide('5g/ kg Teflutrin', '12 - 16 kg / ha', 56),
              ShownPesticide('4g/kg Lambda-cihalotrin', '12 - 15 kg / ha', 56),
            ],
          },
          {
            'Root Worm': [
              ShownPesticide('4g/kg Lambda-cihalotrin', '12 - 15 kg / ha', 56),
              ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
              ShownPesticide('16g/kg Cipermetrin', '12 kg / ha', 56),
              ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
              ShownPesticide('15g/kg Teflutrin', '12,2 kg / ha', 56),
            ],
          },
          {
            'Stink Bug': [
              ShownPesticide('50 g/l Lambda cihalotrin', '0,16 l / ha', 30),
              ShownPesticide('25 g/l Deltametrin', '0,5 l / ha', 30),
            ],
          },
          {
            'European Corn Borer': [
              ShownPesticide(
                  '100g/l Klorantraniliprol+50g/l Lambda cihalotrin    0,3 l/ha',
                  'None',
                  14),
              ShownPesticide(
                  '200g/l Klorantraniliprol', '100 - 150 ml / ha', 7),
              ShownPesticide('25g/ l Deltametrin', '0,3 - 0,5 l / ha', 30),
              ShownPesticide('100g/l Deltametrin', '0,125 l / ha', 30),
              ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
              ShownPesticide(
                  '45g/l Klorantraniliprol+18g/l Abamektin', '0,8 l / ha', 14),
            ],
          },
          {
            'Cereal Weevil': [
              ShownPesticide('80 g/l Cipermetrin', '10 -20ml/480ml vode/1t', 1),
              ShownPesticide('20g/l Cipermetrin', '42-84ml/1t', 1),
              ShownPesticide('25 g/l Deltametrin', '20ml/330ml vode/1t', 2),
              ShownPesticide('50 g/l Lambda-cihalotrin', '16 ml / ha', 30),
              ShownPesticide('1000g/kg Kieselgur', '1,0 - 2,0 kg / t', 0),
            ],
          },
          {
            'Yellow Rust': [
              ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide('30g/l Fluksapiroksad + 200g/l Piraklostrobin',
                  '0,75 - 1,0 l / ha', 35),
              ShownPesticide('333g/l Fluksapiroksad', '150 ml / 100kg', 42),
              ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                  '0,5 - 1,0 l / ha', 42),
              ShownPesticide(
                  '100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
              ShownPesticide('150 g/l Protiokonazol + 125 g/l Izopirazam',
                  '1,0 l / ha', 42),
              ShownPesticide(
                  '100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha',
                  35),
              ShownPesticide(
                  '66,70g/l Fluksapiroksad + 66,70g/l Mefentriflukonazol',
                  '0,75 - 1,125 l / ha',
                  35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroksamin + 148 g/l Tebukonazol + 53 g/l Protiokonazol',
                  '0,7 - 1,0 l / ha',
                  35),
              ShownPesticide(
                  '107g/l Spiroksamin+ 80g/l Trifloksistrobin+ 93,30g/l Protiokonazol',
                  '1,5 l / ha',
                  42),
              ShownPesticide(
                  '130g/l Protiokonazol +65g/l Fluopiram + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('300g/l Protiokonazol', '0,33 - 0,65 l/ ha', 35),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('100g/l Protiokonazol +50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('200 g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l/ ha',
                  42),
              ShownPesticide(
                  '60g/l Metkonazol 1,2 -1,5 l / ha', '1,2 - 1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide('430 g/l Tebuconazol', '0,6 l / ha', 35),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
            ],
          },
          {
            'Brown Rust': [
              ShownPesticide('150 g/l Protiokonazol + 125 g/l Izopirazam',
                  '1,0 l / ha', 42),
              ShownPesticide(
                  '100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
              ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                  '0,5 - 1,0 l / ha', 42),
              ShownPesticide('333g/l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha',
                  35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide(
                  '107g/l Spiroksamin + 80g/l Trifloksistrobin + 93,30g/l Protiokonazol',
                  '1,5 l / ha',
                  42),
              ShownPesticide('120 g/l Azoksistrobin + 200 g/l Tebukonazol',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide(
                  '66,70g/l Fluksapiroksad + 66,70g/l Mefentriflukonazol',
                  '0,75 - 1,125 l / ha',
                  35),
              ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('30g/l Fluksapiroksad + 200g/l Piraklostrobin',
                  '0,75 - 1,0 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroksamin + 148 g/l Tebukonazol + 53 g/l Protiokonazol',
                  '0,7 - 1,0 l/ ha',
                  35),
              ShownPesticide(
                  '130g/l Protiokonazol +65g/l Fluopiram + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l/ ha', 35),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('100g/l Protiokonazol +50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('150 g/l Piraklostrobin + 75 g/l Fluksapiroksad',
                  '0,75 - 1,5 l/ ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide(
                  '100g/l Difenkonazol + 250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('60g/l Metkonazol', '1,2 -1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide(
                  '100g/l Difenkonazol + 250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide('430 g/l Tebuconazol', '0,6 l / ha', 35),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
            ],
          },
          {
            'Speckled Leaf Blotch': [
              ShownPesticide(
                  '250g/l Tebuconazol + 100g/l Difenconazol', '1,0 l / ha', 35),
              ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
              ShownPesticide('430g/l Tebuconazol', '0,6 l / ha', 35),
              ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
              ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
              ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
              ShownPesticide(
                  '333g/l Fluksapiroksad', '150 ml/100kg sjemena', 35),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide('50g/l Fluksapiroksad + 100g/l Mefentrifluconazol',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '66,70g/l Fluksapiroksad + 66,70g/l Mefentriflukonazol',
                  '0,75 - 1,125 l / ha',
                  35),
              ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide(
                  '107g/l Spiroksamin + 80g/l Trifloksistrobin + 93,30g/l Protiokonazol',
                  '1,5 l / ha',
                  42),
              ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                  '0,5 - 1,0 l / ha', 42),
              ShownPesticide(
                  '65g/l Fluopiram + 130g/l Protiokonazol + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('250g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('300g/l Protiokonazol', '0,33 - 0,65 l / ha', 35),
              ShownPesticide('300g/l Spiroksamin + 160g/l Protiokonazol',
                  '1,25 l / ha', 42),
              ShownPesticide('100g/l Protiokonazol + 50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '0,8 l / ha', 56),
              ShownPesticide('200 g/l Piraklostrobin+30 g/l Fluksapiroksad',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroxamin + 148 g/l Tebuconazol + 53 g/l Protioconazol',
                  '0,7 - 1,0 l / ha',
                  35),
              ShownPesticide('250g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('250g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('150g/l Piraklostrobin + 75g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '150g/l Spiroksamin + 100g/l Protiokonazol + 75g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide(
                  '100g/l Difenkonazol + 250g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('60g/l Metkonazol', '1,2 - 1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
            ],
          },
          {
            'Powdery Mildew': [
              ShownPesticide(
                  '150g/l Protiokonazol + 125g/l Izopirazam', '1l/ha', 42),
              ShownPesticide('333g/l Fluksapiroksad', '150 ml/ha', 42),
              ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide('50g/l Fluksapiroksad + 100g/l Mefentriflukonazol',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Trifloksistrobin + 75 g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  35),
              ShownPesticide('100 g/l Tebukonazol + 60 g/l Azoksistrobin',
                  '150 ml / da', 56),
              ShownPesticide('62,5 g/l Fluksapiroksad', '2,0 l / ha', 42),
              ShownPesticide('300g/l Metrafenon', '0,2 - 0,5 l / ha', 35),
              ShownPesticide(
                  '224 g/l Spiroksamin + 148 g/l Tebukonazol + 53 g/l Protiokonazol',
                  '0,7 - 1,0 l / ha',
                  35),
              ShownPesticide('250 g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide(
                  '130g/l Protiokonazol +65g/l Fluopiram + 65g/l Biksafen',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250g/l Protiokonazol', '0,8 l / ha', 35),
              ShownPesticide('300g/l Protiokonazol', '0,33 - 0,65 l / ha', 35),
              ShownPesticide('100g/l Protiokonazol + 50g/l Fenpikoksamid',
                  '1,5 - 2,0 l / ha', 42),
              ShownPesticide(
                  '93,30 g/l Protiokonazol + 80 g/l Trifloksistrobin + 107g/l Spiroksamin',
                  '1,5 l / ha',
                  42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 42),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '0,8 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol + 120 g/l Azoksistrobin',
                  '1,0 - 1,25 l / ha', 35),
              ShownPesticide('250 g/l Azoksistrobin', '1,0 l / ha', 35),
              ShownPesticide('200g/l Piraklostrobin', '1,0 l / ha', 35),
              ShownPesticide('150g/l Piraklostrobin + 75g/l Fluksapiroksad',
                  '0,75 - 1,5 l / ha', 35),
              ShownPesticide(
                  '100g/l Piraklostrobin + 100g/l Mefentriflukonazol',
                  '0,75 - 1,0 l / ha',
                  35),
              ShownPesticide('60g/l Metkonazol', '1,2 - 1,5 l / ha', 35),
              ShownPesticide('125g/l Protiokonazol + 125g/l Tebukonazol',
                  '0,75 - 1,0 l / ha', 42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('200 g/l Tebukonazol', '1,25 l / ha', 35),
              ShownPesticide(
                  '150 g/l Spiroksamin + 100 g/l Protiokonazol + 75g/l Biksafen',
                  '0,8 - 1,0 l / ha',
                  42),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('250 g/l Tebukonazol', '1,0 l / ha', 35),
              ShownPesticide('430 g/l Tebukonazol', '0,6 l / ha', 35),
              ShownPesticide('40g/l Tetrakonazol', '1,0 l / ha', 35),
              ShownPesticide('300 g/l Spiroksamin + 160 g/l Protiokonazol',
                  '1,25 l / ha', 42),
            ],
          },
        ],
        'Italy': [
          {
            'Helminthosporiosis Turcicum': [
              ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 0),
              ShownPesticide('Pyraclostrobin 20%', '1 Kg/ha', 0),
            ]
          },
          {
            'Rot Of Rapier': [
              ShownPesticide(
                  'Fludioxonil 3,3%  Thiabendazole 26,7% Metalaxyl-M 2,6% Azoxystrobin 1,3%',
                  '8,5 ml/50.000 semi',
                  0),
              ShownPesticide('Metam sodio 42,2 %', '1200 lt/ha', 15),
              ShownPesticide('Metam sodio 38,8 %', '1300 lt/ha', 15),
              ShownPesticide('Protioconazolo 9,3% Metalaxyl 1,9%',
                  '100 ml/100 kg di seme', 0),
              ShownPesticide('Metam potassio 39,1%', '340 lt/ha', 15),
              ShownPesticide('Metam potassio 54 %', '250 lt/ha', 15),
            ]
          },
          {
            'Fusarium Of Ear': [
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide(
                  'Fludioxonil 3,3%  Thiabendazole 26,7% Metalaxyl-M 2,6% Azoxystrobin 1,3%',
                  '8,5 ml per 50.000 semi',
                  0),
              ShownPesticide('Protioconazolo 9,3% Metalaxyl 1,9%',
                  '100 ml/100 kg di seme,', 0),
            ]
          },
          {
            'Ferretto Spp': [
              ShownPesticide('Cipermetrina 0,8%', '12 kg/ha', 0),
              ShownPesticide('teflutrin 0,5%', '16 kg/ha', 0),
              ShownPesticide('teflutrin 0,2%', '50 kg/ha', 0),
              ShownPesticide('Lambda-cialotrina 0,4%', '15 kg/ha', 0),
              ShownPesticide('Spinosad puro 0,4 %', '12 kg/ha', 0),
              ShownPesticide('Metam potassio 39,1%', '340 lt/ha', 15),
              ShownPesticide('Metam potassio 54 %', '250 lt/ha', 15),
            ]
          },
          {
            'Givebrotica Virgifera': [
              ShownPesticide(
                  'Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                  '0,3 lt/ha',
                  14),
              ShownPesticide('Deltametrina pura 2,8 %', '500 ml/ha', 30),
              ShownPesticide('Indoxacarb 15%', '250 ml/ha', 14),
              ShownPesticide('Cipermetrina 5,52%', '1,5 lt/ha', 3),
              ShownPesticide('Cipermetrina 0,8%', '12 kg/ha', 0),
              ShownPesticide('Cipermetrina pura 47,46%', '150 ml/ha', 28),
              ShownPesticide('Deltametrina 2,42%', '0,5 lt /ha', 30),
              ShownPesticide('DELTAMETRINA 1,5 %', '0,8 lt/ha', 3),
              ShownPesticide('teflutrin 0,5%', '20 kg /ha', 0),
              ShownPesticide('Lambda cialotrina 2,5%', '1 kg/ha', 15),
              ShownPesticide('Lambda cialotrina 5%', '300 gr/ha', 28),
              ShownPesticide('Lambda-cialotrina 9,48%', '250 gr/ha', 7),
              ShownPesticide('Lambda-cialotrina 0,4%', '15 kg/ha', 0),
              ShownPesticide('teflutrin 0,2%', '50 kg/ha', 0),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha', 14),
            ]
          },
          {
            'Corn pyralis': [
              ShownPesticide(
                  'Bacillus thuringiensis Berliner subsp. aizawai, ceppo GC 91 50% P',
                  '2 kg/ha',
                  0),
              ShownPesticide(
                  'Chlorantraniliprole 9,26%  Lambda-cialotrina 4,63%',
                  '0,3 lt/ha',
                  14),
              ShownPesticide('Deltametrina pura 2,8 %', '500 ml/ha', 30),
              ShownPesticide(
                  'Bacillus thuringiensis subsp kurstaki, ceppo  ABTS 351 54%',
                  '1 Kg/ha',
                  0),
              ShownPesticide('Lambda-cialotrina  9,4 %', '250 ml/ha', 28),
              ShownPesticide('Indoxacarb 15%', '250 ml/ha', 14),
              ShownPesticide('Cipermetrina 5,52%', '1,5 lt/ha', 3),
              ShownPesticide('Etofenprox 30 %', '500 ml/ha', 48),
              ShownPesticide('Spinosad 11,6%', '800 ml/ha', 90),
              ShownPesticide('Chlorantraniliprole 20%', '150 ml/ha', 7),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki, ceppo SA12 18%',
                  '1 Kg/ha',
                  0),
              ShownPesticide('Cipermetrina 47,46 %', '150 ml/ha', 28),
              ShownPesticide('Deltametrina 2,42%', '0,5 lt/ha', 30),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                  '1,5 kg/ha',
                  0),
              ShownPesticide('DELTAMETRINA 1,51 %', '0,8 lt/ha', 3),
              ShownPesticide('Lambda cialotrina 2,5%', '1 kg/ha', 7),
              ShownPesticide(
                  'Bacillus thuringiensis subsp. aizawai ceppo ABTS-1857 54 %',
                  '1 Kg/ha',
                  0),
              ShownPesticide('Lambda-cialotrina  5 %', '300 gr/ha', 60),
              ShownPesticide('Lambda-cialotrina 1,47%', '1,7 lt/ha', 30),
              ShownPesticide('Spinosad 44,2 %', '50 ml/hl', 90),
              ShownPesticide('Lambda-cialotrina 9,53%', '250 ml/ha', 15),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha', 14),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner 50%', '2 kg/ha', 0),
            ]
          },
          {
            'Corn Nottue': [
              ShownPesticide('Lambda-cialotrina 9,4 %', '125 ml/ha', 28),
              ShownPesticide('DELTAMETRINA 2,73 %', '0,49 lt/ha', 30),
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide('Deltametrina 2,8%', '500 ml/ha', 30),
              ShownPesticide('lambda cialotrina 9,4%', '125 ml/ha', 28),
              ShownPesticide('Lambda-cialotrina pura 5 %', '300 gr/ha', 60),
              ShownPesticide('Teflutrin 0,5%', '15 kg/ha', 0),
              ShownPesticide('Cipermetrina 0,8%', '12 kg/ha', 0),
              ShownPesticide('Lambda-cialotrina 0,4%', '15 kg/ha', 0),
            ]
          },
        ],
        'Romania': [
          {
            'Corn Fusarium': [
              ShownPesticide('Metam sodiu 42,2 %', '1200 lt/ha', 15),
              ShownPesticide('Metam sodiu 38,8 %', '1300 lt/ha', 15),
              ShownPesticide('Metam potassiu 39,1%', '340 lt/ha', 15),
              ShownPesticide('Metam potassiu 54 %', '250 lt/ha', 15),
            ]
          },
          {
            'European Maize Borer': [
              ShownPesticide('Chlorantraniliprole 20%', '150 ml/ha ', 7),
              ShownPesticide('Deltametrina 2,42%', '0,5 lt/ha', 30),
              ShownPesticide('Spinosad 44,2 %', '50 ml/hl', 90),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha', 14),
              ShownPesticide('Spinosad 11,6%', '800 ml/ha', 90),
              ShownPesticide('Etofenprox 30 %', '500 ml/ha ', 48),
              ShownPesticide('Cipermetrina 5,52%', '1,5 lt/ha', 3),
              ShownPesticide('Indoxacarb 15%', '250 ml/ha ', 14),
            ]
          },
          {
            'Cutworm': [
              ShownPesticide('Deltametrina 2,8%', '500 ml/ha', 30),
              ShownPesticide('Cipermetrina 0,8%', '12 kg/ha', 0),
            ]
          },
          {
            'Wire Worm': [
              ShownPesticide('Cipermetrina 0,8%', '12 kg/ha', 0),
              ShownPesticide('Spinosad puro 0,4 %', '12 kg/ha', 0),
              ShownPesticide('Teflix', '7,0 kg/ha', 0),
            ]
          },
          {
            'Western Worm Of Corn Roots': [
              ShownPesticide('Trika expert', '12-15 kg/ha', 0),
              ShownPesticide('Belem 0,8 mg', '12kg/ha', 0),
              ShownPesticide('karate zeon', '0,250l/ha', 0),
              ShownPesticide('Cipermetrina 5,52%', '1,5 lt/ha ', 3),
              ShownPesticide('Deltametrina 2,42% ', '0,5 lt /ha', 30),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha ', 14),
              ShownPesticide('Teflix', '7,0 kg/ha', 0),
            ]
          },
        ],
        'Germany': [
          {
            'Annual dicot weeds': [
              ShownPesticide(
                  'Pendimethalin', '4l/ha in 200 to 400 l/ha of water', 0)
            ]
          },
        ],
        'English': [],
      },
      // Italy remains, germany empty
      'Grape': {
        'Turkey': [
          {
            'Two-Spotted Spider  Mite': [
              ShownPesticide('%10 hexythiazox', '25', 7),
              ShownPesticide('110 g/l Etoxazole', '25', 7),
              ShownPesticide('156 g/l Acequinocyl', '125', 14),
              ShownPesticide('200 g/l Fenazaquin', '50', 28),
              ShownPesticide(
                  '222 g/l Spirodiclofen + 18 g/l Abamectin', '20', 14),
              ShownPesticide('240 g/l Bifenazate', '60', 14),
              ShownPesticide('240 g/l Spirodiclofen', '25', 14),
              ShownPesticide('50 g/l Fenpyroximate', '75', 14),
              ShownPesticide('50 g/l Hexythiazox', '50', 7),
              ShownPesticide('500 g/l Clofentezine', '25', 56),
            ]
          },
          {
            'European Grapevin Moth': [
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki (serotype H3a 3b 3c) 1x 10 üzeri 8 CFU / g',
                  '100',
                  0),
              ShownPesticide('150 g/l Indoxacarb', '25', 3),
              ShownPesticide('%25 Spinetoram', '20', 7),
              ShownPesticide('%30 Indoxacarb', '12.5', 10),
              ShownPesticide('%5 Emamectin benzoate', '20', 14),
              ShownPesticide('%50 Bacillus thuringiensis', '100', 0),
              ShownPesticide(
                  '100 g/l Lambda-cyhalothrin + 100 g/l Lufenuron', '20', 14),
              ShownPesticide('100 g/l Zeta-cypermethrin', '20', 7),
              ShownPesticide('150 g/l Indoxacarb', '25', 10),
              ShownPesticide('150 g/l Indoxacarb methyl', '25', 10),
              ShownPesticide('20 g/l Emamectin benzoate', '60', 14),
              ShownPesticide('200 g/l Chlorantraniliprole', '15', 3),
              ShownPesticide('200 g/l Cypermethrin', '25', 7),
              ShownPesticide('200 g/l Esfenvalerate', '7', 14),
              ShownPesticide('222 g/l Flubendiamide', '30', 14),
              ShownPesticide('25 g/l Deltamethrin', '30', 3),
              ShownPesticide('25 g/l Deltamethrin', '30', 3),
              ShownPesticide('250 g/l Cypermethrin', '20', 7),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '30', 7),
              ShownPesticide(
                  '35000 DBM/mg Bacillus thuringiensis var. aizawai strain ABTS-1857',
                  '100',
                  0),
              ShownPesticide(
                  '45 g/l Chlorantraniliprole + 18 g/l Abamectin', '70', 3),
              ShownPesticide('480 g/l Spinosad', '10', 7),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '20', 7),
              ShownPesticide('60 g/l Gamma-cyhalothrin', '15', 7),
              ShownPesticide('75 g/l Fenoxycarb + 30 g/l Lufenuron', '100', 21),
              ShownPesticide(
                  '790 g/l Neem Yağı + 0,3 g/l Azadirachtin', '500', 3),
            ]
          },
          {
            'Grape  Powdery Mildew': [
              ShownPesticide(
                  '400 g/l Tea tree oil + 200 g/l Difenoconazole', '40', 14),
              ShownPesticide('%30 Triflumizole', '30', 7),
              ShownPesticide('%40 Iminoctadine tris (albesilate)', '75', 56),
              ShownPesticide('%50 Kresoxim-methyl', '20', 35),
              ShownPesticide(
                  '%50 Kükürt + %15 Metalik bakıra eşdeğer bakır oksiklorid + %6 Mancozeb',
                  '800',
                  21),
              ShownPesticide('%50 Trifloxystrobin', '10', 35),
              ShownPesticide('%55 Metiram + %5 Pyraclostrobin', '200', 28),
              ShownPesticide(
                  '%58,5x10 üzeri 9 cfu/ml Ampelomyces quisqualis isolate m-10',
                  '5',
                  0),
              ShownPesticide('%70 Kükürt + %4,5 Tebuconazole', '250', 14),
              ShownPesticide('%70 Thiophanate-methyl', '100', 14),
              ShownPesticide('%73 Kükürt', '500', 0),
              ShownPesticide('%80 Kükürt', '400', 0),
              ShownPesticide('100 g/l Bromuconazole', '30', 15),
              ShownPesticide('100 g/l Flusilazole', '12', 28),
              ShownPesticide('100 g/l Penconazole', '25', 14),
              ShownPesticide('100 g/l Tetraconazole', '30', 14),
              ShownPesticide('125 g/l Myclobutanil', '15', 14),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 125 g/l Difenoconazole', '80', 21),
              ShownPesticide(
                  '200 g/l Boscalid + 100 g/l Kresoxim-methyl', '30', 28),
              ShownPesticide(
                  '200 g/l Fluopyram + 200 g/l Tebuconazole', '25', 14),
              ShownPesticide('200 g/l Penconazole', '10', 21),
              ShownPesticide('200 g/l Proquinazid', '25', 28),
              ShownPesticide('222,5 g/l Tea tree oil', '700', 0),
              ShownPesticide('224,6 g/l Reynoutria spp. ekstraktı', '100', 0),
              ShownPesticide('245 g/l Myclobutanil', '7.5', 14),
              ShownPesticide('25 g/l Penconazole', '100', 14),
              ShownPesticide('250 g/l Azoxystrobin', '75', 21),
              ShownPesticide('250 g/l Bupirimate', '40', 7),
              ShownPesticide(
                  '250 g/l Fluopyram+ 250 g/l Trifloxystrobin', '20', 14),
              ShownPesticide('250 g/l Tebuconazole', '40', 21),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '50', 14),
              ShownPesticide('300 g/l Fluxapyroxad', '15', 28),
              ShownPesticide('350 g/l Meptyldinocap', '50', 21),
              ShownPesticide('400 g/l Flusilazole', '3', 28),
              ShownPesticide('50 g/l Fenbuconazole', '40', 14),
              ShownPesticide('500 g/l Spiroxamine', '60', 14),
              ShownPesticide('51,3 g/l Cyflufenamid', '20', 21),
              ShownPesticide('700 g/l Kükürt', '350', 0),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', '100', 21),
              ShownPesticide('800 g/l Kükürt', '400', 0),
            ]
          },
          {
            'Phomopsis Cane And Leaf Spot': [
              ShownPesticide(
                  '%30 Mancozeb + %12 Metalik bakıra eşdeğer bordo bulamacı',
                  '300',
                  21),
              ShownPesticide('%45 Mancozeb + %5 Cymoxanil', '250', 14),
              ShownPesticide('%50 Captan', '250', 28),
              ShownPesticide('%50 Folpet', '200', 7),
              ShownPesticide('%55 Metiram + %5 Pyraclostrobin', '150', 28),
              ShownPesticide('%55 Metiram + %5 Pyraclostrobin', '150', 28),
              ShownPesticide('%70 Metiram', '200', 56),
              ShownPesticide('%75 Mancozeb', '150', 21),
              ShownPesticide(
                  '%75 Metalik bakıra eşdeğer bakır oksit', '150', 0),
              ShownPesticide('%80 Folpet', '150', 7),
              ShownPesticide('%80 Mancozeb', '200', 21),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 125 g/l Difenoconazole', '80', 21),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '50', 21),
              ShownPesticide('250 g/l Azoxystrobin', '75', 21),
              ShownPesticide(
                  '361,1 g/l Metalik bakıra eşdeğer bakır hidroksit', '100', 7),
              ShownPesticide('500 g/l Folpet', '150', 7),
              ShownPesticide(
                  '65,82 g/l Metalik bakıra eşdeğer bakır sülfat', '125', 7),
              ShownPesticide(
                  '700 g/l Metalik bakıra eşdeğer bakır oksiklorid', '200', 14),
            ]
          },
          {
            'Grape Anthracnose': [
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır oksiklorid', '500', 21),
            ]
          },
          {
            'Grape Downy Mildew': [
              ShownPesticide(
                  '% 15 Bakır Hidroksit + %15 Bakır Oksiklorid + %5 Benalaxyl - M',
                  '240',
                  28),
              ShownPesticide('%1,34 Bacillus subtilis QST 713 ırkı', '1000', 0),
              ShownPesticide(
                  '%14 Metalik bakıra eşdeğer bakır hidroksit + %14 Metalik bakıra eşdeğer bakır oksiklorid',
                  '240',
                  21),
              ShownPesticide(
                  '%15 Metalik bakıra eşdeğer bakır hidroksit + %15 Metalik bakıra eşdeğer bakır oksiklorid + %6 Valiphenal',
                  '250',
                  28),
              ShownPesticide(
                  '%16 Metalik bakıra eşdeğer bakır kalsiyum oksiklorid',
                  '1000',
                  14),
              ShownPesticide(
                  '%20 Mancozeb + %15 Metalik bakıra eşdeğer bordo bulamacı + %2,4 Cymoxanil',
                  '400',
                  30),
              ShownPesticide(
                  '%20 Metalik bakıra eşdeğer bordo bulamacı', '500', 14),
              ShownPesticide(
                  '%21 Metalik bakıra eşdeğer bakır tuzları (Bordo bulamacı + Bakır oksiklorid + Bakır karbonat) + %20 Mancozeb',
                  '300',
                  21),
              ShownPesticide(
                  '%22,5 Metalik bakıra eşdeğer bordo bulamacı + %3 Cymoxanil',
                  '300',
                  21),
              ShownPesticide(
                  '%25 Metalik bakıra eşdeğer bakır oksiklorid + %4 Cymoxanil',
                  '300',
                  21),
              ShownPesticide('%30 Cymoxanil + %22,5 Famoxadone', '40', 28),
              ShownPesticide(
                  '%30 Mancozeb + %12 Metalik bakıra eşdeğer bordo bulamacı',
                  '300',
                  21),
              ShownPesticide(
                  '%30 Metalik bakıra eşdeğer bakır hidroksit', '150', 21),
              ShownPesticide('%32,5 Fosetyl-Al + %25 Mancozeb + %2,5 Cymoxanil',
                  '400', 21),
              ShownPesticide('%35 Fosetyl-Al + %35 Mancozeb', '300', 14),
              ShownPesticide('%35 Metalaxyl', '100', 42),
              ShownPesticide(
                  '%35 Metalik bakıra eşdeğer bakır hidroksit', '175', 14),
              ShownPesticide(
                  '%35 Metalik bakıra eşdeğer bakır hidroksit', '175', 14),
              ShownPesticide(
                  '%39,75 Metalik bakıra eşdeğer bakır oksiklorid + %4,2 Cymoxanil',
                  '200',
                  21),
              ShownPesticide(
                  '%40 Metalik bakıra eşdeğer bakır hidroksit', '250', 14),
              ShownPesticide(
                  '%40 Metalik bakıra eşdeğer bakır hidroksit', '250', 14),
              ShownPesticide(
                  '%40,6 Bakır Oksiklorid + %8,4 Iprovalicarb', '175', 14),
              ShownPesticide('%42,4 Bakır Hidroksit + %6 Cymoxanil', '200', 21),
              ShownPesticide('%45 Mancozeb + %5 Cymoxanil', '300', 14),
              ShownPesticide('%45,6 Cymoxanil + %15 Trifloxystrobin', '50', 7),
              ShownPesticide('%50 Captan', '300', 3),
              ShownPesticide('%50 Cymoxanil', '60', 7),
              ShownPesticide('%50 Folpet', '200', 7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır hidroksit', '250', 7),
              ShownPesticide('%55 Metiram + %5 Pyraclostrobin', '200', 28),
              ShownPesticide('%55 Metiram + %5 Pyraclostrobin', '200', 28),
              ShownPesticide('%57 Metiram + %4,8 Cymoxanil', '200', 28),
              ShownPesticide('%60 Fosetyl-Al + %4 Famoxadone', '250', 21),
              ShownPesticide('%60 Mancozeb + %5 Mandipropamid', '250', 35),
              ShownPesticide('%62,5 Mancozeb + %6,25 Famoxadone', '80', 28),
              ShownPesticide('%64 Mancozeb + %4 Metalaxyl-m', '250', 14),
              ShownPesticide('%64 Mancozeb + %8 Metalaxyl', '250', 14),
              ShownPesticide(
                  '%66,7 Fosetly-Al + %4,44 Fluopicolide', '250', 28),
              ShownPesticide('%66,7 Mancozeb + %8,3 Zoxamide', '180', 21),
              ShownPesticide('%70 Dithianon', '40', 14),
              ShownPesticide('%70 Metiram', '200', 56),
              ShownPesticide('%72 Mancozeb', '200', 21),
              ShownPesticide(
                  '%75 Metalik bakıra eşdeğer bakır oksit', '125', 14),
              ShownPesticide('%80 Folpet', '125', 7),
              ShownPesticide('%80 Mancozeb', '200', 21),
              ShownPesticide(
                  '136 g/l Metalik bakıra eşdeğer bakır hidroksit + 136 g/l Metalik bakıra eşdeğer bakır oksiklorid',
                  '240',
                  14),
              ShownPesticide(
                  '180 g/l Dimethomorph + 180 g/l Zoxamide', '100', 28),
              ShownPesticide(
                  '190 g/l Metalik Bakıra eşdeğer bazik bakır sülfat + 35 g/l Cymoxanil',
                  '350',
                  21),
              ShownPesticide(
                  '193 g/l Metalik bakıra eşdeğer bazik bakır sülfat',
                  '500',
                  21),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 125 g/l Difenoconazole', '80', 21),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 80 g/l Cyproconazole', '50', 21),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '100', 21),
              ShownPesticide('250 g/l Azoxystrobin', '75', 21),
              ShownPesticide(
                  '266,6 g/l Metalik bakıra eşdeğer bazik bakır sülfat + 40 g/l Zoxamide',
                  '300',
                  28),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '50', 14),
              ShownPesticide(
                  '300 g/l Ametoctradin + 225 g/l Dimethomorph', '100', 10),
              ShownPesticide(
                  '300 g/L Fosforoz asit+ 75 g/L Ametoctradin', '400', 14),
              ShownPesticide(
                  '300 g/L Zoxamide+ 40 g/L Oxathiapiprolin', '70', 28),
              ShownPesticide(
                  '350 g/l Metalik bakıra eşdeğer bakır hidroksit', '100', 7),
              ShownPesticide(
                  '357,5 g/l Metalik bakıra eşdeğer bakır oksiklorid',
                  '350',
                  14),
              ShownPesticide(
                  '361,1 g/l Metalik bakıra eşdeğer bakır hidroksit', '100', 7),
              ShownPesticide('400 g/l Fosforoz Asit', '400', 0),
              ShownPesticide(
                  '400 g/l Metalik Bakıra Eşdeğer Bakır Hidroksit', '200', 7),
              ShownPesticide('455 g/l Mancozeb', '150', 21),
              ShownPesticide('500 g/l Captan', '300', 28),
              ShownPesticide('500 g/l Dimethomorph', '50', 28),
              ShownPesticide(
                  '500 g/L Folpet+ 10 g/L Oxathiapiprolin', '200', 56),
              ShownPesticide(
                  '51,4 g/l Metalik Bakıra eşdeğer Yağ ve Rosin Asitlerinin Bakır Tuzları',
                  '200',
                  7),
              ShownPesticide('600 g/l Fosforoz asit', '300', 0),
              ShownPesticide(
                  '65,82 g/l Metalik bakıra eşdeğer bakır sülfat', '50', 0),
              ShownPesticide(
                  '700 g/l Metalik bakıra eşdeğer bakır oksiklorid', '200', 14),
              ShownPesticide(
                  '80 g/l Azoxystrobin + 160 g/l Tebuconazole', '125', 21),
            ]
          },
        ],
        // Italy Doesn't have grapes
        'Italy': [],
        'Romania': [
          {
            'Two-spotted Spider Mite': [
              ShownPesticide('Nissorium 10 WP', '0,5 kg/ha', 21),
            ]
          },
          {
            'European Grapevine Moth ': [
              ShownPesticide('DECIS 25 WG', '30G/HA', 00),
              ShownPesticide('AFFIRM ', '1,5 KG/HA', 0),
              ShownPesticide('CORAGEN', '150-175 ML/HA', 0),
              ShownPesticide('POLECI (DECA 2,5 EC)', '0,4-0,6 L/HA', 0),
            ]
          },
          {
            'Grape Powdery Mildew': [
              ShownPesticide('Orius 25 EW /Salvator 25 EW ', '0,4 l/ha', 14),
              ShownPesticide('Flosul ', '4,0l/ha', 5),
              ShownPesticide('CALIZI/SINPRO ', '1,0 L/HA', 21),
              ShownPesticide('CABRIO TOP', '1,5-2,0 KG/HA', 35),
              ShownPesticide('UNIVERSALIS 593 SC', '2,0 L/HA', 14),
            ]
          },
          {
            'Grape Anthracnose': [
              ShownPesticide('CUPROFIX ULTRA/NOVICURE', '1,4-4,0 KG/HA', 21),
            ]
          },
          {
            'Grape Downy Mildew': [
              ShownPesticide('Folpan 80 WDG/ Flovine', '1,5 kg/ha', 0),
              ShownPesticide('Kocide 2000', '2,0 kg/ha', 21),
              ShownPesticide('Lieto/Zetanil ', '0,40 kg/ha', 28),
              ShownPesticide('Polyram df', '0,2%', 56),
              ShownPesticide('Equation pro', '0,4 kg/ha', 28),
              ShownPesticide('CUPROFIX ULTRA/NOVICURE', '1,4-4,0 KG/HA', 21),
              ShownPesticide('CURENOX 50', '1,5-2,0 KG/HA', 21),
              ShownPesticide('CHAMP 77 WG/COPPERMAX', '2KG/HA', 21),
              ShownPesticide('CAPTAN 80 WDG', '1,250 KG/HA/1000L', 21),
              ShownPesticide('CALIZI/SINPRO', '1,0 L/HA', 21),
              ShownPesticide('CABRIO TOP', '1,5-2,0 KG/HA', 35),
              ShownPesticide(
                  'BOUILLIE BORDELAIZE WDG', '0,5% (5,0 KG/HA/1000L)', 21),
            ]
          },
        ],
        'Croatia': [
          {
            'Grape Powdery Mildew': [
              ShownPesticide(
                  'CHROMOSUL 80 - Sumpor 800 g/kg', 'do 6 kg/ha', 28),
              ShownPesticide('COSAVET DF - Sumpor 800 g/kg', '0,3-0,5%', 35),
              ShownPesticide('DIFCOR - Difenkonazol 250 g/l', '0,12 l/ha', 21),
              ShownPesticide(
                  'DOMARK 40 ME - Tetrakonazol 40 g/l', '0,6-0,75 l/ha', 35),
              ShownPesticide('KALINOSUL 80 WG -Sumpor 800g/kg', '0.003', 35),
              ShownPesticide('KOSSAN WG - Sumpor 800 g/kg', '0.003', 35),
              ShownPesticide('MISTIC - Tebukonazol 250 g/kg', '0.0003', 42),
              ShownPesticide(
                  'NATIVO 75 WG - Trifloksistrobin 250 g/kg+Tebuknazol 500 g7kg',
                  '160-200 g/ha',
                  42),
              ShownPesticide(
                  'NORDOX 75 WG - Bakarni oksid 750 g/kg', '100-150 g/l', 35),
              ShownPesticide(
                  'SULFOLAC 80 WG - Sumpor 800 g/kg', '0,3-0,5%', 35),
              ShownPesticide(
                  'TOPAS 100 EC - Penkonazol 100 g/l', '0.00025', 28),
              ShownPesticide(
                  'LUNA EXPERIENCE - Fluopiram 200 g/l+Tebukonazol 200 g/l',
                  '0,375 l/ha',
                  14),
              ShownPesticide('SULGRAN - Sumpor  800 g/kg', '3-6 kg/ha', 28),
              ShownPesticide(
                  'SERCADISS - Fluksapiroksad 300 g/l', '15 kg/ha', 0),
              ShownPesticide('VITI SAN - Kalijev hidrogen karbonat 994,9 g/kg',
                  '3-12 kg/ha', 0),
              ShownPesticide(
                  'CYFLAMID 5 EW -Ciflufenamid 51,3 g/l', '0,32-0,5 l/ha', 21),
              ShownPesticide(
                  'KARATHANE GOLD - Meptildinokap 350 g/l', '0,6 l/ha', 21),
              ShownPesticide(
                  'STROBY WG - Krezoksim-metil 500 g/kg', '0,015-0,03 %', 35),
              ShownPesticide('BROMFLO 800 g/l', '0.003', 35),
              ShownPesticide('VIVANDO - Metrafenon 500 g/l', '0.0002', 28),
              ShownPesticide(
                  'ZATO 50 WG - Trifloksistrobin 500 g/kg', '150 g/ha', 35),
              ShownPesticide('TALENDO - Prokinazid 200 g/l', '0,25 l/ha', 28),
              ShownPesticide('DYNALI - Difenkonazol 60 g/l+Ciflufenamid 30 g/l',
                  '0,5-0,65 l/ha', 21),
              ShownPesticide(
                  'TEBUSHA 25% EW - Tebukonazol 250 g/l', '0,4 l/ha', 21),
              ShownPesticide(
                  'TALENDO EXTRA - Tetrakonazol 80 g/l+prokinazid 160 g/l',
                  '0,25 l/ha',
                  30),
              ShownPesticide('KUSABI - Pirofenon 300 g/l', '0,3 l/ha', 28),
              ShownPesticide(
                  'CUSTODIA - Azoksistrobin 120 g/l+Tebukonazol 200 g/l',
                  '0,75 l/ha',
                  21),
              ShownPesticide('SONATA - Bacillus pumilus 14,35', '5 l/ha', 1),
            ]
          },
          {
            'Euripean Grapevine Moth': [
              ShownPesticide(
                  'DECIS 100EC - Deltametrin 100 g/l', '0,125-0,175 %', 7),
              ShownPesticide('MIMIC - Tebufenozid 240 g/kg', '0.006', 28),
              ShownPesticide(
                  'RUNNER 240 SC - Metoksifenozid 240 g/l', '0.0004', 7),
              ShownPesticide(
                  'SUMIALFA 5 SL - Esfenvalerat 50 g/l', '0,015-0,02 %', 21),
              ShownPesticide(
                  'DECIS 100 EC - Deltametrin 100 g/l', '0,125-0,175 l/ha', 7),
              ShownPesticide(
                  'ROTOR SUPER - Deltametrin 25 g/l', '500 ml/ha', 7),
              ShownPesticide(
                  'ASSET FIVE - Piretrini 46,53 g/l', '0,96 l/ha', 1),
              ShownPesticide('LEPINOX PLUS - Bacillus thuringiensis 375 g/kg',
                  '0,75-1,5 kg/ha', 0),
              ShownPesticide('SCATO - Deltametrin 25 g/l', '0,5 l/ha', 7),
              ShownPesticide('RADIANT - Spinetoram 120 g/l', '0,3 l/ha', 1900),
            ]
          },
          {
            'Two Spotted Spider Mite': [
              ShownPesticide('SHOSI - Heksitiazoks 100 g/kg', '0.0005', 28),
              ShownPesticide('APACHE - Abamektin  18 g/l', '0,6-0,96 l/ha', 3),
              ShownPesticide('NEALTA - Ciflumetofen 200 g/l', '1 l/ha', 7),
              ShownPesticide(
                  'DIABLO SC - Heksitiazoks 258,7 g', '0,16-0,2 l/ha', 28),
              ShownPesticide(
                  'RED FOX - Parafinsko ulje 540 g+Bakarni oksid 100g',
                  '12,5-30 l/ha',
                  0),
              ShownPesticide(
                  'SHOSI 25 SC - Heksitiazoks 251,3 g/l', '160-300 ml/ha', 28),
              ShownPesticide(
                  'NISSORUN PLUS - Fenpiroksimat 62,4 g/l+ heksiazoks 31,2 g/l',
                  '1,2 l/ha',
                  28),
              ShownPesticide('Pesticid /aktivna tvar', 'Doza/koncentracija', 0),
              ShownPesticide('SHOSHI - Heksitiazoks 100 g/kg', '0.0005', 28),
              ShownPesticide('SHOSHI 25 SC - Heksitiazoks 251,3 g/kg',
                  '160-300 ml/ha', 28),
              ShownPesticide('APACHE - Abamektin 18 g/l', '0,6-0,96 l/ha', 3),
              ShownPesticide('NEALTA - Ciflumetofen 200 g/l', '1 l/ha', 7),
              ShownPesticide(
                  'DIABLO SC - Heksitiazoks 258,7 g', '0,16-0,2 l/ha', 28),
              ShownPesticide(
                  'RED FOX - Parafinsko ulje 540g+Bakarni oksid 100g',
                  '12,5-30 l/ha',
                  0),
              ShownPesticide(
                  'NISSORUN PLUS - Fenpiroksimat 62,4 g/l +Heksiazoks 31,2 g/l',
                  '1,2 l/ha',
                  28),
            ]
          },
          {
            'Grape Downy Mildew': [
              ShownPesticide('CUPROCAFFARO 50 WP - Bakarni oksiklorid 500 g/kg',
                  '0,3-0,5 %', 35),
              ShownPesticide('FUTURA 50 WP - Folpet 500 g/kg', '0.002', 42),
              ShownPesticide('CASTOR - Kaptan 500 g/kg', '0,2-0,3 %', 35),
              ShownPesticide('POLYRAM DF - Metiram 700 g/kg', '?', 56),
              ShownPesticide(
                  'AZIMUT 80 WG - Fosetil 800 g/kg', '0,25-0,3 %', 28),
              ShownPesticide(
                  'DELAN PRO - Ditianon 125 g/l+Kalijevi fosfonati 561,2 g/l',
                  '3-4 l/ha',
                  42),
              ShownPesticide('CODIMUR SC - Bakarni oksid 520 g', '0.003', 15),
              ShownPesticide('CUPRABLAU Z 35 WG - Bakarni hidroksid 136 g/l',
                  '1,7-1,9 kg/ha', 21),
              ShownPesticide(
                  'AIRONE SC -Bakarni hidroksid 136 g/l+Bakarni oksid 136 g/l',
                  '2-2,5 l/ha',
                  21),
              ShownPesticide(
                  'GLOBEX WG - Fosetil 800 g/l', '1,5-2,5 kg/ha', 28),
              ShownPesticide(
                  'SALIVAL FORTE - Kalijevi fosfonati 510 g/l', '2,5 l/ha', 15),
              ShownPesticide(
                  'CHAMPION WG - Bakarni spojevi 500 g/kg', '0,2-0,25 %', 35),
              ShownPesticide('MIKAL FLASH - Fosetil 500 g/kg', '0,3-0,4 %', 42),
              ShownPesticide(
                  'NEORAM WG - Bakarni spojevi 375 g/kg', '0,2-0,3 5', 35),
              ShownPesticide(
                  'AMALINE FLOW - Zoksamid 40 g/l+Bakarni spojevi 266,6 g/l',
                  '2,5-2,8 l/ha',
                  28),
              ShownPesticide(
                  'MILDCUT 25 SC - Ciazofamid 25 g/kg', '0.0025', 21),
              ShownPesticide(
                  'OPTIX R - Fosetil 200 g/kg+ Bakarni spojevi 150 g/kg',
                  '5 kg/ha',
                  28),
              ShownPesticide('ORVEGO - Dimetomorf 225 g/l+Ametoktradin 300 g/l',
                  '0,8 l/ha', 35),
              ShownPesticide(
                  'RIDOMIL GOLD - Metalaksil-M 19,4 g/l+Bakarni spojevi 141,9 g/l',
                  '5 kg/ha',
                  21),
              ShownPesticide(
                  'LBG-01F34 - Kalijevi fosfonati 755, 0 g/l', '3-4 l/ha', 14),
              ShownPesticide(
                  'CYCLO R LIQUIDO - Bakarni spojevi 237,7 g+Metalaksil 45 g',
                  '2-4 l/ha',
                  56),
              ShownPesticide('REBOOT - Zoksamid 330 g/kg+Cimoksanil 330 g/kg',
                  '0,4 l/ha', 28),
              ShownPesticide(
                  'BORDOFLOW - Bakarni spojevi 124, 0 g/l', '6 l/ha', 21),
              ShownPesticide(
                  'AIRONE SC - Bakarni spojevi 136 g/l', '2.2,5 l/ha', 21),
            ]
          },
          {
            'Grey Mould Of Grapevine': [
              ShownPesticide(
                  'CHORUS 75 WG - Ciprodinil 750 g/l', '400-600 kg/ha', 21),
              ShownPesticide(
                  'PYROS 400 SC - Pirimetanil 400 g/l', '2-2,5 l/ha', 28),
              ShownPesticide('GEOXE - Fludioksonil 500 g/kg', '1kg/ha', 2021),
              ShownPesticide('SCALA - Pirimetanil 400 g/l', '2-2,5 l/ha', 21),
              ShownPesticide(
                  'SERENADE ASO - Bacillus amiloliquefaciens 14,1 g/l',
                  '4 l/ha',
                  0),
            ]
          },
          {
            'phomopsis Cane And Leaf Spot': [
              ShownPesticide(
                  'DELAN PRO - Ditianon 125 g/l+Kalijevi fosfati 561,2 g/l',
                  '3 l/ha',
                  42),
              ShownPesticide('POLYRAM DF - Metiram 700 g/kg', '0.002', 56),
              ShownPesticide('MIKAL FLASH - Fosetil 500 g/l', '0.003', 42),
            ]
          },
        ],
        // Germany doesn't have grapes too
        'Germany': [],
        'English': [],
      },
      'Tomato': {
        'Turkey': [
          {
            'Late Blight': [
              ShownPesticide('%25 Mandipropamid + %18 Cymoxanil', '0.6', 1),
              ShownPesticide('%30 Cymoxanil + %22,5 Famoxadone', '40', 3),
              ShownPesticide('%30 Fluazinam+ %20 Cymoxanil', '75', 1),
              ShownPesticide('%32,5 Fosetyl-Al + %25 Mancozeb + %2,5 Cymoxanil',
                  '400', 21),
              ShownPesticide('%35 Fosetyl-Al + %35 Mancozeb', '400', 14),
              ShownPesticide('%35 Fosetyl-Al + %35 Mancozeb', '1.6', 14),
              ShownPesticide('%35 Fosetyl-Al + %35 Mancozeb', '1.6', 14),
              ShownPesticide(
                  '%39,75 Metalik bakıra eşdeğer bakır oksiklorid + %4,2 Cymoxanil',
                  '2',
                  7),
              ShownPesticide('%40 Dimethomorph + %20 Azoxystrobin', '100', 7),
              ShownPesticide(
                  '%40 Metalaxyl-m + %4 Acibenzolar-s-methyl', '0.3', 7),
              ShownPesticide(
                  '%40 Metalik bakıra eşdeğer bakır oksiklorid + %6 Dimethomorp',
                  '300',
                  7),
              ShownPesticide('%42,4 Bakır Hidroksit + %6 Cymoxanil', '200', 3),
              ShownPesticide('%45 Mancozeb + %5 Cymoxanil', '300', 14),
              ShownPesticide('%45,6 Cymoxanil + %15 Trifloxystrobin', '50', 3),
              ShownPesticide('%50 Captan', '300', 14),
              ShownPesticide('%50 Cymoxanil', '50', 3),
              ShownPesticide('%50 Folpet', '3', 7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır hidroksit', '2.5', 7),
              ShownPesticide('%55 Metiram + %5 Pyraclostrobin', '200', 3),
              ShownPesticide('%57 Metiram + %4,8 Cymoxanil', '200', 21),
              ShownPesticide('%60 Mancozeb + %5 Mandipropamid', '2.5', 7),
              ShownPesticide('%60 Mancozeb + %9 Dimethomorph', '250', 7),
              ShownPesticide('%62,5 Mancozeb + %6,25 Famoxadone', '0.8', 3),
              ShownPesticide('%64 Mancozeb + %4 Metalaxyl-m', '2.5', 10),
              ShownPesticide('%64 Mancozeb + %8 Metalaxyl', '250', 7),
              ShownPesticide('%66,7 Mancozeb + %8,3 Zoxamide', '180', 3),
              ShownPesticide('%70 Mancozeb + %5 Azoxystrobin', '1.5', 7),
              ShownPesticide('%70 Metiram', '150', 5),
              ShownPesticide('%80 Captan', '185', 14),
              ShownPesticide('%80 Folpet', '1.25', 7),
              ShownPesticide('%80 Fosetyl-Al', '250', 7),
              ShownPesticide('%80 Mancozeb', '200', 14),
              ShownPesticide('%80 Ziram', '300', 14),
              ShownPesticide(
                  '155 g/l Azoxystrobin + 15 g/l Oxathiapiprolin', '1', 1),
              ShownPesticide('160 g/l Cyazofamid', '0.5', 3),
              ShownPesticide('180 g/l Dimethomorph + 180 g/l Zoxamide', '1', 3),
              ShownPesticide('250 g/l Azoxystrobin', '75', 3),
              ShownPesticide(
                  '250 g/l Difenoconazole + 250 g/l Mandipropamid', '0.6', 3),
              ShownPesticide(
                  '259 g/l Metalik bakıra eşdeğer bakır hidroksit + 49 g/l Metalaxyl',
                  '400',
                  14),
              ShownPesticide(
                  '266,6 g/l Metalik bakıra eşdeğer bazik bakır sülfat + 40 g/l Zoxamide',
                  '300',
                  3),
              ShownPesticide(
                  '300 g/l Ametoctradin + 225 g/l Dimethomorph', '80', 1),
              ShownPesticide(
                  '300 g/L Fosforoz asit+ 75 g/L Ametoctradin', '3.2', 1),
              ShownPesticide(
                  '375 g/l Fluazinam + 150 g/l Azoxystrobin', '0.5', 3),
              ShownPesticide('400 g/l Fosforoz Asit', '4', 0),
              ShownPesticide('455 g/l Mancozeb', '450', 14),
              ShownPesticide('480 g/l Metalaxyl-M', '120', 3),
              ShownPesticide('530 g/l Propamocarb + 310 g/l Fosetyl', '2', 3),
              ShownPesticide('600 g/l Fosforoz asit', '300', 0),
              ShownPesticide('722 g/l Propamocarb-HCI', '250', 3),
            ]
          },
          {
            'Bacterial Speck': [
              ShownPesticide('%75 Mancozeb', '200', 14),
              ShownPesticide('%75 Mancozeb', '200', 14),
              ShownPesticide(
                  '%21 Metalik bakıra eşdeğer bakır tuzları + %20 Mancozeb',
                  '300',
                  7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır hidroksit', '2.5', 14),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır oksiklorid', '300', 14),
              ShownPesticide('%75 Mancozeb', '200', 14),
              ShownPesticide('222,5 g/l Tea tree oil', '200', 0),
              ShownPesticide(
                  '51,4 g/l Metalik Bakıra eşdeğer Yağ ve Rosin Asitlerinin Bakır Tuzları',
                  '2',
                  7),
            ]
          },
          {
            'Early Blight': [
              ShownPesticide('%1,34 Bacillus subtilis QST 713 ırkı', '14', 0),
              ShownPesticide(
                  '%21 Metalik bakıra eşdeğer bakır tuzları + %20 Mancozeb',
                  '300',
                  7),
              ShownPesticide(
                  '%25 Metalik bakıra eşdeğer bakır oksiklorid + %4 Cymoxanil',
                  '300',
                  14),
              ShownPesticide('%25 Tebuconazole', '50', 7),
              ShownPesticide('%30 Cymoxanil + %22,5 Famoxadone', '40', 3),
              ShownPesticide(
                  '%30 Metalik bakıra eşdeğer bakır hidroksit', '150', 3),
              ShownPesticide('%32,5 Fosetyl-Al + %25 Mancozeb + %2,5 Cymoxanil',
                  '400', 21),
              ShownPesticide(
                  '%35 Metalik bakıra eşdeğer bakır hidroksit', '200', 14),
              ShownPesticide(
                  '%39,75 Metalik bakıra eşdeğer bakır oksiklorid + %4,2 Cymoxanil',
                  '200',
                  7),
              ShownPesticide(
                  '%40 Metalik bakıra eşdeğer bakır oksiklorid + %6 Dimethomorp',
                  '300',
                  7),
              ShownPesticide(
                  '%40 Metalik bakıra eşdeğer tribazik bakır sülfat', '150', 3),
              ShownPesticide('%45 Mancozeb + %5 Cymoxanil', '300', 14),
              ShownPesticide('%50 Folpet', '3', 7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır hidroksit', '2.5', 7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır hidroksit', '2.5', 7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır oksiklorid', '500', 14),
              ShownPesticide('%62,5 Mancozeb + %6,25 Famoxadone', '80', 3),
              ShownPesticide('%70 Metiram', '175', 7),
              ShownPesticide('%72 Mancozeb', '250', 14),
              ShownPesticide('%80 Captan', '185', 14),
              ShownPesticide('%80 Mancozeb', '200', 14),
              ShownPesticide(
                  '193 g/l Metalik bakıra eşdeğer bazik bakır sülfat',
                  '500',
                  21),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 125 g/l Difenoconazole', '0.6', 3),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '100', 3),
              ShownPesticide('250 g/l Azoxystrobin', '75', 3),
              ShownPesticide('250 g/l Tebuconazole', '50', 7),
              ShownPesticide(
                  '259 g/l Metalik bakıra eşdeğer bakır hidroksit + 49 g/l Metalaxyl',
                  '500',
                  14),
              ShownPesticide(
                  '357,5 g/l Metalik bakıra eşdeğer bakır oksiklorid',
                  '420',
                  14),
              ShownPesticide(
                  '375 g/l Fluazinam + 150 g/l Azoxystrobin', '50', 3),
              ShownPesticide('455 g/l Mancozeb', '450', 14),
              ShownPesticide('500 g/l Captan', '2.4', 14),
              ShownPesticide('500 g/l Imazalil', '30', 3),
              ShownPesticide(
                  '51,4 g/l Metalik Bakıra eşdeğer Yağ ve Rosin Asitlerinin Bakır Tuzları',
                  '2',
                  7),
              ShownPesticide(
                  '700 g/l Metalik bakıra eşdeğer bakır oksiklorid', '175', 14),
              ShownPesticide(
                  '75 g/l Fluxapyroxad + 50 g/l Difenoconazole', '1', 3),
            ]
          },
          {
            'Grey Mold': [
              ShownPesticide('%26,7 Boscalid + %6,7 Pyraclostrobin', '150', 3),
              ShownPesticide('%37,5 Cyprodinil + %25 Fludioxonil', '60', 7),
              ShownPesticide('%40 Iminoctadine tris (albesilate)', '45', 1),
              ShownPesticide('%50 Captan', '250', 14),
              ShownPesticide('%60 Folpet + %15 Prochloraz', '300', 7),
              ShownPesticide('222,5 g/l Tea tree oil', '150', 0),
              ShownPesticide('300 g/l Pyrimethanil', '125', 3),
              ShownPesticide('500 g/l Fenhexamid', '100', 7),
              ShownPesticide('500 g/l Imazalil', '30', 3),
              ShownPesticide(
                  'Trichoderma harzianum rifai ırk KRL-AG2 (T 22) 400 milyon spor/gr',
                  '60',
                  0),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide('%1,34 Bacillus subtilis QST 713 ırkı', '14', 0),
              ShownPesticide('%15 Triflumizole + %3,4 Cyflufenamid', '25', 1),
              ShownPesticide('%26,7 Boscalid + %6,7 Pyraclostrobin', '1', 3),
              ShownPesticide('%50 Kresoxim-methyl', '25', 3),
              ShownPesticide(
                  '%58,5x10 üzeri 9 cfu/ml Ampelomyces quisqualis isolate m-10',
                  '5',
                  0),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', '80', 3),
              ShownPesticide('100 g/l Penconazole', '50', 7),
              ShownPesticide('100 g/l Tetraconazole', '50', 3),
              ShownPesticide('12,5 g/l COS-OGA', '200', 0),
              ShownPesticide('125 g/l Isopyrazam', '100', 1),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 125 g/l Difenoconazole', '100', 3),
              ShownPesticide(
                  '200 g/l Boscalid + 100 g/l Kresoxim-methyl', '50', 3),
              ShownPesticide(
                  '200 g/l Fluopyram + 200 g/l Tebuconazole', '30', 3),
              ShownPesticide('200 g/l Penthiopyrad', '125', 1),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '125', 3),
              ShownPesticide('222,5 g/l Tea tree oil', '200', 0),
              ShownPesticide('224,6 g/l Reynoutria spp. ekstraktı', '200', 0),
              ShownPesticide('250 g/l Bupirimate', '100', 7),
              ShownPesticide(
                  '250 g/l Fluopyram+ 250 g/l Trifloxystrobin', '20', 3),
              ShownPesticide('250 g/l Tebuconazole', '50', 3),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '50', 3),
              ShownPesticide('500 g/l Metrafenone', '0.2', 3),
              ShownPesticide('51,3 g/l Cyflufenamid', '25', 1),
              ShownPesticide('700 g/l Kükürt', '200', 0),
              ShownPesticide('722 g/l Propamocarb-HCI', '250', 3),
              ShownPesticide(
                  '75 g/l Fluxapyroxad + 50 g/l Difenoconazole', '0.6', 3),
              ShownPesticide('800 g/l Kükürt', '400', 0),
            ]
          },
          {
            'Bacterial Spot': [
              ShownPesticide(
                  '%21 Metalik bakıra eşdeğer bakır tuzları (Bordo bulamacı + Bakır oksiklorid + Bakır karbonat) + %20 Mancozeb',
                  '300',
                  7),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır oksiklorid', '300', 14),
              ShownPesticide(
                  '400 g/l Metalik Bakıra Eşdeğer Bakır Hidroksit', '200', 14),
            ]
          },
          {
            'Leaf Miner': [
              ShownPesticide(
                  '230 g/l Metaflumizone+16 g/l Abamectin', '100', 3),
              ShownPesticide('% 5.7 Emamectin benzoate', '40', 7),
              ShownPesticide('%20 Flubendiamide', '15', 1),
              ShownPesticide('%30 Indoxacarb', '12', 3),
              ShownPesticide('%35 Chlorantraniliprole', '10', 1),
              ShownPesticide('%50 Bacillus thuringiensis', '100', 0),
              ShownPesticide('10 g/l Azadirachtin', '500', 3),
              ShownPesticide('100 g/l Cyantraniliprole', '60', 3),
              ShownPesticide('100 g/l Novaluron', '90', 3),
              ShownPesticide(
                  '106 g/l Indoxacarb+53 g/l Emamectin benzoate', '0.25', 7),
              ShownPesticide('120 g/l Spinetoram', '50', 3),
              ShownPesticide('150 g/l Indoxacarb', '40', 3),
              ShownPesticide(
                  '16000 IU/mg Bacillus thuringiensis var. kurstaki', '200', 0),
              ShownPesticide('200 g/l Cyantraniliprole', '0.35', 3),
              ShownPesticide(
                  '200 g/l Thiamethoxam + 100 g/l Chlorantraniliprole',
                  '0.8',
                  7),
              ShownPesticide('222 g/l Flubendiamide', '30', 1),
              ShownPesticide(
                  '230 g/l Metaflumizone+16 g/l Abamectin', '100', 3),
              ShownPesticide('240 g/l Indoxacarb + 80 g/l Novaluron', '20', 3),
              ShownPesticide('240 g/l Metaflumizone', '1', 3),
              ShownPesticide('240 g/l Spinosad', '50', 3),
              ShownPesticide(
                  '32000 CLU/mg Bacillus thuringiensis subsp kurstaki ABTS-351 ırkı',
                  '100',
                  0),
              ShownPesticide(
                  '32000 IU/mg Bacillus thuringiensis berliner var kurstaki',
                  '100',
                  0),
              ShownPesticide(
                  '35000 DBM/mg Bacillus thuringiensis var. aizawai strain ABTS-1857',
                  '150',
                  0),
              ShownPesticide(
                  '45 g/l Chlorantraniliprole + 18 g/l Abamectin', '80', 3),
              ShownPesticide('480 g/l Spinosad', '25', 3),
              ShownPesticide(
                  '500 g/l Primiphos Methyl + 7,5 g/l Emamectin Benzoate',
                  '200',
                  7),
              ShownPesticide('500 g/l Pyridalyl', '50', 1),
              ShownPesticide(
                  '64 g/l Indoxacarb+43 g/l Emamectin benzoate', '40', 7),
              ShownPesticide('75 g/l Indoxacarb + 18 g/l Abamectin', '45', 3),
              ShownPesticide(
                  'Bacillus thuringiensis kurstaki EG 2348 24.000 UI / mg',
                  '150',
                  0),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki (16.000 IU/mg)',
                  '200',
                  0),
            ]
          },
          {
            'Fruit Borer': [
              ShownPesticide('% 5.7 Emamectin benzoate', '0.25', 7),
              ShownPesticide('%35 Chlorantraniliprole', '0.12', 1),
              ShownPesticide('%5 Emamectin benzoate', '0.3', 7),
              ShownPesticide('%50 Bacillus thuringiensis', '1.2', 0),
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.5', 14),
              ShownPesticide(
                  '100 g/l Chlorantraniliprole + 50 g/l Lambda-cyhalothrin',
                  '0.4',
                  3),
              ShownPesticide('100 g/l Cyantraniliprole', '0.75', 3),
              ShownPesticide('100 g/l Cypermethrin', '0.75', 7),
              ShownPesticide('100 g/l Novaluron', '0.60', 3),
              ShownPesticide('100 g/l Zeta-cypermethrin', '0.50', 7),
              ShownPesticide('150 g/l Indoxacarb', '40', 3),
              ShownPesticide('150 g/l Indoxacarb methyl', '0.4', 3),
              ShownPesticide(
                  '16000 IU/mg Bacillus thuringiensis var. kurstaki', '200', 0),
              ShownPesticide('20 g/l Emamectin benzoate', '70', 7),
              ShownPesticide('200 g/l Cyantraniliprole', '0.35', 3),
              ShownPesticide('200 g/l Esfenvalerate', '0.6', 7),
              ShownPesticide(
                  '230 g/l Metaflumizone+16 g/l Abamectin', '100', 3),
              ShownPesticide('240 g/l Metaflumizone', '1', 3),
              ShownPesticide('25 g/l Deltamethrin', '0.5', 3),
              ShownPesticide('250 g/l Cypermethrin', '0.3', 7),
              ShownPesticide(
                  '300 g/l Lambda-cyhalothrin + 80 g/l Emamectin Benzoate',
                  '0.075',
                  7),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '0.4', 1),
              ShownPesticide(
                  '32000 CLU/mg Bacillus thuringiensis subsp kurstaki ABTS-351 ırkı',
                  '100',
                  0),
              ShownPesticide(
                  '32000 IU/mg Bacillus thuringiensis berliner var kurstaki',
                  '100',
                  0),
              ShownPesticide(
                  '45 g/l Chlorantraniliprole + 18 g/l Abamectin', '0.9', 3),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '0.5', 3),
              ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
              ShownPesticide('500 g/l Pyridalyl', '0.20', 3),
              ShownPesticide('60 g/l Gamma-cyhalothrin', '0.25', 3),
              ShownPesticide('650 g/l Malathion', '2', 7),
              ShownPesticide(
                  'Bacillus thuringiensis kurstaki EG 2348 24.000 UI / mg',
                  '300',
                  0),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki (serotype H3a 3b 3c) 1x 10 üzeri 8 CFU / g',
                  '100',
                  0),
            ]
          },
          {
            'Whiteflies': [
              ShownPesticide('200 g/l Cyantraniliprole', '0.5', 3),
              ShownPesticide(
                  '200 g/l Thiamethoxam + 100 g/l Chlorantraniliprole',
                  '0.8',
                  7),
              ShownPesticide('240 g/l Spiromesifen', '60', 3),
              ShownPesticide('240 g/l Thiacloprid', '50', 3),
              ShownPesticide('240 g/l Thiamethoxam', '1', 5),
              ShownPesticide('250 g/l Cypermethrin', '0.3', 7),
              ShownPesticide('350 g/l Imidacloprid', '1', 7),
              ShownPesticide('400 g/l Buprofezin', '0.1', 7),
              ShownPesticide(
                  '50 g/l Buprofezin + 6.2 g/l Deltamethrin', '0.6', 3),
              ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
              ShownPesticide(
                  'Beauveria bassiana PPRI 5339 ırkı >8.0 x 10 üzeri 9 cfu/ml',
                  '0.5',
                  0),
            ]
          },
          {
            'Aphids': [
              ShownPesticide('500 g/l Pirimiphos methyl', '100', 4),
            ]
          },
        ],
        'Italy': [
          {
            'Alternariosis Tomato': [
              ShownPesticide('Difenoconazolo 25%', '0,5 lt/ha', 7),
              ShownPesticide('Rame metallo 20 %', '2,4 lt/ha', 3),
              ShownPesticide('Rame metallo 28%', '2,5 kg/ha', 10),
              ShownPesticide('Azoxystrobin 22,8%', '0,8 lt/ha', 3),
              ShownPesticide('Azoxystrobin  22,01 %', '1 lt/ha', 3),
              ShownPesticide('Rame solfato tribasico 15,2%', '3,5 lt/ha', 10),
              ShownPesticide('Rame metallo 12%', '4 lt/ha', 10),
              ShownPesticide('Rame metallo 10%', '6 lt/ha', 10),
              ShownPesticide('Rame metallo 25%', '2,9 kg/ha', 3),
              ShownPesticide('Rame metallo 30%', '1,7 kg/ha', 10),
              ShownPesticide(
                  'Pyraclostrobin 3,8% Dimetomorf 6,9%', '2,5 lt/ha', 3),
              ShownPesticide('Pyraclostrobin 5% Metiram 55%', '2 kg/ha', 7),
              ShownPesticide('Captano 80%', '2,5 kg/ha', 21),
              ShownPesticide('Rame metallo 37,5 %', '2 kg/ha', 3),
              ShownPesticide('Difeconazolo 23,6%', '0,5 kg/ha', 3),
              ShownPesticide(
                  'Difenoconazolo 11,5% Cyflufenamid 1,38%', '1 lt/ha', 3),
              ShownPesticide(
                  'Cimoxanil 4,2% Rame metallo 39,75%', '300 gr/hl', 10),
              ShownPesticide('Rame metallo 75%', '1,33 kg/ha', 10),
              ShownPesticide(
                  'metalaxil-M* 1,85% rame metallo 15,4%', '4 lt/ha', 10),
              ShownPesticide('Rame metallo 35%', '720 gr/hl', 3),
              ShownPesticide('Rame metallo 14%', '5 kg/ha', 3),
              ShownPesticide('Rame 31,2% Zolfo 22,8%', '1 kg/hl', 5),
              ShownPesticide('Rame 13% Zolfo 21%', '700 ml/hl', 5),
              ShownPesticide(
                  'Fluxapiroxad 6,98% Difeconazolo 466%', '1 lt/ha', 3),
              ShownPesticide('Rame metallo puro 40%', '2,5 kg/ha', 5),
              ShownPesticide('Difeconazolo 25,97%', '0,5 lt/ha', 5),
              ShownPesticide('Difenoconazolo 23,23%', '0,5 lt/ha', 7),
              ShownPesticide(
                  'Fosetil alluminio 25% Rame metallo 25%', '6 kg/ha', 20),
              ShownPesticide('Difeconazolo 1,8%', '7,5 lt/ha', 20),
              ShownPesticide('Cymoxanil 30% Famoxadone 22,5%', '400 gr/ha', 3),
              ShownPesticide('Folpet 80%', '1,5 kg/ha', 10),
              ShownPesticide('Folpet 40%', '2,5 lt/hl', 3),
              ShownPesticide('Rame metallo 26.2%', '150 ml/hl', 20),
              ShownPesticide('Cimoxanil 30% Famoxadone 22,5%', '400 gr/ha', 3),
              ShownPesticide('rame metallo  24%', '1,4 lt/ha', 3),
              ShownPesticide('Rame metallo 13%', '5 lt/ha', 5),
              ShownPesticide('Cimoxanil 2,5% Zoxamide 3,2%', '4,5 lt/ha', 3),
              ShownPesticide('Rame 3,5% Metalaxil 18,5%', '3,2 lt/ha', 14),
              ShownPesticide('Rame metallo 22%', '2,8 kg/ha', 3),
              ShownPesticide(
                  'metalaxil-M* 1,85%  Rame metallo 15,4%', '4 lt/ha', 10),
              ShownPesticide('Azoxystrobin 23,2%', '0,8 lt/ha', 3),
              ShownPesticide(
                  'Azoxystrobin 18%  Difenoconazolo 11,3%', '1 lt/ha', 7),
              ShownPesticide('Rame metallo 50%', '2 kg/ha', 10),
              ShownPesticide('Metiram 70%', '2 kg/ha', 7),
              ShownPesticide('Zoxamide 16,7% Dimetomorf 16,5%', '1 lt/ha', 3),
              ShownPesticide('Dimetomorf 11,3% Folpet 60%', '2 kg/ha', 7),
              ShownPesticide('Isopyrazam 13,1%', '1 lt/ha', 1),
              ShownPesticide(
                  'Mandipropamid 21,8% Difenoconazolo 21,8%', '0,6 lt/ha', 3),
              ShownPesticide('Bacilluis subtilis 1,34%', '8 lt/ha', 0),
              ShownPesticide(
                  'cimoxanil* 2,9% rame metallo 18%', '3,1 kg/ha', 3),
              ShownPesticide('Bacillus amyloliquefaciens 13%', '370 gr/ha', 4),
              ShownPesticide(
                  'Rame metallo 15,4% Metalaxil-M 1,85%', '4 lt/ha', 10),
              ShownPesticide('folpet 26,77% rame metallo 8,92%', '2 lt/ha', 7),
              ShownPesticide(
                  'FOSETIL ALLUMINIO 18% RAME metallo 15%', '6 kg/ha', 20),
              ShownPesticide('Cimoxanil 2,85% Fosetil Alluminio 30% Rame 16%',
                  '4,5 kg/ha', 20),
              ShownPesticide('Azoxystrobin 23,2%', '0,8 lt/ha', 3),
              ShownPesticide('Rame metallo 25,42%', '3,3 lt/ha', 3),
              ShownPesticide('Zoxamide (240 g/l) 21,8%', '0,75 lt/ha', 3),
            ]
          },
          {
            'Tomato Downy Mildew': [
              ShownPesticide('Metalaxil-M puro 2,26% Rame Idrossido 17,06%',
                  '3,5 lt/ha', 10),
              ShownPesticide('Rame metallo 30%', '1,5 kg/ha', 10),
              ShownPesticide('Rame metallo 20%', '2,4 lt/ha', 3),
              ShownPesticide('Rame metallo 28%', '2,5 kg/ha', 10),
              ShownPesticide(
                  'Dimetomorf puro 11,3% Folpet puro 60%', '1,6 kg/ha', 7),
              ShownPesticide(
                  'Bacillus amyloliquefaciens subspecie plantarum, ceppo D747  5%',
                  '5 lt/ha',
                  0),
              ShownPesticide('Metalaxil-M 30,95%', '100ml/100kg', 0),
              ShownPesticide(
                  'Cimoxanil 22,5 % Ametoctradina 20%', '1,2 lt/ha', 3),
              ShownPesticide(
                  'FOSETIL ALLUMINIO 60% CIMOXANIL 4%', '2,5 Kg/ha', 20),
              ShownPesticide('propamocarb cloridrato 36,87%', '2,5 lt/ha', 3),
              ShownPesticide('Azoxystrobin  22,8 %', '1 lt/ha', 3),
              ShownPesticide('Azoxystrobin puro 22,01 %', '1 lt/ha', 3),
              ShownPesticide('Ciazofamide 14,8%', '0,5 lt/ha', 3),
              ShownPesticide('Ciazofamid 9,5%', '1,1 lt/ha', 3),
              ShownPesticide('Cimoxanil 45%', '220 gr/ha', 3),
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide('Rame metallo 15,2%', '3,5 lt/ha', 3),
              ShownPesticide('Rame metallo 12%', '4 lt/ha', 10),
              ShownPesticide('Rame metallo 10%', '6 lt/ha', 10),
              ShownPesticide('Rame metallo 25%', '2,9 kg/ha', 3),
              ShownPesticide(
                  'Pyraclostrobin 3,8% Dimetomorf 6,9%', '2,5 lt/ha', 3),
              ShownPesticide('Pyraclostrobin 5% Metiram 55%', '2 Kg/ha', 7),
              ShownPesticide('Cimoxanil 4% Rame metallo 25%', '3 kg/ha', 10),
              ShownPesticide('Rame metallo 37,5 %', '2 Kg/ha', 3),
              ShownPesticide('RAME metallo 20% CIMOXANIL 4%', '300 gr/hl', 3),
              ShownPesticide(
                  'RAME metallo 39,75% CIMOXANIL 4,2%', '300 gr/hl', 10),
              ShownPesticide('Rame metallo 75%', '1,33 kg/ha', 10),
              ShownPesticide('rame metallo 17%', '3,3 kg/ha', 10),
              ShownPesticide(
                  'metalaxil-M* 1,85% rame metallo 15,4%', '4 lt/ha', 10),
              ShownPesticide('Rame metallo 35%', '720 gr/hl', 3),
              ShownPesticide('Rame metallo 14,84%', '4 lt/ha', 3),
              ShownPesticide(
                  'Rame metallo 20,3% Zolfo 14,85%', '1000 gr/hl', 5),
              ShownPesticide('Rame metallo 13% Zolfo 21%', '700 ml/hl', 5),
              ShownPesticide('Rame metallo puro 40%', '2,5 kg/ha', 3),
              ShownPesticide('CYMOXANIL 2,4 % RAME metallo 15%', '5 kg/ha', 10),
              ShownPesticide('Cymoxanil 20%', '780 gr/ha', 3),
              ShownPesticide('Cymoxanil 60%', '0,26 kg/ha', 3),
              ShownPesticide('cyazofamid 9,5 %', '0,8 lt/ha', 3),
              ShownPesticide('DIMETOMORF 43,8%', '360 ml/ha', 10),
              ShownPesticide(
                  'Fosetil alluminio 25% Rame metallo 25%', '5 kg/ha', 20),
              ShownPesticide(
                  'Ametoctradina 27% Dimetomorf 20,3%', '0,8 lt/ha', 3),
              ShownPesticide('Ametoctradina 19,2%', '1,2 lt/ha', 1),
              ShownPesticide('Ametoctradina 12% Metiram 44%', '2 kg/ha', 3),
              ShownPesticide('Cymoxanil 30% Famoxadone 22,5%', '400 gr/ha', 3),
              ShownPesticide(
                  'Olio essenziale di arancio dolce 5,88%', '4 lt/ha', 3),
              ShownPesticide('Rame metallo 15%', '3,7 kg/ha', 10),
              ShownPesticide(
                  'Mandipropamid 2,5% Rame metallo 13,95%', '5 kg/ha', 10),
              ShownPesticide('Folpet 80%', '1,5 kg/ha', 10),
              ShownPesticide('Folpet 39,7%', '2 lt/ha', 10),
              ShownPesticide('Dimetomorf 6% Rame metallo 24 %', '3,5 kg/ha', 3),
              ShownPesticide('Dimetomorf 9% Metiram 44%', '2,5 kg/ha', 7),
              ShownPesticide('Amisulbron 20%', '0,6 lt/ha', 3),
              ShownPesticide('Rame metallo 26.2%', '200 ml/hl', 20),
              ShownPesticide('Cimoxanil 30% Famoxadone 22,5%', '400 gr/ha', 3),
              ShownPesticide('rame metallo 24%', '1,4 lt/ha', 3),
              ShownPesticide('Rame metallo 13%', '5 lt/ha', 3),
              ShownPesticide('AMISULBROM 17,7 %', '0,6 lt/ha', 3),
              ShownPesticide('Cimoxanil 2,5%  Zoxamide 3,2%', '4,5 lt/ha', 3),
              ShownPesticide('Captano 80%', '2,25 kg/ha', 21),
              ShownPesticide(
                  'Metalaxil 3,5% Rame metallo 18,5%', '3,2 lt/ha', 21),
              ShownPesticide('Rame metallo 22%', '2,8 kg/ha', 10),
              ShownPesticide('Azoxystrobin 23,2%', '0,8 lt/ha', 3),
              ShownPesticide('Propamocarb 67%', '10 ml/mq', 0),
              ShownPesticide(
                  'Rame metallo 15% Fosetyl-aluminium 20%', '6 kg/ha', 20),
              ShownPesticide('Oxathiapiprolin 10,10%', '0,2 lt/ha', 3),
              ShownPesticide(
                  'Azoxystrobin 18% Difenoconazolo 11,3%', '1 lt/ha', 7),
              ShownPesticide('Rame metallo 50%', '2,5 kg/ha', 3),
              ShownPesticide('Rame metallo 36,7%', '2 lt/ha', 10),
              ShownPesticide(
                  'Mandipropamid 23,3% Cymoxanil 20,9%', '0,6 lt/ha', 3),
              ShownPesticide('Rame metallo 35%', '250 gr/hl', 3),
              ShownPesticide('Mandipropamid 23,3%', '0,6 lt/ha', 3),
              ShownPesticide('Metiram 70%', '2 kg/ha', 7),
              ShownPesticide('Pythium oligandrum 17,5%', '300 gr/ha', 0),
              ShownPesticide('Zoxamide 16,7% Dimetomorf 16,5%', '1 lt/ha', 3),
              ShownPesticide(
                  'Olio essenziale di arancio dolce 5,88%', '2 lt/ha', 3),
              ShownPesticide(
                  'Propamocarb 36,87% Cimoxanil puro 4,61%', '2,5 lt/ha', 3),
              ShownPesticide('Rame metallo 14% Dimetomorf 6%', '3,5 kg/ha', 7),
              ShownPesticide(
                  'dimetomorf 4,45% rame metallo 17,8%', '3,5 lt/ha', 3),
              ShownPesticide(
                  'Rame metallo 15% Fosetil alluminio 20%', '6 kg/ha', 20),
              ShownPesticide('Rame metallo 32 %', '3 kg/ha', 3),
              ShownPesticide('RAME metallo 13% ZOLFO 21%', '700 ml/hl', 5),
              ShownPesticide('Zoxamide 33% Cimoxanil 33%', '450 gr/ha', 3),
              ShownPesticide(
                  'Mandipropamid 21,8%  Difenoconazolo 21,8%', '0,6 lt/ha', 3),
              ShownPesticide(
                  'Metalaxil-M 2% Rame metallo 14,19%', '5 kg/ha', 3),
              ShownPesticide('cimoxanil* 2,9% rame metallo 18%', '3 kg/ha', 3),
              ShownPesticide('Azoxistrobin 23,2%', '0,8 lt/ha', 3),
              ShownPesticide('folpet 26,77% rame metallo 8,92%', '2 lt/ha', 7),
              ShownPesticide(
                  'FOSETIL ALLUMINIO 18% RAME metallo 15%', '6 kg/ha', 20),
              ShownPesticide(
                  'benthiavalicvarb 1,75% rame metallo 37,5%', '1,6 kg/ha', 10),
              ShownPesticide('M-Metalaxyl puro 2,26 %  Rame metallo 17,06 %',
                  '3,5 lt/ha', 10),
              ShownPesticide('cimoxanil 3% rame metallo 22,5%', '4 kg/ha', 10),
              ShownPesticide('M-Metalaxyl puro 2,26 % Rame metallo 17,06 %',
                  '3,5 lt/ha', 10),
              ShownPesticide('Cimoxanil 2,85% Fosetil Alluminio 30% Rame 16%',
                  '4,5 kg/ha', 20),
              ShownPesticide('Fluazinam puro  39,1%', '0,4 lt/ha', 7),
              ShownPesticide('Zolfo 94,05% rame 0,45%', '25 kg/ha', 5),
              ShownPesticide('Zolfo 93,5% rame metallo 0,75%', '25 kg/ha', 20),
              ShownPesticide('Zoxamide 21,8%', '0,75 lt/ha', 3),
            ]
          },
          {
            'Tomato Powdery Mildew': [
              ShownPesticide(
                  'Eugenolo 3,2% Geraniolo 6,4% Timolo 6,4%', '4 lt/ha', 3),
              ShownPesticide('Difenoconazolo 23,23%', '0,5 lt/ha', 7),
              ShownPesticide(
                  'Bacillus amyloliquefaciens, subspecie plantarum, ceppo D747 25%',
                  '2,5 kg/ha',
                  0),
              ShownPesticide('Ampelomyces quisqualis 58%', '70 gr/ha', 0),
              ShownPesticide('BICARBONATO DI POTASSIO 85%', '3 kg/ha', 1),
              ShownPesticide('Tebuconazolo 24,03%', '1 lt/ha', 3),
              ShownPesticide('Zolfo 80%', '200 gr/hl', 3),
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide(
                  'Difenoconazolo 11,5 % Cyflufenamid 1,38%', '1 lt/ha', 3),
              ShownPesticide('Rame metallo 13% Zolfo 21%', '700 ml/hl', 5),
              ShownPesticide('Rame metallo 20,3% Zolfo 14,85%', '1 kg/ha', 5),
              ShownPesticide(
                  'fluxapyroxad 6% difenoconazolo 4%', '60 ml/hl', 3),
              ShownPesticide('Tebuconazolo 25 %', '0,5 kg/ha', 3),
              ShownPesticide('Tetraconazolo 11,6%', '360 ml/ha', 7),
              ShownPesticide('Penconazolo 10%', '50 gr/hl', 14),
              ShownPesticide('Penconazolo 10,20%', '50 gr/hl', 14),
              ShownPesticide('COS-OGA 1,25%', '2 lt/ha', 0),
              ShownPesticide('Metam sodio 32,7%', '446 lt/ha', 0),
              ShownPesticide('Zolfo 55,7%', '2 lt/ha', 5),
              ShownPesticide('Tebuconazolo 24,03%', '1 lt/ha', 3),
              ShownPesticide('Tebuconazolo 19,6%', '60 ml/hl', 3),
              ShownPesticide('Tebuconazolo 3,85%', '1,25 lt/ha', 3),
              ShownPesticide('RAME metallo 13% ZOLFO 21%', '700 ml/hl', 5),
              ShownPesticide('Isopyrazam 13,1%', '1 lt/ha', 1),
              ShownPesticide('Miclobutanil 12,4%', '600 ml/ha', 3),
              ShownPesticide(
                  'Boscalid 26,7% Piraclostrobin 6,7%', '150 gr/hl', 3),
              ShownPesticide('Bacillus pumilus QST 2808 1,38%', '10 lt/ha', 0),
              ShownPesticide('Zolfo 35%', '30 kg/ha', 5),
              ShownPesticide('Bacillus amyloliquefaciens (ceppo FZB24) 13%',
                  '370 gr/ha', 4),
              ShownPesticide('Ciflufenamid 10%', '150 ml/ha', 0),
              ShownPesticide('Zolfo 46,75%', '240 ml/hl', 5),
              ShownPesticide('tetraconazolo 11,6%', '360 ml/ha', 7),
              ShownPesticide('Zolfo 50%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 85%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 95%', '40 kg/ha', 5),
              ShownPesticide('ZOLFO 49,5%', '220 ml/hl', 5),
              ShownPesticide('Zolfo 90% Rame 0,54%', '25 kg/ha', 5),
              ShownPesticide('Zolfo 91,08%', '500 gr/hl', 5),
              ShownPesticide('Zolfo 97% Rame 0,5%', '25 kg/ha', 5),
              ShownPesticide('Zolfo 96%', '35 kg/ha', 5),
              ShownPesticide('Zolfo 98,5%', '30 kg/ha', 5),
              ShownPesticide('Zolfo 94,05% Rame 0,45%', '25 kg/ha', 5),
              ShownPesticide('Zolfo 93,5 Rame 0,75%', '25 kg/ha', 5),
              ShownPesticide('Zolfo 40%', '30 kg/ha', 5),
            ]
          },
          {
            'Pomiodor Phyllominator': [
              ShownPesticide('Abamectina 1,89%', '1 lt/ha', 3),
              ShownPesticide('Sali potassici 14,2%', '19 lt/ha', 0),
              ShownPesticide('Emamectina benzoato 0,95%', '1,5 kg/ha', 3),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner subsp. aizawai, ceppo GC 91 50%',
                  '2 kg/ha',
                  0),
              ShownPesticide('Cipermetrina 9,8%', '60 ml/hl', 3),
              ShownPesticide('Chlorantraniliprole 35%', '12 gr/hl', 3),
              ShownPesticide('Metaflumizone 22%', '1 lt/ha', 3),
              ShownPesticide(
                  'Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                  '0,2 lt/ha',
                  3),
              ShownPesticide(
                  'Bacillus thuringiensis subsp. kurstaki-abts-351/322 54%',
                  '1 kg/ha',
                  0),
              ShownPesticide('Lambda-cialotrina 9,4%', '125 ml/ha', 3),
              ShownPesticide('Bacillus thuringiensis subsp. Kurstaki PB-54 16%',
                  '1 kg/ha', 3),
              ShownPesticide(
                  'Bacillus thuringiensis sottospecie kurstaki ceppo EG2348 18,80%',
                  '2 lt/ha',
                  0),
              ShownPesticide('Deltametrina 2,81%', '50 ml/hl', 3),
              ShownPesticide('Spinosad 11,6%', '800 ml/hl', 3),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki, ceppo SA12 18%',
                  '1 kg/ha',
                  3),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                  '1,5 kg/ha',
                  0),
              ShownPesticide('Spinetoram 3%', '2,4 lt/ha', 3),
              ShownPesticide('Spinosad 44,2%', '200 ml/ha', 3),
              ShownPesticide('Bacillus thuringiensis 37.50%', '1,5 lt/ha', 0),
              ShownPesticide('Tebufenozide 22,5%', '90 ml/hl', 3),
              ShownPesticide(
                  'Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                  '1 lt/ha',
                  3),
              ShownPesticide('Azadiractina 1%', '3 lt/ha', 3),
              ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha', 3),
              ShownPesticide('Etofenprox 30%', '500 ml/ha', 3),
              ShownPesticide(
                  'Chlorantraniliprole 4,29% Abamectina 1,71%', '0,8 lt/ha', 7),
            ]
          },
          {
            'Green Bed Bug': [
              ShownPesticide('Abamectina 1,89%', '1 lt/ha', 3),
              ShownPesticide('Sali potassici 14,2%', '19 lt/ha', 0),
              ShownPesticide('Emamectina benzoato 0,95%', '1,5 kg/ha', 3),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner subsp. aizawai, ceppo GC 91 50%',
                  '2 kg/ha',
                  0),
              ShownPesticide('Cipermetrina 9,8%', '60 ml/hl', 3),
              ShownPesticide('Chlorantraniliprole 35%', '12 gr/hl', 3),
              ShownPesticide('Metaflumizone 22%', '1 lt/ha', 3),
              ShownPesticide(
                  'Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                  '0,2 lt/ha',
                  3),
              ShownPesticide(
                  'Bacillus thuringiensis subsp. kurstaki-abts-351/322 54%',
                  '1 kg/ha',
                  0),
              ShownPesticide('Lambda-cialotrina 9,4%', '125 ml/ha', 3),
              ShownPesticide('Bacillus thuringiensis subsp. Kurstaki PB-54 16%',
                  '1 kg/ha', 3),
              ShownPesticide(
                  'Bacillus thuringiensis sottospecie kurstaki ceppo EG2348 18,80%',
                  '2 lt/ha',
                  0),
              ShownPesticide('Deltametrina 2,81%', '50 ml/hl', 3),
              ShownPesticide('Spinosad 11,6%', '800 ml/hl', 3),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki, ceppo SA12 18%',
                  '1 kg/ha',
                  3),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                  '1,5 kg/ha',
                  0),
              ShownPesticide('Spinetoram 3%', '2,4 lt/ha', 3),
              ShownPesticide('Spinosad 44,2%', '200 ml/ha', 3),
              ShownPesticide('Bacillus thuringiensis 37.50%', '1,5 lt/ha', 0),
              ShownPesticide('Tebufenozide 22,5%', '90 ml/hl', 3),
              ShownPesticide(
                  'Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                  '1 lt/ha',
                  3),
              ShownPesticide('Azadiractina 1%', '3 lt/ha', 3),
              ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha', 3),
              ShownPesticide('Etofenprox 30%', '500 ml/ha', 3),
              ShownPesticide(
                  'Chlorantraniliprole 4,29% Abamectina 1,71%', '0,8 lt/ha', 7),
            ]
          },
          {
            'Rusty Eryophyry': [
              ShownPesticide('Abamectina 1,89%', '1 lt/ha', 3),
              ShownPesticide('Sali potassici 14,2%', '19 lt/ha', 0),
              ShownPesticide('Emamectina benzoato 0,95%', '1,5 kg/ha', 3),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner subsp. aizawai, ceppo GC 91 50%',
                  '2 kg/ha',
                  0),
              ShownPesticide('Cipermetrina 9,8%', '60 ml/hl', 3),
              ShownPesticide('Chlorantraniliprole 35%', '12 gr/hl', 3),
              ShownPesticide('Metaflumizone 22%', '1 lt/ha', 3),
              ShownPesticide(
                  'Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                  '0,2 lt/ha',
                  3),
              ShownPesticide(
                  'Bacillus thuringiensis subsp. kurstaki-abts-351/322 54%',
                  '1 kg/ha',
                  0),
              ShownPesticide('Lambda-cialotrina 9,4%', '125 ml/ha', 3),
              ShownPesticide('Bacillus thuringiensis subsp. Kurstaki PB-54 16%',
                  '1 kg/ha', 3),
              ShownPesticide(
                  'Bacillus thuringiensis sottospecie kurstaki ceppo EG2348 18,80%',
                  '2 lt/ha',
                  0),
              ShownPesticide('Deltametrina 2,81%', '50 ml/hl', 3),
              ShownPesticide('Spinosad 11,6%', '800 ml/hl', 3),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki, ceppo SA12 18%',
                  '1 kg/ha',
                  3),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                  '1,5 kg/ha',
                  0),
              ShownPesticide('Spinetoram 3%', '2,4 lt/ha', 3),
              ShownPesticide('Spinosad 44,2%', '200 ml/ha', 3),
              ShownPesticide('Bacillus thuringiensis 37.50%', '1,5 lt/ha', 0),
              ShownPesticide('Tebufenozide 22,5%', '90 ml/hl', 3),
              ShownPesticide(
                  'Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                  '1 lt/ha',
                  3),
              ShownPesticide('Azadiractina 1%', '3 lt/ha', 3),
              ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
              ShownPesticide('Indoxacarb 30%', '125 gr/ha', 3),
              ShownPesticide('Etofenprox 30%', '500 ml/ha', 3),
              ShownPesticide(
                  'Chlorantraniliprole 4,29% Abamectina 1,71%', '0,8 lt/ha', 7),
            ]
          },
        ],
        'Romania': [
          {
            'Late Blight': [
              ShownPesticide('ALLSTAR 250 SC', '0,75-1,0L/ha', 3),
              ShownPesticide(
                  'BOUILLIE BORDELAISE WDG', '0,75% (7,5 KG/HA)', 10),
              ShownPesticide('CABRIO TOP ', '1,5 - 2,0 KG/HA', 7),
              ShownPesticide('CALIZI / SINPRO', '0,8 L/HA ', 3),
              ShownPesticide('CAPTAN 80 WDG/ CAIMAN ', '0,15% (1,5 KG/HA)', 21),
              ShownPesticide('CARIAL STAR', '0,6 L /HA', 3),
              ShownPesticide('CUPROFIX ULTRA / NOVICURE', '1,6 - 2,4 KG/HA', 3),
              ShownPesticide('CUPROXAT FLOWABLE / KUPFEROL ',
                  '3,0 - 4,0 L/HA, 5,3 L/HA, 53 ML/100 MP', 3),
              ShownPesticide('CURENOX 50', '1,5 - 2,0 KG/HA', 3),
              ShownPesticide('EQUATION PRO ', '0,4 KG/HA', 3),
              ShownPesticide('FLOWBRIX/COPPER-FIELD', '2,6 ML/MP, 2,5 L/HA', 0),
              ShownPesticide(
                  'FOLPAN 80 WDG/ FLOVINE', '0,15% (4-5 SOL./MP)', 0),
              ShownPesticide('KOCIDE 2000', '2,0 KG/HA (0,2 %)', 3),
              ShownPesticide('LIETO /ZETANIL ', '0,40 KG/HA', 3),
              ShownPesticide('MERPAN 80 WDG/ CAPTADIN 80 WDG',
                  '0,15% (1,5 KG/HA in 1000 l water)', 21),
              ShownPesticide('POLYRAM DF', '0,2 %', 0),
              ShownPesticide(
                  'PROPLANT 72,2 SL', '0,15 - 0,25% (1,5 -2,5 L/HA)', 3),
              ShownPesticide('VINCARE 51,7 WG', '1,6 - 2,0 KG/HA', 3),
              ShownPesticide('ZEAMA BORDELEZA ', '3,75 - 5,0 KG/HA', 3),
              ShownPesticide('REVUS 250 SC', '0,6 L/HA', 3),
              ShownPesticide('VITRA 50 WP/CUPRIDIN ', '1,5 - 2,0 KG/HA', 3),
              ShownPesticide('CYCLO-R LIQUIDO', '2,4 - 4,0 L/HA', 3),
              ShownPesticide('OMIX/EDEGAL ', '5-6 mL/mp', 3),
              ShownPesticide('COPFORCE EXTRA/CUPMAN ', '2,0 KG/HA ', 3),
              ShownPesticide('CUPERTINE SUPER/COMBIDUO COBRE', '3,5 KG/HA', 7),
              ShownPesticide('TAEGRO', '0,37 KG/HA', 3),
              ShownPesticide('ARMETIL COBRE/MANOXIN COMBI', '2,5 KG/HA', 3),
              ShownPesticide(
                  'EVALIA/TAZER', '0,05 - 0,08% (50-80 ml/100 l water)', 3),
              ShownPesticide(
                  'PREVICUR ENERGY',
                  '3 L/HA (treatment applied by drip), 3mL/mp (treatment applied to the soil)',
                  3),
              ShownPesticide('TRIUMF 40 WG', '2,0-2,5 KG/HA', 3),
              ShownPesticide('BASAMID GRANULE ', '500 KG/HA', 3),
            ]
          },
          {
            'Bacterial Speck': [
              ShownPesticide(
                  'BOUILLIE BORDELAISE WDG', '0,75% (7,5 KG/HA)', 10),
              ShownPesticide('CHAMP 77 WG/COPPERMAX ', '2,0 KG/HA (0,2%)', 3),
              ShownPesticide('CUPROFIX ULTRA/NOVICURE ', '1,6-2,4 KG/HA', 3),
              ShownPesticide('KOCIDE 2000', '2,0 KG/HA (0,2%)', 3),
              ShownPesticide('VITRA 50 WP/CUPRIDIN ', '1,5-2,0 KG/HA', 3),
              ShownPesticide(
                  'SEREDANE ASO (1,34%w/w, 1x10x12 CFU*/kg Bacillus subtilis QsT 713',
                  '4,0-8,0 L/HA',
                  3),
            ]
          },
          {
            'Early Blight': [
              ShownPesticide('ALLSTAR 250 SC', '0,75-1,0 L/HA', 3),
              ShownPesticide(
                  'BOUILLIE BORDELAISE WDG', '0,75 % (7,5 KG/HA)', 10),
              ShownPesticide('CALIZI /SINPRO ', '0,8 L/HA', 3),
              ShownPesticide('CARIAL STAR ',
                  '0,6 L/HA (for crops in the fields and protected areas)', 3),
              ShownPesticide('CASINO ROYALE ', '1,5 KG/HA', 3),
              ShownPesticide('CUPROFIX ULTRA /NOVICURE ', '1,6-2,4 KG/HA', 3),
              ShownPesticide('CUPROXAT FLOWABLE/KUPFEROL', '3,0-4,0 L/HA', 0),
              ShownPesticide('CURENOX 50', '1,5-2,0 KG/HA', 3),
              ShownPesticide('DAGONIS ', '1,0 L/HA', 0),
              ShownPesticide('DIFCOR 250 EC', '0,5 L/HA', 7),
              ShownPesticide('ORIUS 25 EW/SALVATOR 25 EW ',
                  '0,05% (0,5 L/HA in 1000 l water)', 3),
              ShownPesticide('POLYRAM DF', '0,2%', 3),
              ShownPesticide('SCORE 250EC/MAVITA 250 EC ', '0,5L/HA', 3),
              ShownPesticide('ZEAMA BORDELEZA TIP "MIF" ', '3,75-5,0 KG/HA', 3),
              ShownPesticide('VITRA 50 WP/CUPRIDIN', '1,5-2,0 KG/HA', 3),
              ShownPesticide('COPFORCE EXTRA/CUPMAN ', '2,0 KG/HA', 3),
              ShownPesticide('CUPERTINE SUPER/COMBIDUO COBRE', '3,5 KG/HA', 0),
              ShownPesticide('TAEGRO', '0,37 KG/HA', 3),
              ShownPesticide(
                  'EVALIA/TAZER ', '0,05-0,08% (50-80 ml/100 l water)', 3),
            ]
          },
          {
            'Grey Mold': [
              ShownPesticide('BOTECTOR', '1,0 KG/HA', 0),
              ShownPesticide('DIFCOR 250 EC', '0,5 L/HA', 7),
              ShownPesticide(
                  'PYRUS 400 SC/PAPYRUS 400 SC', '0,15% (1,5 L/HA)', 7),
              ShownPesticide('SCALA ', '2,0 L/HA', 3),
              ShownPesticide('SIGNUM/SYREX STAR ', '1,5 KG/HA', 7),
              ShownPesticide('SWITCH 62,5 WG ', '0,8-1,0 KG/HA', 7),
              ShownPesticide('LUNA PRIVILEGE 500 SC', '0,5L/HA', 3),
              ShownPesticide(
                  'LUNA SENSATION 500 SC (250 g/L fluopiram +250 g/L trifloxistrobin)',
                  '0,6 L/HA',
                  3),
              ShownPesticide(
                  'SEREDANE ASO (1,34%w/w, 1x10x12 CFU*/kg Bacillus subtilis QsT 713',
                  '4,0-8,0 L/HA',
                  3),
              ShownPesticide('TELDOR 500 SC', '0,8 L/HA', 3),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide('CABRIO TOP', '1,5-2,0 KG/HA', 7),
              ShownPesticide('CALIZI/SINPRO', '0,8 L/HA', 3),
              ShownPesticide('DAGONIS', '0,6L/HA', 0),
              ShownPesticide('FLOSUL', '2,0L/HA', 3),
              ShownPesticide(
                  'REFLECT', '1,0L/HA(only in greenhouses and solariums)', 3),
              ShownPesticide('SIGNUM/SYREX STAR', '1,5 KG/HA', 3),
              ShownPesticide('SULBARI', '5,0 KG/HA', 3),
              ShownPesticide('DOMARK 10 EC', '0,4L/HA (0,04%)', 3),
              ShownPesticide('KANTAREL', '0,3-0,4 L/HA (0,03-0,04%)', 3),
              ShownPesticide('THIOVIT JET 80 WG', '5,0 KG/HA', 3),
              ShownPesticide('FYTOSAVE', '2,0L/HA', 3),
              ShownPesticide('LEGADO/DIAGONAL', '0,8L/HA', 3),
              ShownPesticide(
                  'EVALIA/TAZER', '0,05-0,08% (50-80 ml/100 l water)', 3),
              ShownPesticide(
                  'SONATA 14,35 g/L Bacillus pumilus tulpina Qst 2808(1x10/12 CfU*/kg)',
                  '5,0-10,0 L/HA',
                  3),
            ]
          },
          {
            'Bacterial Spot': [
              ShownPesticide('BOUILLIE BORDELAISE WDG', '0,75% (7,5 KG/HA', 10),
              ShownPesticide('CHAMP 77 WG/COPPERMAX', '2,0 KG/HA (0,2%)', 10),
              ShownPesticide('CUPROFIX ULTRA/NOVICURE', '1,6-2,4 KG/HA', 3),
              ShownPesticide('EQUATION PRO', '0,4 KG/HA', 3),
            ]
          },
          {
            'Tomato Leaf Miner': [
              ShownPesticide('AZATIN EC', '1,0-1,5 L/HA', 7),
              ShownPesticide('BERMECTINE', '1,0 L/HA (100 mL/hL)', 7),
              ShownPesticide('DELMUR', '500 mL/ha', 10),
              ShownPesticide('CORAGEN', '175 ml/HA', 10),
              ShownPesticide('MINECTO ALPHA', '1,0-1,25 L/HA', 7),
            ]
          },
          {
            'Tomato Fruit Borer': [
              ShownPesticide('AFFIRM', '1,5 KG/HA', 7),
              ShownPesticide('AVAUNT 150 EC', '0,250 L/HA', 7),
              ShownPesticide(
                  'BELTHIRUL', '0,25-0,50 KG/HA (800-1000 L WATER/HA)', 7),
              ShownPesticide('CORAGEN', '175 ml/HA', 3),
              ShownPesticide(
                  'PLINTO 2,5 EC/ALFASURE 2,5 EC', '0,4-0,6 L/HA', 10),
              ShownPesticide('ALVERDE', '0,1% (1,0L/HA/1000L WATER)', 10),
              ShownPesticide('VOLIAM TARGO', '0,8 L/HA', 3),
              ShownPesticide('BACTOSPEINE DF/DIPEL DF', '0,5-1,0 KG/HA', 7),
              ShownPesticide(
                  'MAVRIK 2 F/EVURE', '0,05% (0,5 L/HA in 1000 l water)', 3),
            ]
          },
          {
            'Whiteflies': [
              ShownPesticide(
                  'POLECI/DECA 2,5 EC', '30-50 ml/hl water (0,03-0,05%)', 3),
              ShownPesticide('SIVANTO PRIME 200 SL', '0,56 L/HA', 3),
              ShownPesticide('VYDATE 10 L', '10 L/HA ', 3),
              ShownPesticide('VYDATE 10 G', '30,0-55,0 KG/HA', 7),
              ShownPesticide('LIMOCIDE', '2,0L/HA', 3),
              ShownPesticide('FLIPPER', '16,0 - 20,0 L/HA', 10),
              ShownPesticide('PREV GOLD ', '0,4-0,8 % (8L/HA)', 3),
              ShownPesticide('HARPUN', '75 ml/100 l WATER', 3),
              ShownPesticide('JUVINAL ', '0,05% solarium', 3),
              ShownPesticide(
                  'SANIUM SYSTEM', '4,5 L/HA (greenhouses and solariums)', 3),
              ShownPesticide('NOFLY WP', '200-250 G/HL', 7),
              ShownPesticide('REQUIEM PRIME', '0,65% /10 L/HA', 3),
              ShownPesticide('SANMITE 10 SC', '1,5 L/HA', 3),
            ]
          },
          {
            'Aphids': [
              ShownPesticide('SPRUZIT', '100 ml / 100 l', 4),
              ShownPesticide('DELMUR', '500 Ml/ha', 4),
            ]
          },
        ],
        'Croatia': [
          {
            'Aphids': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Tappeki 500 WG (Flonikamid 500,00 g/kg)',
                  '0,1-0,12 l/ ha', 3),
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Tappeki 500 WG (Flonikamid 500,00 g/kg)',
                  '0,1-0,12 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Pirimor 50 WG (Pirimikarb 500,00 g/l)', '0,8 kg/ ha', 9),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
              ShownPesticide(
                  'Mospilan 20 SP (Acetamiprid 200,00 g/kg)', '125 g/ ha', 3),
              ShownPesticide('Karate zeon (Lambda- cihalotrin 50,00 g/l)',
                  '0,15 l/ ha', 3),
            ]
          },
          {
            'Owls': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Avaunt EC (Indoksakarb 150,00 g/l)', '0,25 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Affirm (Emamektin benzoat 9,50 g/kg)', '2 kg/ ha', 3),
              ShownPesticide('Runner 240 SC (Metoksifenozid 240,00 g/l)',
                  '40 ml/ 100 l', 1),
              ShownPesticide('Runner 240 SC (Metoksifenozid 240,00 g/l)',
                  '40 ml/ 100 l', 1),
            ]
          },
          {
            'Green Bed Bag': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ]
          },
          {
            'Potato Beetle': [
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Karate zeon (Lambda- cihalotrin 50,00 g/l)',
                  '0,15 l/ ha', 3),
            ]
          },
          {
            'Thrips': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,75-1,2 l/ ha', 7),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,75 ml/ 100 l', 7),
            ]
          },
          {
            'Leaf Miner Flies': [
              ShownPesticide('Laser (Spinosad 18,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,8-1 l/ ha', 7),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '60 ml/ 100 l', 7),
            ]
          },
          {
            'Corn Moth': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ]
          },
          {
            'South  America  Moth': [
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,75-1,2 l/ ha', 7),
              ShownPesticide(
                  'Affirm (Emamektin benzoat 9,50 g/kg)', '1,5 kg/ ha', 3),
            ]
          },
          {
            'Greenhouse Shield Moth': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
              ShownPesticide(
                  'Mospilan (Acetamiprid 200, 00 g/l)', '250 g/ ha', 7),
              ShownPesticide(
                  'Pixal (Piriproksifen 100, 00 g/l)', '0,5- 0,75 l/ ha', 3),
              ShownPesticide(
                  'Karate zeon (Lambda- cihalotrin 50,00 g/l)', '0,2 l/ ha', 3),
              ShownPesticide(
                  'Pixal (Piriproksifen 100, 00 g/l)', '0,5- 0,75 l/ ha', 3),
            ]
          },
          {
            'Nettle  Mites': [
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,8-1 l/ ha', 7),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ]
          },
          {
            'Rusty Tomato Mite': [
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 7),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,75 ml/ 100 l', 7),
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ]
          },
          {
            'Nematodes Of Root Nodules': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
              ShownPesticide(
                  'Velum prime (Fluopiram 400,00 g/l)', '0,375-0,625 l/ ha', 3),
            ]
          },
          {
            'Root Nematodes': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ]
          },
          {
            'Cyst Nematodes': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ]
          },
          {
            'Brown Spoted Nematodes': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ]
          },
          {
            'Red Spiders': [
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 7),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,60 ml/ 100 l', 7),
            ]
          },
          {
            'Potato Blight': [
              ShownPesticide(
                  'Equatin pro (Famoksadon 225,00 g/kg+ Cimoksanil 300, 00 g/kg)',
                  '0,4 kg/ ha',
                  7),
              ShownPesticide('Neoram WG (Bakreni oksid 375,00 g/kg)',
                  '1,25-1,75 kg/ ha', 14),
              ShownPesticide(
                  'Revus (Mandipropamid 250,00 g/l)', '0,4-0,6 l/ ha', 3),
              ShownPesticide(
                  'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
            ]
          },
          {
            'Ashtray': [
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
              ShownPesticide('Domark 40 ME (Tetrakonazol 40,00 g/l)',
                  '60-120 ml/ 100 l', 4),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Nativo 75 WG (Trifloksistrobin 250,00 g/kg+ Tebukonazol 500,00 g/kg)',
                  '300 g/ ha',
                  3),
              ShownPesticide(
                  'Pointer (Flutriafol 125,00 g/l)', '0,075-0,15 %', 1),
              ShownPesticide(
                  'Signum (Piraklostrobin 67,00 g/kg+ Boskalid 267,00 g/kg)',
                  '0,075-0,15 %',
                  3),
              ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
              ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
            ]
          },
          {
            'Velvet Mold': [
              ShownPesticide('Argo (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
              ShownPesticide(
                  'Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
              ShownPesticide('Domark 40 ME (Tetrakonazol 40,00 g/l)',
                  '60-120 ml/ 100 l', 4),
              ShownPesticide(
                  'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
            ]
          },
          {
            'Grey Mold': [
              ShownPesticide(
                  'Pirus 400 SC (Pirimetanil 400,00 g/l)', '2 l/ ha', 3),
              ShownPesticide(
                  'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                  '60-100 ml/ 100 l',
                  3),
            ]
          },
          {
            'Concentric Spotting': [
              ShownPesticide(
                  'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
              ShownPesticide(
                  'Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
            ]
          },
          {
            'Spotting': [
              ShownPesticide(
                  'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
            ]
          },
          {
            'Grey Spotting': [
              ShownPesticide(
                  'Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
            ]
          },
          {
            'Rust': [
              ShownPesticide(
                  'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
              ShownPesticide(
                  'Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
            ]
          },
          {
            'Arson': [
              ShownPesticide(
                  'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
            ]
          },
          {
            'Laying Down': [
              ShownPesticide(
                  'Previcur energy (Fosetil 332,50 g/l+ Propamokarb 530,00 g/l)',
                  '2-3 l/ ha',
                  0),
              ShownPesticide('Proplant (Propamokarb 605,00 g/l)', '2 l/ ha', 3),
            ]
          },
          {
            'Root Rot': [
              ShownPesticide('Proplant (Propamokarb 605,00 g/l)', '2 l/ ha', 3),
            ]
          },
          {
            'White Rot': [
              ShownPesticide(
                  'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                  '60-100 ml/ 100 l',
                  3),
            ]
          },
        ],
        'Germany': [
          {
            'Aphids': [
              ShownPesticide(
                  'flonicamide', '0.08 kg/ha in 600 l/ha of water', 1),
            ]
          },
          {
            'Botrytis Cinerea': [
              ShownPesticide(
                  'Bacillus amyloliquefaciens subsp. plantarum strain D747',
                  '1kg/ha',
                  1),
            ]
          },
          {
            'Spider Mites': [
              ShownPesticide('Abamectin', '0.6 l/ha in 600 l/ha water', 3),
            ]
          },
          {
            'Miner Fkies': [
              ShownPesticide('Abamectin', '0.6 l/ha in 600 l/ha water', 3),
            ]
          },
          {
            'Gall Mites': [
              ShownPesticide('Abamectin', '0.6 l/ha in 600 l/ha water', 3),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide('Ampelomyces quisqualis strain AQ 10',
                  '0.035 kg/ha in 500 l/ha of water', 0),
              ShownPesticide('Azoxystrobin',
                  '0.48 l/ha in a maximum of 600 l/ha of water', 3),
              ShownPesticide('Potassium Bicarbonate', '30ml/m²', 1),
              ShownPesticide('Potassium Bicarbonate', '60ml/m²', 1),
              ShownPesticide('Potassium Bicarbonate',
                  '30g per 100 m² in 2 to 8 l/100 m² of water', 1),
            ]
          },
          {
            'Fungal Leaf Spot Pathogens': [
              ShownPesticide('difenoconazole + azoxystrobin',
                  '0.75l/ha in 600 l/ha of water', 3),
            ]
          },
        ],
        'English': [],
      },
      // Italy remains, germany maybe
      'Pepper': {
        'Turkey': [
          {
            'Green Peach Aphid': [
              ShownPesticide('% 20 Flonicamid+% 15 Acetamiprid', '22', 3),
              ShownPesticide('%20 Acetamiprid', '25', 3),
              ShownPesticide('%50 Flonicamid', '15', 1),
              ShownPesticide('%50 Pirimicarb', '50', 7),
              ShownPesticide('10 g/l Azadirachtin', '500', 3),
              ShownPesticide('200 g/l Acetamiprid', '25', 3),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide('%15 Triflumizole + %3,4 Cyflufenamid', '25', 1),
              ShownPesticide('%50 Trifloxystrobin', '15', 3),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', '80', 3),
              ShownPesticide('100 g/l Penconazole', '50', 7),
              ShownPesticide('12,5 g/l COS-OGA', '200', 0),
              ShownPesticide('125 g/l Isopyrazam', '100', 1),
              ShownPesticide(
                  '200 g/l Azoxystrobin + 125 g/l Difenoconazole', '100', 3),
              ShownPesticide(
                  '200 g/l Boscalid + 100 g/l Kresoxim-methyl', '50', 3),
              ShownPesticide(
                  '200 g/l Fluopyram + 200 g/l Tebuconazole', '30', 3),
              ShownPesticide('200 g/l Penthiopyrad', '125', 1),
              ShownPesticide(
                  '200 g/l Tebuconazole + 120 g/l Azoxystrobin', '125', 3),
              ShownPesticide('222,5 g/l Tea tree oil', '200', 0),
              ShownPesticide('224,6 g/l Reynoutria spp. ekstraktı', '200', 0),
              ShownPesticide('245 g/l Myclobutanil', '30', 3),
              ShownPesticide('250 g/l Azoxystrobin', '75', 3),
              ShownPesticide(
                  '250 g/l Fluopyram+ 250 g/l Trifloxystrobin', '20', 3),
              ShownPesticide('250 g/l Tebuconazole', '50', 3),
              ShownPesticide(
                  '296 g/l Azoxystrobin + 218 g/l Flutriafol', '50', 3),
              ShownPesticide('500 g/l Metrafenone', '0.2', 3),
              ShownPesticide('51,3 g/l Cyflufenamid', '25', 1),
              ShownPesticide(
                  '75 g/l Fluxapyroxad + 50 g/l Difenoconazole', '0.6', 3),
              ShownPesticide('Bacillus Subtilis Y 1336', '125', 0),
            ]
          },
          {
            'Grey Mold': [
              ShownPesticide(
                  '%0,3 Bacillus subtilis GB03 ırkı 1,2x10 üzeri 7 cfu/gram',
                  '500',
                  0),
              ShownPesticide('%1,34 Bacillus subtilis QST 713 ırkı', '1400', 0),
              ShownPesticide('%26,7 Boscalid + %6,7 Pyraclostrobin', '150', 3),
              ShownPesticide('%37,5 Cyprodinil + %25 Fludioxonil', '60', 7),
              ShownPesticide('%40 Iminoctadine tris (albesilate)', '75', 3),
              ShownPesticide('%50 Fenpyrazamine', '80', 1),
              ShownPesticide(
                  '150 g/l Cyprodinil + 100 g/l Fludioxonil', '150', 7),
              ShownPesticide('200 g/l Penthiopyrad', '125', 1),
              ShownPesticide('222,5 g/l Tea tree oil', '200', 0),
              ShownPesticide('300 g/l Cyprodinil', '100', 7),
              ShownPesticide('300 g/l Pyrimethanil', '125', 3),
              ShownPesticide(
                  '375 g/l Pyrimethanil +125 g/l Fluopyram', '75', 3),
              ShownPesticide('500 g/l Fenhexamid', '100', 1),
              ShownPesticide('500 g/l Imazalil', '30', 3),
            ]
          },
          {
            'Thrips': [
              ShownPesticide('10 g/l Azadirachtin A', '500', 3),
              ShownPesticide('120 g/l Spinetoram', '50', 3),
              ShownPesticide('240 g/l Spinosad', '0.4', 3),
              ShownPesticide(
                  '28 g/l Pyrethrin + 24 g/l Azadirachtin', '175', 3),
              ShownPesticide('480 g/l Spinosad', '0.2', 3),
              ShownPesticide('75 g/l Acrinathrin', '0.8', 3),
              ShownPesticide(
                  '790 g/l Neem Yağı + 0,3 g/l Azadirachtin', '500', 3),
              ShownPesticide(
                  'Beauveria bassiana PPRI 5339 ırkı >8.0 x 10 üzeri 9 cfu/ml',
                  '50',
                  0),
            ]
          },
          {
            'Leafworm': [
              ShownPesticide('%30 Indoxacarb', '17', 3),
              ShownPesticide('%35 Chlorantraniliprole', '12', 1),
              ShownPesticide('%5 Emamectin benzoate', '0.3', 7),
              ShownPesticide('100 g/l Novaluron', '0.4', 3),
              ShownPesticide('150 g/l Indoxacarb', '35', 3),
              ShownPesticide('150 g/l Teflubenzuron', '0.35', 3),
              ShownPesticide('20 g/l Emamectin benzoate', '70', 7),
              ShownPesticide('240 g/l Metaflumizone', '1', 1),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '40', 1),
              ShownPesticide(
                  '32000 CLU/mg Bacillus thuringiensis subsp kurstaki ABTS-351 ırkı',
                  '100',
                  0),
              ShownPesticide(
                  '35000 DBM/mg Bacillus thuringiensis var. aizawai strain ABTS-1857',
                  '100',
                  0),
              ShownPesticide(
                  '45 g/l Chlorantraniliprole + 18 g/l Abamectin', '80', 1),
              ShownPesticide('480 g/l Spinosad', '30', 3),
              ShownPesticide('50 g/l Lufenuron', '0.3', 7),
            ]
          },
          {
            'Fruit Borer': [
              ShownPesticide('%35 Chlorantraniliprole', '0.12', 1),
              ShownPesticide('%5 Emamectin benzoate', '30', 7),
              ShownPesticide('100 g/l Alpha-cypermethrin', '0.5', 14),
              ShownPesticide('100 g/l Cypermethrin', '0.75', 7),
              ShownPesticide('150 g/l Indoxacarb', '40', 3),
              ShownPesticide('200 g/l Cyantraniliprole', '0.35', 3),
              ShownPesticide('222 g/l Flubendiamide', '30', 1),
              ShownPesticide('240 g/l Metaflumizone', '1', 1),
              ShownPesticide('240 g/l Methoxyfenozide', '0.6', 1),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '0.4', 1),
              ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
              ShownPesticide('500 g/l Pyridalyl', '40', 3),
            ]
          },
          {
            'Whiteflies': [
              ShownPesticide('%20 Pyridaben', '100', 3),
              ShownPesticide('%20 Acetamiprid', '30', 3),
              ShownPesticide(
                  '100 g/l Buprofezin + 20 g/l Lambda-cyhalothrin', '3', 7),
              ShownPesticide('100 g/l Cypermethrin', '0.75', 7),
              ShownPesticide('100 g/l Pyriproxyfen', '50', 3),
              ShownPesticide('100 g/l Spirotetramat', '100', 3),
              ShownPesticide('200 g/l Cyantraniliprole', '0.5', 3),
              ShownPesticide('240 g/l Thiamethoxam', '1', 5),
              ShownPesticide('350 g/l Imidacloprid', '2', 7),
              ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
              ShownPesticide(
                  'Beauveria bassiana PPRI 5339 ırkı >8.0 x 10 üzeri 9 cfu/ml',
                  '50',
                  0),
            ]
          }
        ],
        'Italy': [
          {
            'Pepper Alternaria': [
              ShownPesticide('Azoxystrobin 22,8%', '1 lt/ha', 3),
              ShownPesticide('Azoxystrobin 22,01 %', '1 lt/ha', 3),
              ShownPesticide(
                  'Difenoconazolo 11,5% Cyflufenamid 1,38%', '1 lt/ha', 3),
              ShownPesticide('Rame metallo 35%', '720 gr/hl', 3),
              ShownPesticide('Rame metallo 20%', '1 kg/hl', 3),
              ShownPesticide(
                  'FLUXAPIROXAD 6,98% DIFENOCONAZOLO 4,66%', '1 lt/ha', 7),
              ShownPesticide('Metam sodio 32,7%', '1000 lt/ha', 0),
              ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 3),
              ShownPesticide(
                  'Azoxystrobin 18% Difenoconazolo 11,3%', '1 lt/ha', 7),
              ShownPesticide('Rame metallo 20%', '3,3 lt/ha', 3),
              ShownPesticide('Rame metallo 30%', '3,3 lt/ha', 3),
              ShownPesticide('Rame metallo 50%', '2 kg/ha', 3),
              ShownPesticide('Rame metallo 25 %', '2,5 lt/ha', 3),
              ShownPesticide('Rame metallo 32 %', '3 kg/ha', 3),
              ShownPesticide(
                  'Bacillus subtilis ceppo QST 713 1,34%', '8 lt/ha', 0),
              ShownPesticide('Bacillus amyloliquefaciens Ceppo MBI600 8,8%',
                  '0,25 kg/ha', 0),
              ShownPesticide('Bacillus amyloliquefaciens (ceppo FZB24) 13%',
                  '370 gr/ha', 4),
              ShownPesticide('Rame metallo 25,42%', '2,6 lt/ha', 21),
            ]
          },
          {
            'Powdery Mildew Of Solanaceae': [
              ShownPesticide('Tebuconazolo 25%', '0,5 kg/ha', 3),
              ShownPesticide(
                  'Bacillus amyloliquefaciens, subspecie plantarum, ceppo D747 25%',
                  '2,5 kg/ha',
                  0),
              ShownPesticide('Zolfo 56,09%', '2 lt/ha', 3),
              ShownPesticide(
                  'Ampelomyces quisqualis (isolato M-10) 58%', '70 gr/ha', 0),
              ShownPesticide('Tebuconazolo 40,18%', '580 ml/ha', 3),
              ShownPesticide('BICARBONATO DI POTASSIO 85%', '3 kg/ha', 1),
              ShownPesticide('Tebuconazolo 24,03%', '500 ml/ha', 3),
              ShownPesticide('Tebuconazolo 4,2%', '2,9 lt/ha', 3),
              ShownPesticide('Azoxystrobin 22,8%', '1 lt/ha', 3),
              ShownPesticide('Azoxystrobin 22,01 %', '1 lt/ha', 3),
              ShownPesticide('Bacillus pumilus ceppo QST 2808', '10 lt/ha', 0),
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide('Zolfo 35%', '50 kg/ha', 5),
              ShownPesticide('Zolfo 80%', '400 gr/hl', 5),
              ShownPesticide(
                  'azoxystrobin 11,03% tebuconazolo 18,4%', '1 lt/ha', 3),
              ShownPesticide(
                  'Difenoconazolo 11,5% Cyflufenamid 1,38%', '1 lt/ha', 3),
              ShownPesticide('Tetraconazolo 3,85 %', '1,25 lt/ha', 3),
              ShownPesticide(
                  'Fluxapiroxad 6,98% difenoconazolo 4,66%', '0,6 lt/ha', 3),
              ShownPesticide('Miclobutanil 18,23%', '0,24 lt/ha', 3),
              ShownPesticide('Tetraconazolo 11,6%', '360 ml/ha', 7),
              ShownPesticide('Penconazolo 10%', '50 gr/hl', 14),
              ShownPesticide('Penconazolo 10,20%', '50 ml/hl', 14),
              ShownPesticide(
                  'Trifloxystrobin 25% Tebuconazolo 50%', '300 gr/hl', 3),
              ShownPesticide('Zolfo 51,7%', '3 lt/ha', 3),
              ShownPesticide('COS-OGA 1,25%', '2 lt/ha', 0),
              ShownPesticide('Flutriafol 11.8%', '0,75 lt/ha', 3),
              ShownPesticide('Bicarbonato di potassio 85%', '1000 lt/ha', 0),
              ShownPesticide('Zolfo 49,5%', '220ml/hl', 5),
              ShownPesticide('Miclobutanil 13,26%', '0,38 lt/ha', 3),
              ShownPesticide('Metam sodio 32,7%', '1000 lt/ha', 0),
              ShownPesticide('Miclobutanil 4,2%', '1,14 lt/ha', 3),
              ShownPesticide('Miclobutanil 13,4%', '0,33 lt/ha', 3),
              ShownPesticide('Zolfo 55,7%', '2 lt/ha', 3),
              ShownPesticide('Azoxystrobin 23,2%', '0,7 lt/ha', 3),
              ShownPesticide('Metrafenone 42,37%', '0,3 lt/ha', 3),
              ShownPesticide('Bupirimate 23,8%', '2 lt/ha', 3),
              ShownPesticide(
                  'Azoxystrobin 18% Difenoconazolo 11,3%', '1 lt/ha', 7),
              ShownPesticide('Penconazolo 2,83%', '1,5 lt/ha', 3),
              ShownPesticide('Tebuconazolo 19,6%', '0,6 lt/ha', 3),
              ShownPesticide('penconazolo 10,1%', '500 ml/ha', 3),
              ShownPesticide('Miclobutanil 12,4%', '600 ml/ha', 3),
              ShownPesticide(
                  'Boscalid 26,7% Piraclostrobin 6,7%', '1,5 kg/ha', 3),
              ShownPesticide('Bacillus pumilus QST 2808 1,38%', '10 lt/ha', 0),
              ShownPesticide('Tebuconazolo 25,7%', '500 ml/ha', 3),
              ShownPesticide('Zolfo 45%', '400 gr/hl', 5),
              ShownPesticide('Bacillus amyloliquefaciens (ceppo FZB24) 13%',
                  '370 gr/ha', 4),
              ShownPesticide('Ciflufenamid 10%', '150 ml/ha', 1),
              ShownPesticide('Zolfo  57,3%', '6 lt/ha', 0),
              ShownPesticide('Zolfo  46,75%', '240 ml/hl', 5),
              ShownPesticide('Penconazolo 2,5%', '2 kg/ha', 3),
              ShownPesticide('Penconazolo 19,5%', '25 ml/hl', 3),
              ShownPesticide('Fluopyram 34,5%', '0,625 lt/ha', 0),
              ShownPesticide('bicarbonato di potassio  99.5%', '5 kg/ha', 0),
              ShownPesticide('Zolfo 50%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 85%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 95%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 91,08%', '500 gr/hl', 5),
              ShownPesticide('Zolfo 96%', '35 kg/ha', 5),
              ShownPesticide('Zolfo 98,5%', '30 kg/ha', 5),
              ShownPesticide('Zolfo 40%', '30 kg/ha', 5),
            ]
          },
          {
            'Brown Rot Of Fruits': [
              ShownPesticide('RAME metallo 30%', '3,3 kg/ha', 3),
            ]
          },
          {
            'Nottue Of The Pepper': [
              ShownPesticide('Deltametrina pura 2,8 %', '500 ml/ha', 3),
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide('Teflutrin 0,5%', '15 kg/ha', 0),
              ShownPesticide('Lambda-cialotrina 0,4%', '15 kg/ha', 0),
            ]
          },
          {
            'Leaf Miner': [
              ShownPesticide('Deltametrina 1,51%', '90 ml/hl', 3),
              ShownPesticide('ABAMECTINA 1,9%', '1,20 lt/hl', 3),
              ShownPesticide('Olio minerale 80%', '2 lt/hl', 20),
              ShownPesticide('Spinosad 11,6%', '300 ml/hl', 3),
              ShownPesticide('Acetamiprid 4,67%', '2 lt/ha', 7),
              ShownPesticide('Spinosad 44,2 %', '200 ml/ha', 3),
              ShownPesticide(
                  'Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                  '0,75 lt/ha',
                  14),
              ShownPesticide('Azadiractina 1%', '3,9 lt/ha', 3),
              ShownPesticide(
                  'Abamectina 0,53% Acrinatrina 0,95%', '2,5 lt/ha', 7),
              ShownPesticide('Abamectina 1,84%', '1,2 lt/ha', 3),
              ShownPesticide('Abamectina 1,75%', '1,2 lt/ha', 3),
            ]
          },
          {
            'Pepper Aphid': [
              ShownPesticide('Esfenvalerate 2,8%', '0,6 lt/ha', 3),
              ShownPesticide('Olio di paraffina 94%', '15 lt/ha', 0),
              ShownPesticide('Deltametrina 1,51%', '90 ml/hl', 3),
              ShownPesticide('Deltametrina pura 2,81%', '50 ml/hl', 3),
              ShownPesticide('Olio di paraffina 80%', '1,2 lt/hl', 20),
              ShownPesticide(
                  'Sali potassici di acidi grassi 50,95%', '2 lt/hl', 0),
              ShownPesticide('sulfoxaflor puro 11,9%', '200 ml/ha', 1),
              ShownPesticide('Olio minerale 98,8%', '2,5 lt/hl', 20),
              ShownPesticide('Lambda cialotrina 2,5%', '600 gr/ha', 3),
              ShownPesticide('Acetamiprid 4,67%', '2 lt/ha', 7),
              ShownPesticide('Maltodestrina 49%', '2,5 lt/hl', 0),
              ShownPesticide('Acetamiprid 5%', '2 kg/ha', 7),
              ShownPesticide('Lambda-cialotrina 9,48%', '150 ml/ha', 3),
              ShownPesticide('Lambda-cialotrina 1,47%', '100 ml/hl', 3),
              ShownPesticide('Acetamiprid 17.6%', '0,5 lt/ha', 7),
              ShownPesticide('Spirotetramat 4,53%', '1,25 lt/ha', 3),
              ShownPesticide('Azadiractina A 1%', '3 lt/ha', 3),
              ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
              ShownPesticide('Olio minerale 85%', '2 lt/hl', 20),
              ShownPesticide('Flupyradifurone 17,1%', '0,56 lt/ha', 3),
              ShownPesticide('Lambda-cialotrina 9,53%', '250 ml/ha', 3),
            ]
          },
        ],
        'Romania': [
          {
            'Green Peach Aphid': [
              ShownPesticide('JUVINAL 10 EC', '0,05%', 3),
              ShownPesticide('Mospilan 20 SG', '0.0125% (0.125 kg/ha)', 3),
            ]
          },
          {
            'Powdery Mildew': [
              ShownPesticide('DAGONIS ', '0,6 L/HA', 0),
              ShownPesticide('FLOSUL', '5,0 L/HA', 3),
              ShownPesticide(
                  'SONATA 14,35 g/L Bacillus pumilus tulpina Qst 2808(1x10/12 CfU*/kg)',
                  '5,0-10,0 L/ha',
                  3),
              ShownPesticide('SULBARI 800g/kg sulf ', '5,0 kg/ha', 3),
            ]
          },
          {
            'Grey Mold': [
              ShownPesticide('DAGONIS', '1,0 L/HA', 0),
              ShownPesticide(
                  'SERENADE ASO 1,34% W/W, 1x10/12 cfu*/kg Bacillus Subtilis QST 713',
                  '4,0-8,0L/ha',
                  3),
            ]
          },
          {
            'Western Flower Thrips': [
              ShownPesticide('Minecto Alpha', '10000 - 20000 l/ha', 14),
              ShownPesticide('Vertimec ', '0,1% (1-1,2 l/HA)', 3),
              ShownPesticide('Konflic', '0.15% - 0.3%.', 0),
            ]
          },
          {
            'Fruit Borer': [
              ShownPesticide('AFFIRM', '1,5 KG/HA', 3),
              ShownPesticide('AVAUNT 150 EC', '0,250 L/HA', 3),
              ShownPesticide(
                  'BELTHIRUL', '0,25-0,50 KG/HA (800-1000 L WATER/HA)', 3),
              ShownPesticide('CORAGEN', '175 ml/HA', 10),
              ShownPesticide(
                  'PLINTO 2,5 EC/ALFASURE 2,5 EC', '0,4-0,6 L/HA', 0),
              ShownPesticide('ALVERDE', '0,1% (1,0L/HA/1000L WATER)', 10),
              ShownPesticide('VOLIAM TARGO', '0,8 L/HA', 3),
              ShownPesticide('BACTOSPEINE DF/DIPEL DF', '0,5-1,0 KG/HA', 3),
              ShownPesticide(
                  'MAVRIK 2 F/EVURE', '0,05% (0,5 L/HA in 1000 l water)', 3),
            ]
          },
          {
            'Whiteflies': [
              ShownPesticide(
                  'POLECI/DECA 2,5 EC', '30-50 ml/hl water (0,03-0,05%)', 3),
              ShownPesticide('SIVANTO PRIME 200 SL', '0,56 L/HA', 3),
              ShownPesticide('VYDATE 10 L', '10 L/HA ', 3),
              ShownPesticide('VYDATE 10 G', '30,0-55,0 KG/HA', 7),
              ShownPesticide('LIMOCIDE', '2,0L/HA', 3),
              ShownPesticide('FLIPPER', '16,0 - 20,0 L/HA', 3),
              ShownPesticide('PREV GOLD ', '0,4-0,8 % (8L/HA)', 3),
              ShownPesticide('HARPUN', '75 ml/100 l WATER', 10),
              ShownPesticide('JUVINAL ', '0,05% solarium', 3),
              ShownPesticide(
                  'SANIUM SYSTEM', '4,5 L/HA (greenhouses and solariums)', 3),
              ShownPesticide('NOFLY WP', '200-250 G/HL', 10),
              ShownPesticide('REQUIEM PRIME', '0,65% /10 L/HA', 3),
              ShownPesticide('SANMITE 10 SC', '1,5 L/HA', 3),
            ]
          },
        ],
        'Croatia': [
          {
            'Aphids': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,175 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,175 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Tappeki (Flonikamid 500,00 g/kg)', '0,12 kg/ ha', 7),
              ShownPesticide(
                  'Pirimor 50 WG (Pirimikarb 500,00 g/l)', '40-60 g/ 100', 14),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
              ShownPesticide(
                  'Mospilan 20 SP (Acetamiprid 200,00 g/kg)', '125 g/ ha', 3),
              ShownPesticide(
                  'Mospilan 20 SG (Acetamiprid 200,00 g/kg)', '125 g/ ha', 3),
              ShownPesticide('Karate zeon (Lambda- cihalotrin 50,00 g/l)',
                  '0,15 l/ ha', 3),
            ]
          },
          {
            'Owls': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,175 l/ ha', 3),
              ShownPesticide(
                  'Avaunt EC (Indoksakarb 150,00 g/l)', '0,25 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,125 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,175 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Affirm (Emamektin benzoat 9,50 g/kg)', '2 kg/ ha', 3),
              ShownPesticide('Runner 240 SC (Metoksifenozid 240,00 g/l)',
                  '40 ml/ 100 l', 1),
              ShownPesticide('Runner 240 SC (Metoksifenozid 240,00 g/l)',
                  '40 ml/ 100 l', 1),
            ]
          },
          {
            'Green Bed Bag': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,045-0,105 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,18-0,42 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ]
          },
          {
            'Potato Beetle': [
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,075-0,175 l/ ha', 3),
              ShownPesticide(
                  'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ]
          },
          {
            'Thrips': [
              ShownPesticide(
                  'Mospilan 20 SG (Acetamiprid 200,00 g/kg)', '125 g/ ha', 3),
              ShownPesticide('Laser (Spinosad 18,00 g/l)', '0,03-0,05 %', 7),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,75 ml/ 100 l', 3),
            ]
          },
          {
            'Leaf Miner Flies': [
              ShownPesticide('Laser (Spinosad 18,00 g/l)', '0,3-0,5 l/ ha', 3),
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 3),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '60 ml/ 100 l', 3),
            ]
          },
          {
            'Corn Moth': [
              ShownPesticide(
                  'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ]
          },
          {
            'South  America  Moth': [
              ShownPesticide(
                  'Affirm (Emamektin benzoat 9,50 g/kg)', '1,5 kg/ ha', 3),
            ]
          },
          {
            'Greenhouse Shield Moth': [
              ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                  '0,105-0,175 l/ ha', 3),
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
              ShownPesticide(
                  'Mospilan (Acetamiprid 200, 00 g/l)', '250 g/ ha', 7),
              ShownPesticide(
                  'Scatto (Deltametrin 25,00 g/l)', '0,42-0,5 l/ ha', 3),
              ShownPesticide(
                  'Karate zeon (Lambda- cihalotrin 50,00 g/l)', '0,2 l/ ha', 3),
            ]
          },
          {
            'Nettle  Mites': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ]
          },
          {
            'Rusty Tomato Mite': [
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 3),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,60 ml/ 100 l', 3),
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ]
          },
          {
            'Nematodes Of Root Nodules': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
              ShownPesticide(
                  'Velum prime (Fluopiram 400,00 g/l)', '0,375-0,625 l/ ha', 3),
            ]
          },
          {
            'Root Nematodes': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
            ]
          },
          {
            'Cyst Nematodes': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
            ]
          },
          {
            'Brown Spoted Nematodes': [
              ShownPesticide(
                  'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
            ]
          },
          {
            'Red Spiders': [
              ShownPesticide(
                  'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 3),
              ShownPesticide(
                  'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,60 ml/ 100 l', 3),
            ]
          },
          {
            'Potato Blight': [
              ShownPesticide(
                  'Tazer (Azoksistrobin 250,00 g/l)', '0,5-1 l/ ha', 3),
            ]
          },
          {
            'Peper Blight': [
              ShownPesticide('Ortiva (Azoksistrobin 250,00 g/l)', '1 l/ ha', 3),
            ]
          },
          {
            'Bacteriosis': [
              ShownPesticide(
                  'Neoram WG (Bakreni oksid 375,00 g/kg)', '0,15-0,2 %', 5),
            ]
          },
          {
            'Ashtray': [
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Tazer (Azoksistrobin 250,00 g/l)', '0,5-1 l/ ha', 3),
              ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Signum (Piraklostrobin 67,00 g/kg+ Boskalid 267,00 g/kg)',
                  '0,1-0,15 %',
                  7),
              ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
              ShownPesticide(
                  'Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
              ShownPesticide(
                  'Ortiva (Azoksistrobin 250,00 g/l)', '0,8 l/ ha', 3),
              ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
            ]
          },
          {
            'Velvet Mold': [
              ShownPesticide(
                  'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
            ]
          },
          {
            'Grey Mold': [
              ShownPesticide(
                  'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                  '60-100 ml/ 100 l',
                  7),
            ]
          },
          {
            'Root Neck Gangrene': [
              ShownPesticide(
                  'Previcur energy (Fosetil 332,50 g/l+ Propamokarb 530,00 g/l)',
                  '2 l/ ha',
                  3),
              ShownPesticide(
                  'Proplant (Propamokarb 605,00 g/l)', '2-2,5 l/ ha', 3),
            ]
          },
          {
            'Root Rot': [
              ShownPesticide('Proplant (Propamokarb 605,00 g/l)', '2 l/ ha', 3),
            ]
          },
          {
            'White Rot': [
              ShownPesticide(
                  'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                  '60-100 ml/ 100 l',
                  7),
            ]
          },
          {
            'Concentric Spotting': [
              ShownPesticide(
                  'Tazer (Azoksistrobin 250,00 g/l)', '0,5-1 l/ ha', 3),
            ]
          },
        ],
        'Germany': [],
        'English': [],
      },
      // Italy remains
      'Apple': {
        'Turkey': [
          {
            'Codling Moth': [
              ShownPesticide('% 5.7 Emamectin benzoate', '175', 7),
              ShownPesticide(
                  '%10 Acetamiprid + %3 Lambda-cyhalothrin', '25', 14),
              ShownPesticide('%20 Flubendiamide', '20', 14),
              ShownPesticide('%25 Diflubenzuron', '40', 14),
              ShownPesticide('%25 Spinetoram', '40', 7),
              ShownPesticide('%25 Triflumuron', '40', 42),
              ShownPesticide('%5 Emamectin benzoate', '40', 7),
              ShownPesticide('%50 Phosmet', '150', 14),
              ShownPesticide('100 g/l Alpha-cypermethrin', '20', 14),
              ShownPesticide('100 g/l Cyantraniliprole', '60', 7),
              ShownPesticide('100 g/l Cypermethrin', '50', 7),
              ShownPesticide(
                  '100 g/l Lambda-cyhalothrin + 100 g/l Lufenuron', '10', 14),
              ShownPesticide('100 g/l Novaluron', '60', 21),
              ShownPesticide(
                  '100 g/l Novaluron + 20 g/l Lambda-cyhalothrin', '40', 21),
              ShownPesticide(
                  '100 g/l Novaluron + 80 g/l Acetamiprid', '50', 21),
              ShownPesticide('100 g/l Zeta-cypermethrin', '15', 7),
              ShownPesticide('150 g/l Indoxacarb', '35', 14),
              ShownPesticide('150 g/l Indoxacarb methyl', '35', 14),
              ShownPesticide(
                  '16000 IU/mg Bacillus thuringiensis var. kurstaki', '200', 0),
              ShownPesticide('200 g/l Chlorantraniliprole', '125', 14),
              ShownPesticide('200 g/l Cypermethrin', '25', 7),
              ShownPesticide('200 g/l Cypermethrin', '25', 7),
              ShownPesticide('200 g/l Esfenvalerate', '5', 7),
              ShownPesticide('222 g/l Flubendiamide', '20', 14),
              ShownPesticide(
                  '240 g/l Diflubenzuron + 120 g/l Lambda-cyhalothrin',
                  '10',
                  14),
              ShownPesticide('240 g/l Indoxacarb + 80 g/l Novaluron', '20', 28),
              ShownPesticide('240 g/l Methoxyfenozide', '60', 14),
              ShownPesticide('240 g/l Tau-fluvalinate', '30', 14),
              ShownPesticide('240 g/l Thiacloprid', '40', 14),
              ShownPesticide('25 g/l Deltamethrin', '15', 3),
              ShownPesticide('250 g/l Cypermethrin', '20', 7),
              ShownPesticide(
                  '300 g/l Lambda-cyhalothrin + 80 g/l Emamectin Benzoate',
                  '3',
                  7),
              ShownPesticide(
                  '300 g/l Methoxyfenozide + 60 g/l Spinetoram', '25', 7),
              ShownPesticide(
                  '32000 IU/mg Bacillus thuringiensis berliner var kurstaki',
                  '100',
                  0),
              ShownPesticide(
                  '45 g/l Chlorantraniliprole + 18 g/l Abamectin', '60', 14),
              ShownPesticide('480 g/l Diflubenzuron', '20', 14),
              ShownPesticide('50 g/l Deltamethrin', '750', 3),
              ShownPesticide('50 g/l Emamectin benzoate', '30', 7),
              ShownPesticide('50 g/l Esfenvalerate', '10', 7),
              ShownPesticide('50 g/l Lambda-cyhalothrin', '20', 3),
              ShownPesticide('75 g/l Indoxacarb + 18 g/l Abamectin', '70', 7),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki (serotype H3a 3b 3c) 1x 10 üzeri 8 CFU / g',
                  '100',
                  0),
            ]
          },
          {
            'San Jose Scale': [
              ShownPesticide('800 g/l Parafinik Yağ', '2500', 0),
              ShownPesticide(
                  '700 g/l Mineral Yağ + 3 g/l Pyriproxyfen', '1500', 0),
              ShownPesticide('240 g/l Sulfoxaflor', '20', 14),
              ShownPesticide('800 g/l Mineral Yağ', '2500', 0),
              ShownPesticide('800 g/l Parafinik Yağ', '2.5', 0),
            ]
          },
          {
            'Two-Spotted Spider Mite': [
              ShownPesticide('250 g/l Spirodiclofen', '24', 14),
              ShownPesticide('%20 Pyridaben', '75', 21),
              ShownPesticide('500 g/l Clofentezine', '20', 28),
            ]
          },
          {
            'Apple Scab': [
              ShownPesticide(
                  '375 g/L Fosforoz asit+ 125 g/L Dithianon', '125', 35),
              ShownPesticide(
                  '%0,3 Bacillus subtilis GB03 ırkı 1,2x10 üzeri 7 cfu/gram',
                  '500',
                  0),
              ShownPesticide('%1,34 Bacillus subtilis QST 713 ırkı', '1500', 0),
              ShownPesticide('%12 Dithianon + %4 Pyraclostrobin', '100', 42),
              ShownPesticide(
                  '%14 Metalik bakıra eşdeğer bakır hidroksit + %14 Metalik bakıra eşdeğer bakır oksiklorid',
                  '200',
                  14),
              ShownPesticide(
                  '%16 Metalik bakıra eşdeğer bakır kalsiyum oksiklorid',
                  '3000',
                  14),
              ShownPesticide(
                  '%20 Metalik bakıra eşdeğer bordo bulamacı', '1500', 21),
              ShownPesticide('%25 Tebuconazole', '25', 14),
              ShownPesticide('%25,2 Boscalid + %12,8 Pyraclostrobin', '30', 7),
              ShownPesticide(
                  '%30 Mancozeb + %12 Metalik bakıra eşdeğer bordo bulamacı',
                  '350',
                  21),
              ShownPesticide(
                  '%30 Mancozeb + %12 Metalik bakıra eşdeğer bordo bulamacı',
                  '1000',
                  21),
              ShownPesticide('%40 Iminoctadine tris (albesilate)', '75', 14),
              ShownPesticide('%50 Captan', '150', 3),
              ShownPesticide('%50 Cyprodinil', '40', 28),
              ShownPesticide('%50 Folpet', '300', 7),
              ShownPesticide('%50 Kresoxim-methyl', '15', 35),
              ShownPesticide(
                  '%50 Metalik bakıra eşdeğer bakır oksiklorid', '400', 21),
              ShownPesticide('%50 Trifloxystrobin', '15', 14),
              ShownPesticide('%60 Mancozeb + %1,75 Myclobutanil', '200', 28),
              ShownPesticide('%65 Dodine', '100', 21),
              ShownPesticide('%70 Dithianon', '40', 14),
              ShownPesticide('%70 Metiram', '200', 21),
              ShownPesticide('%70 Thiophanate-methyl', '60', 14),
              ShownPesticide('%72 Mancozeb', '250', 14),
              ShownPesticide(
                  '%75 Metalik bakıra eşdeğer bakır oksit', '250', 14),
              ShownPesticide('%80 Captan', '100', 14),
              ShownPesticide('%80 Mancozeb', '250', 21),
              ShownPesticide('100 g/l Bromuconazole', '30', 15),
              ShownPesticide(
                  '100 g/l Isopyrazam + 40 g/l Difenoconazole', '80', 21),
              ShownPesticide(
                  '124 g/l Metalik bakıra eşdeğer bordo bulamacı', '1000', 14),
              ShownPesticide('125 g/l Flutriafol', '45', 14),
              ShownPesticide('125 g/l Myclobutanil', '40', 14),
              ShownPesticide('125 g/l Tetraconazole', '20', 21),
              ShownPesticide(
                  '136 g/l Metalik bakıra eşdeğer bakır hidroksit + 136 g/l Metalik bakıra eşdeğer bakır oksiklorid',
                  '200',
                  14),
              ShownPesticide(
                  '193 g/l Metalik bakıra eşdeğer bazik bakır sülfat',
                  '500',
                  21),
              ShownPesticide(
                  '200 g/l Fluopyram + 200 g/l Tebuconazole', '35', 14),
              ShownPesticide(
                  '200 g/l Pyrimethanil + 125 g/l Tebuconazole', '50', 14),
              ShownPesticide('245 g/l Myclobutanil', '15', 14),
              ShownPesticide('250 g/l Azoxystrobin', '75', 7),
              ShownPesticide('250 g/l Difenoconazole', '10', 14),
              ShownPesticide(
                  '250 g/l Dithianon + 250 g/l Pyrimethanil', '75', 56),
              ShownPesticide(
                  '250 g/l Dithianon + 250 g/l Pyrimethanil', '75', 56),
              ShownPesticide('300 g/l Cyprodinil', '65', 28),
              ShownPesticide('300 g/l Fluxapyroxad', '15', 35),
              ShownPesticide('300 g/l Pyrimethanil', '50', 14),
              ShownPesticide(
                  '310 g/l Pyrimethanil + 95 g/l Trifloxystrobin', '45', 14),
              ShownPesticide(
                  '350 g/l Metalik bakıra eşdeğer bakır hidroksit', '250', 14),
              ShownPesticide(
                  '357,5 g/l Metalik bakıra eşdeğer bakır oksiklorid',
                  '400',
                  14),
              ShownPesticide(
                  '375 g/l Phosphorus Acid + 125 g/l Dithianon', '125', 35),
              ShownPesticide(
                  '375 g/l Pyrimethanil +125 g/l Fluopyram', '60', 14),
              ShownPesticide('380 g/l Kalsiyum polisülfür', '2000', 0),
              ShownPesticide('400 g/l Flusilazole', '5', 28),
              ShownPesticide(
                  '400 g/l Metalik Bakıra Eşdeğer Bakır Hidroksit', '125', 14),
              ShownPesticide(
                  '400 g/l Tea tree oil + 200 g/l Difenoconazole', '12.5', 14),
              ShownPesticide('420 g/l Mancozeb', '400', 28),
              ShownPesticide(
                  '50 g/l Difenoconazole + 30 g/l Flutriafol', '100', 14),
              ShownPesticide('50 g/l Fenbuconazole', '40', 28),
              ShownPesticide('500 g/l Captan', '150', 14),
              ShownPesticide('500 g/l Cyprodinil', '40', 28),
              ShownPesticide('500 g/l Dodine', '80', 14),
              ShownPesticide(
                  '65,82 g/l Metalik bakıra eşdeğer bakır sülfat', '125', 21),
              ShownPesticide(
                  '75 g/l Fluxapyroxad + 50 g/l Difenoconazole', '60', 28),
              ShownPesticide('Bacillus Subtilis Y 1336', '125', 0),
            ]
          },
          {
            'Apple Powdery Mildew': [
              ShownPesticide('%25 Tebuconazole', '25', 14),
              ShownPesticide('%25,2 Boscalid + %12,8 Pyraclostrobin', '40', 14),
              ShownPesticide('%70 Thiophanate-methyl', '60', 14),
              ShownPesticide('%73 Kükürt', '400', 0),
              ShownPesticide('%80 Kükürt', '400', 0),
              ShownPesticide('100 g/l Bromuconazole', '30', 15),
              ShownPesticide('400 g/l Flusilazole', '6', 28),
              ShownPesticide(
                  '75 g/l Fluxapyroxad + 50 g/l Difenoconazole', '40', 28),
            ]
          },
          {
            'Cedar-Apple Rust': [
              ShownPesticide('%25 Tebuconazole', '25', 14),
              ShownPesticide('%25,2 Boscalid + %12,8 Pyraclostrobin', '40', 14),
              ShownPesticide('%70 Thiophanate-methyl', '60', 14),
              ShownPesticide('%80 Kükürt', '400', 0),
              ShownPesticide('100 g/l Bromuconazole', '30', 15),
              ShownPesticide('400 g/l Flusilazole', '6', 30),
              ShownPesticide(
                  '75 g/l Fluxapyroxad + 50 g/l Difenoconazole', '40', 28),
            ]
          }
        ],
        'Italy': [
          {
            'Apple Tree Scab': [
              ShownPesticide('Ziram 76%', '3 kg/ha', 60),
              ShownPesticide('Difenoconazolo 23,6%', '0,015 lt/hl', 14),
              ShownPesticide('Rame metallo 20%', '600 ml/hl', 0),
              ShownPesticide('Rame metallo 28%', '4,2 lt/ha', 0),
              ShownPesticide('Dithianon 70 %', '0,5 kg/ha', 42),
              ShownPesticide('Fosetil Al 80%', '200 gr/lt', 28),
              ShownPesticide('Zolfo 56,09%', '4 lt/ha', 5),
              ShownPesticide('Tebuconazolo 25 %', '50 gr/hl', 60),
              ShownPesticide('Tebuconazolo 40,18%', '35 ml/hl', 60),
              ShownPesticide('BICARBONATO DI POTASSIO 85%', '5 kg/ha', 1),
              ShownPesticide('Tebuconazolo 24,03%', '1 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,2%', '4,37 lt/ha', 60),
              ShownPesticide('Fluazinam 40,2%', '100 ml/hl', 60),
              ShownPesticide('Rame metallo 15,2%', '6,45 lt/ha', 0),
              ShownPesticide('Rame metallo 12%', '8,25 lt/ha', 0),
              ShownPesticide(
                  'Boscalid 25,2% Pyraclostrobin 12,8%', '0,8 kg/ha', 7),
              ShownPesticide('Rame metallo 10%', '5 lt/ha', 7),
              ShownPesticide('Pyrimethanil 36,7%', '1,5 lt/ha', 56),
              ShownPesticide('Captano 80%', '2 kg/ha', 21),
              ShownPesticide('Ciprodinil 50%', '0,5 kg/ha', 60),
              ShownPesticide('Fosfonato di potassio 51,7%', '1,9 lt/ha', 35),
              ShownPesticide('rame metallo 17%', '3,675 kg/ha', 0),
              ShownPesticide('Rame metallo 30%', '2,47 kg/ha', 0),
              ShownPesticide('Zolfo 80 %', '500 gr/hl', 5),
              ShownPesticide('Rame metallo 35%', '340 gr/hl', 21),
              ShownPesticide('Rame metallo 14,84%', '2,5 lt/ha', 21),
              ShownPesticide(
                  'Rame metallo 20,30% Zolfo 14,85%', '850 gr/hl', 20),
              ShownPesticide('Rame metallo 13% Zolfo 21%', '900 ml/hl', 20),
              ShownPesticide('Rame metallo 25 %', '3 kg/ha', 0),
              ShownPesticide('Rame metallo 37,5 %', '2,5 kg/ha', 21),
              ShownPesticide('Rame metallo 40 %', '3,75 lt/ha', 7),
              ShownPesticide('Dithianon 9,10% Fosfonato di potassio 40,87%',
                  '2,5 lt/ha', 35),
              ShownPesticide('Dithianon 41,9%', '1,05 lt/ha', 56),
              ShownPesticide('Difenoconazolo 23,23%', '15 ml/hl', 14),
              ShownPesticide('Miclobutanil 18,23%', '0,24 lt/ha', 14),
              ShownPesticide('Difenoconazolo 25,97%', '20 ml/hl', 14),
              ShownPesticide('Dodina 39,4%', '120 ml/hl', 40),
              ShownPesticide('Tetraconazolo 11,6%', '240 ml/ha', 14),
              ShownPesticide('Penconazolo 10%', '40 gr/hl', 14),
              ShownPesticide('Difenoconazolo 1,80%', '2,25 lt/ha', 14),
              ShownPesticide(
                  'Isopyrazam 9,28% Difenoconazolo 3,71%', '1,5 lt/ha', 21),
              ShownPesticide('Tetraconazolo 3,85 %', '375 ml/hl', 14),
              ShownPesticide(
                  'Olio essenziale di arancio dolce 5,88%', '4 lt/ha', 3),
              ShownPesticide('Rame metallo 15%', '3,6 kg/ha', 0),
              ShownPesticide('Trifloxystrobin 50%', '15 gr/hl', 14),
              ShownPesticide(
                  'Trifloxystrobin 25% Tebuconazolo 50%', '300 gr/ha', 14),
              ShownPesticide('Fluazinam 40.97%', '1 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,5% Zolfo 70%', '280 gr/hl', 30),
              ShownPesticide('Penthiopyrad 20%', '75 ml/hl', 21),
              ShownPesticide('Rame metallo 26.2%', '350 ml/hl', 20),
              ShownPesticide('Zolfo 51,7 %', '7 lt/ha', 5),
              ShownPesticide('Flutriafol 11.8%', '0,25 lt/ha', 21),
              ShownPesticide('TEBUCONAZOLO 25%', '1 kg/ha', 60),
              ShownPesticide('rame metallo 24%', '3,5 lt/ha', 21),
              ShownPesticide(
                  'Difenoconazolo Kresoxym metile 25%', '0,30 kg/ha', 35),
              ShownPesticide('Rame metallo 13%', '7,5 lt/ha', 7),
              ShownPesticide('Fluopyram 5% Fosetil Al 66,6%', '3 kg/ha', 28),
              ShownPesticide(
                  'Fluopyram 17,7% Tebuconazolo 17,7%', '50 ml/hl', 14),
              ShownPesticide('CYPRODINIL 30%', '0,75 lt/ha', 60),
              ShownPesticide('Miclobutanil 13,26%', '0,38 lt/ha', 14),
              ShownPesticide(
                  'Captano 23,2% Fosfonato di potassio 42,6%', '3 lt/ha', 28),
              ShownPesticide('Metam sodio 32,7%', '1000 lt/ha', 0),
              ShownPesticide('Miclobutanil 4,2%', '1,14 lt/ha', 14),
              ShownPesticide('Miclobutanil 13,4%', '0,33 lt/ha', 14),
              ShownPesticide('Fluazinam 40 %', '1,5 lt/ha', 63),
              ShownPesticide('Fluazinam 38,75 %', '1 lt/ha', 60),
              ShownPesticide('RAME 50%', '1 kg/ha', 21),
              ShownPesticide('Rame metallo 36,7%', '2,5 lt/ha', 0),
              ShownPesticide('pyrimethanil 37,4%', '1 lt/ha', 56),
              ShownPesticide('Tebuconazolo 19,6%', '0,9 lt/ha', 14),
              ShownPesticide('Penconazolo 10,2%', '50 ml/hl', 14),
              ShownPesticide('Polisolfuro di calcio 30 %', '24 kg/ha', 0),
              ShownPesticide('Olio minerale paraffinico 41,3%', '75 lt/ha', 0),
              ShownPesticide('Metiram 70%', '2,6 kg/ha', 21),
              ShownPesticide('Rame metallo 32 %', '1,5 kg/ha', 21),
              ShownPesticide('RAME metallo 13%  ZOLFO 21%', '800 ml/hl', 20),
              ShownPesticide('Pyrimetanil 36,7%', '1,5 lt/ha', 7),
              ShownPesticide('Difenoconazolo 10%', '0,75 lt/ha', 14),
              ShownPesticide('Fluxapyroxad 26,5%', '0,3 lt/ha', 35),
              ShownPesticide('bacillus subtilis 15,67%', '4 gr/mq', 3),
              ShownPesticide('Fenbuconazolo 2,48%', '2 lt/ha', 28),
              ShownPesticide('Zolfo 45%', '500 gr/hl', 5),
              ShownPesticide('Zolfo 35%', '35 kg/ha', 5),
              ShownPesticide('Dodina 52.9%', '1,25 lt/ha', 28),
              ShownPesticide('Dodina 65%', '1,38 kg/ha', 40),
              ShownPesticide('Zolfo 46,75%', '300 ml/hl', 5),
              ShownPesticide('Zolfo 57,3%', '6 lt/ha', 0),
              ShownPesticide('Laminarina 5%', '1 lt/ha', 0),
              ShownPesticide('Kresoxym-metile puro 50%', '200 gr/ha', 35),
              ShownPesticide(
                  'Pyrimetanil 21,9% Dithianon 21,9%', '2 lt/ha', 56),
              ShownPesticide('bicarbonato di potassio 99.5%', '7,5 kg/ha', 0),
              ShownPesticide('Rame metallo 25,42%', '3,2 lt/ha', 21),
            ]
          },
          {
            'Apple Powdery Mildew': [
              ShownPesticide('Difeconazolo 23,23%', '15 ml/hl', 14),
              ShownPesticide('Zolfo 56,09%', '4 lt/ha', 5),
              ShownPesticide('Tebuconazolo 25 %', '1 kg/ha', 60),
              ShownPesticide('Tebuconazolo 40,18%', '580 ml/ha', 60),
              ShownPesticide('Tebuconazolo 24,03%', '1 lt/ha', 60),
              ShownPesticide('Tebuconazolo 4,2%', '5,80 lt/ha', 60),
              ShownPesticide('Zolfo 80%', '4,5 kg/ha', 0),
              ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
              ShownPesticide(
                  'Boscalid 25,2% Pyraclostrobin 12,8%', '0,8 kg/ha', 7),
              ShownPesticide('Zolfo 35%', '50 kg/ha', 5),
              ShownPesticide('Difeconazolo 23,6%', '0,3 lt/ha', 14),
              ShownPesticide('Cyflufenamid 5,1%', '0,5 lt/ha', 14),
              ShownPesticide('Tetraconazolo 3,85 %', '750 ml/ha', 14),
              ShownPesticide(
                  'Rame metallo 20,3% Zolfo 14,85%', '850 gr/hl', 20),
              ShownPesticide('Rame metallo 13% Zolfo 21%', '900 ml/hl', 20),
              ShownPesticide('Miclobutanil 18,23%', '0,24 lt/ha', 14),
              ShownPesticide('Tetraconazolo  11,6%', '240 ml/ha', 14),
              ShownPesticide('Penconazolo 10%', '40 gr/hl', 14),
              ShownPesticide('Penconazolo 10,20%', '40 ml/hl', 14),
              ShownPesticide('Difeconazolo 1,8%', '2,25 lt/ha', 14),
              ShownPesticide(
                  'Isopyrazam 9,28% Difenoconazolo 3,71%', '1,5 lt/ha', 21),
              ShownPesticide(
                  'olio essenziale di arancio dolce', '2,8 lt/ha', 3),
              ShownPesticide('Trifloxystrobin 50%', '15 gr/hl', 14),
              ShownPesticide(
                  'Trifloxystrobin 25% Tebuconazolo 50%', '300 gr/ha', 14),
              ShownPesticide('Penthiopyrad 20 %', '1,125 lt/ha', 21),
              ShownPesticide('Zolfo 51,7%', '7 lt/ha', 3),
              ShownPesticide('Flutriafol 11.8%', '0,25 lt/ha', 21),
              ShownPesticide('Meptyldinocap 35,71%', '0,6 lt/ha', 0),
              ShownPesticide('Zolfo 49,5%', '330 ml/hl', 5),
              ShownPesticide('Fluopyram 5 % Fosetil Al 66,6%', '3 kg/ha', 28),
              ShownPesticide(
                  'Fluopyram 17,7% Tebuconazolo 17,7%', '50 ml/hl', 14),
              ShownPesticide('Miclobutanil 13,26%', '0,38 lt/ha', 14),
              ShownPesticide('Miclobutanil 4,2%', '114 ml/hl', 14),
              ShownPesticide('Miclobutanil 13,4%', '33 ml/hl', 14),
              ShownPesticide('Zolfo 55,7%', '4 lt/ha', 5),
              ShownPesticide('Zolfo 90%', '300 gr/hl', 5),
              ShownPesticide('Bupirimate 23,8%', '0,9 lt/ha', 14),
              ShownPesticide('Penconazolo 2,83%', '1,5 lt/ha', 14),
              ShownPesticide('Tebuconazolo 19,6%', '0,9 lt/ha', 14),
              ShownPesticide('Polisolfuro di calcio 30%', '18 kg/ha', 5),
              ShownPesticide('Difenoconazolo 10%', '37,5 gr/hl', 14),
              ShownPesticide('Fluxapyroxad 26,5%', '15 ml/hl', 35),
              ShownPesticide('Fenbuconazolo 2,48%', '2 lt/ha', 28),
              ShownPesticide('Zolfo 45%', '300 gr/hl', 5),
              ShownPesticide('Miclobutanil 20%', '28 ml/hl', 14),
              ShownPesticide('Zolfo 57,3%', '6 lt/ha', 5),
              ShownPesticide('Zolfo 46,75%', '300 ml/hl', 5),
              ShownPesticide('Penconazolo 10,1%', '30 ml/hl', 14),
              ShownPesticide('Penconazolo 2,5%', '2 kg/ha', 14),
              ShownPesticide('Penconazolo 19,5%', '16 ml/hl', 14),
              ShownPesticide('Kresoxym-metile 50%', '200 gr/ha', 35),
              ShownPesticide('bicarbonato di potassio 99.5%', '5 kg/ha', 0),
              ShownPesticide('Zolfo 50%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 95%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 85%', '40 kg/ha', 5),
              ShownPesticide('Zolfo 91,08%', '450gr/hl', 5),
              ShownPesticide('Zolfo 96%', '35 kg/ha', 5),
              ShownPesticide('Zolfo 98,5%', '30 kg/ha', 5),
            ]
          },
          {
            'Brown Spotting': [
              ShownPesticide('Fosetil Al 80%', '250 gr/hl', 28),
              ShownPesticide(
                  'Bacillus amyloliquefaciens, subspecie plantarum, ceppo D747 25%',
                  '2,5 kg/ha',
                  0),
              ShownPesticide('Rame metallo 40%', '3,75 kg/ha', 7),
              ShownPesticide('Rame metallo 20%', '1500 gr/hl', 7),
              ShownPesticide('Fludioxonil 50%', '0,45 kg/ha', 3),
              ShownPesticide('rame metallo 15,2%', '2 lt/ha', 40),
              ShownPesticide(
                  'Fluopyram 17,7% Tebuconazolo 17,7%', '50 ml/hl', 14),
              ShownPesticide('Rame metallo 22,2%', '1,1 lt/ha', 21),
              ShownPesticide('Tebuconazolo 19,6%', '0,9 lt/ha', 14),
              ShownPesticide('Captano 80%', '2 kg/ha', 21),
            ]
          },
          {
            'Carpocapsa Apple Tree': [
              ShownPesticide('Emamectina benzoato 0,95%', '4 kg/ha', 7),
              ShownPesticide('Deltametrina 2,8 %', '500 ml/ha', 7),
              ShownPesticide('Lamba-cialotrina 2,5%', '0,8 kg/ha', 7),
              ShownPesticide(
                  'Bacillus Thuringiensis var. kurstaki 54%', '1,5 kg/ha', 0),
              ShownPesticide('Lambda-cialotrina pura 9,4%', '150 ml/ha', 7),
              ShownPesticide('DELTAMETRINA 2,73%', '0,5 lt/ha', 7),
              ShownPesticide('DELTAMETRINA 1,51%', '90 ml/hl', 3),
              ShownPesticide('Indoxacarb 15,84%', '0,5 lt/ha', 7),
              ShownPesticide('Bacillus Thuringiensis var. kurstaki PB-54 16%',
                  '1 kg/ha', 3),
              ShownPesticide('Baculovirus', '600 ml/ha', 3),
              ShownPesticide('Deltametrina 2,81%', '30 ml/hl', 3),
              ShownPesticide('Spinosad 11,6%', '1,2 lt/ha', 7),
              ShownPesticide('Chlorantraniliprole 20%', '20 ml/hl', 14),
              ShownPesticide(
                  'Bacillus thuringiensis var. kurstaki, ceppo SA12 18%',
                  '1,5 kg/ha',
                  0),
              ShownPesticide('Deltametrina 2,42%', '0,7 lt/ha', 7),
              ShownPesticide('Deltametrina 1,63%', '1,150 lt/ha', 7),
              ShownPesticide('Spinetoram 25%', '400 gr/ha', 7),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                  '1 kg/ha',
                  0),
              ShownPesticide('Olio minerale 98,8%', '3,5 lt/ha', 20),
              ShownPesticide('Tau-fluvalinate 21,4%', '0,6 lt/ha', 30),
              ShownPesticide('Metossifenozide 22,5%', '600 ml/ha', 14),
              ShownPesticide('Lambda-cialotrina 5 %', '300 gr/ha', 9),
              ShownPesticide('Lambda-cialotrina 9,48%', '250 ml/ha', 7),
              ShownPesticide('Lambda-cialotrina 1,47%', '1,7 lt/ha', 7),
              ShownPesticide('Acetamiprid 17,6%', '0,5 lt/ha', 14),
              ShownPesticide('Spinosad 44,2%', '300 ml/ha', 7),
              ShownPesticide('Tebufenozide 22,5%', '80 ml/hl', 14),
              ShownPesticide('Azadiractina A 1%', '3 lt/ha', 3),
              ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
              ShownPesticide('Olio minerale 85%', '2 lt/hl', 20),
              ShownPesticide(
                  'Abamectina  0,53% Acrinatrina 0,95%', '2,5 lt/ha', 0),
              ShownPesticide('Fosmet 17,7%', '3,75 lt/ha', 28),
              ShownPesticide('Fosmet 50%', '1,5 kg/ha', 28),
              ShownPesticide('Fosmet 23,5%', '3,19 kg/ha', 28),
              ShownPesticide('Indoxacarb 30%', '16,5 gr/hl', 7),
              ShownPesticide('Etofenprox 30%', '750 ml/ha', 7),
              ShownPesticide(
                  'Bacillus thuringiensis Berliner varietà kurstaki ed aizawai 46,2%',
                  '2 kg/ha',
                  0),
              ShownPesticide('Chlorantraniliprole 18,4%', '300 ml/ha', 21),
              ShownPesticide('Chlorantraniliprole 4,29% Abamectina 1,71%',
                  '1,2 lt/ha', 14),
            ]
          },
          {
            'Gray Aphid': [
              ShownPesticide('Flonicamide 50%', '0,14 kg/ha', 35),
              ShownPesticide('Olio di paraffina 94%', '20 lt/ha', 20),
              ShownPesticide('OLIO DI PARAFFINA 78,1%', '10 lt/ha', 20),
              ShownPesticide('Deltametrina 2,8 %', '500 ml/ha', 7),
              ShownPesticide('Pirimicarb 50%', '0,76 kg/ha', 7),
              ShownPesticide('Lambda-cialotrina  9,4%', '150 ml/ha', 7),
              ShownPesticide('DELTAMETRINA 2,73%', '0,5 lt/ha', 7),
              ShownPesticide('Olio minerale bianco 80%', '2 lt/hl', 20),
              ShownPesticide('Olio minerale bianco 85%', '2 lt/hl', 20),
              ShownPesticide('Sali potassici 47,8%', '2 lt/hl', 0),
              ShownPesticide('sulfoxaflor puro 11,9%', '400 ml/ha', 7),
              ShownPesticide('Olio di paraffina 60,4%', '12 lt/ha', 20),
              ShownPesticide('Olio di paraffina 98,8%', '3,5 lt/hl', 20),
              ShownPesticide('Lambda cialotrina 2,5%', '800 gr/ha', 7),
              ShownPesticide('Acetamiprid 4,67%', '1,5 lt/ha', 14),
              ShownPesticide('Tau-fluvalinate 21,4%', '0,6 lt/ha', 30),
              ShownPesticide('Acetamiprid 5%', '1,5 kg/ha', 14),
              ShownPesticide('Olio di paraffina 96,9%', '2,5 lt/hl', 1),
              ShownPesticide('Lambda-cialotrina 5 %', '30 gr/hl', 9),
              ShownPesticide('Lambda-cialotrina 1,47%', '1,3 lt/ha', 7),
              ShownPesticide('Acetamiprid 17,6%', '0,35 lt/ha', 14),
              ShownPesticide('Olio di paraffina 78,1%', '10 lt/ha', 20),
              ShownPesticide('Spirotetramat 4,53%', '3,75 lt/ha', 21),
              ShownPesticide('Azadiractina A 1%', '3 lt/ha', 3),
              ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
              ShownPesticide('Piretrine 1,40%', '2,5 lt/ha', 7),
              ShownPesticide('Flupyradifurone 2,12%', '5 ml/lt', 14),
              ShownPesticide('Flupyradifurone 17,1%', '0,9 lt/ha', 14),
              ShownPesticide('Piretrine 0,5%', '500 ml/hl', 2),
              ShownPesticide('Esfenvalerate 1,5 %', '100 ml/hl', 14),
              ShownPesticide('Flonicamid 50 %', '0,14 kg/ha', 21),
              ShownPesticide(
                  'Olio minerale paraffinico 96,5%', '3,5 lt/ha', 20),
            ]
          },
          {
            'Cochineal Of San Jose': [
              ShownPesticide('Pyriproxyfen 10,9 %', '600 ml/ha', 14),
              ShownPesticide('Olio minerale bianco 80%', '4 lt/hl', 20),
              ShownPesticide('Olio di paraffina 94%', '20 lt/ha', 20),
              ShownPesticide('OLIO DI PARAFFINA 78,1%', '10 lt/ha', 20),
              ShownPesticide('Deltametrina 1,51%', '90 ml/hl', 3),
              ShownPesticide('Pyriproxyfen 10,8%', '0,5 lt/ha', 14),
              ShownPesticide('Deltametrina 2,81%', '75 ml/hl', 3),
              ShownPesticide('Olio minerale bianco 85%', '1,5 lt/hl', 20),
              ShownPesticide('sulfoxaflor puro 11,9%', '400 ml/ha', 7),
              ShownPesticide('Deltametrina 2,42%', '0,7 lt/ha', 7),
              ShownPesticide('Deltametrina 1,63%', '1,150 lt/ha', 7),
              ShownPesticide('Olio minerale 98,8%', '3,5 lt/hl', 20),
              ShownPesticide('Tau-fluvalinate 21,4%', '0,6 lt/ha', 30),
              ShownPesticide('Pyriproxyfen 10%', '0,5 lt/ha', 0),
              ShownPesticide('Olio minerale 96,9%', '2,5 lt/hl', 1),
              ShownPesticide('Pyriproxyfen 10,86%', '0,5 lt/ha', 0),
              ShownPesticide('Spirotetramat 4,53%', '4,5 lt/ha', 21),
              ShownPesticide(
                  'Olio minerale paraffinico 96,5%', '3,5 lt/hl', 20),
              ShownPesticide('Olio minerale paraffinico 41,3%', '5 lt/hl', 0),
              ShownPesticide('Fosmet 17,7%', '3,75 lt/ha', 28),
              ShownPesticide('Fosmet 23,5%', '3,19 kg/ha', 28),
              ShownPesticide('Piretrine 0,5 %', '1 lt/hl', 2),
            ]
          },
        ],
        'Romania': [
          {
            'Codling Moth': [
              ShownPesticide('Laser 240 SC.', '0,06% (0,9 l/ha/1500 l apa)', 7),
              ShownPesticide('Faster 10 ', '0,025% (375 ml/1500 l)', 0),
              ShownPesticide('DECIS 25 WG', '0,045 KG/HA (0,003%)', 7),
            ]
          },
          {
            'San Jose Scale': [
              ShownPesticide(
                  'Mospilan 20SG',
                  '0.375 - 0450 kg/ha (0.025% - 0.03%) , 0,025-0,03% (0,250-0,300 kg/ha) ',
                  14),
              ShownPesticide('DECIS 25 WG', '0,045 KG/HA (0,003%)', 7),
            ]
          },
          {
            'Two Spotted Spider Mite': [
              ShownPesticide(
                  'Milbeknock EC 7,5 ml ', '0,75 l/ha, 7,5 ml/10l', 28),
              ShownPesticide('Hexithiazox 10% ', '1 kg/ha', 28),
            ]
          },
          {
            'Apple Scab': [
              ShownPesticide('Folpan 80 WDG/Flovine ', '0,15%', 0),
              ShownPesticide('Kocide 2000', '2,5kg/ha (0,25%)', 0),
              ShownPesticide('Merpan 80WDG/CAPTADIN 80WDG ',
                  '0,15% (2,25 KG/HA/1500L)', 28),
              ShownPesticide('Polyram df', '0,25%', 21),
              ShownPesticide('DIFCOR 250 EC', '0,15 l/HA', 21),
              ShownPesticide('DAGONIS', '1,2L/HA ', 0),
              ShownPesticide('CAPTAN 80 WDG', '0,15% (2,250 KG/HA)', 28),
              ShownPesticide('BOUILLIE BORDELAIZE WDG', '0,5% (7,5 KG/HA)', 0),
              ShownPesticide('MACCANI', '2,5 KG/HA', 35),
            ]
          },
          {
            'Apple Powdery Mildew': [
              ShownPesticide('Flosul ', '7,5l/ha', 3),
              ShownPesticide('DAGONIS', '0,72L/HA ', 0),
              ShownPesticide('MACCANI', '2,5 KG/HA', 35),
            ]
          },
        ],
        'Croatia': [
          {
            'Apple Scab': [
              ShownPesticide('Pesticid/aktivna tvar', 'Doza/koncentracija', 0),
              ShownPesticide(
                  'CAFFARO 20 WP  - Bakarni spojevi 200g/kg', '1-1,5 %', 0),
              ShownPesticide(
                  'BELLIS - Piraklostrobin 128,00g/kg+Boskalid 252,00 g/kg',
                  '0.0008',
                  7),
              ShownPesticide(
                  'CHORUS 75 WG - Ciprodinil 750 g/kg', '0,02-0,03%', 35),
              ShownPesticide(
                  'CHROMODIN S-65 - Dodin 650 g/kg', '1-1,38 kg/ha', 60),
              ShownPesticide(
                  'CHROMOSUL 80 - Sumpor 800 g/kg', 'max 6 kg/ha', 14),
              ShownPesticide('ARGO -Difenkonazol 250g/l', '0.00013', 35),
              ShownPesticide('CUPROCAFFARO 50 WG - bakarni okksiklorid 500g/kg',
                  '0,3-0,75%', 0),
              ShownPesticide(
                  'DIFCOR - Difenkonazol 250g/l', '0,013-0,015%', 35),
              ShownPesticide('DOMARK 40ME - Tetrakonazol 40g/l', '1l/ha', 14),
              ShownPesticide('FUTURA 50 WP - Folpet 500g/kg', '0.002', 21),
              ShownPesticide(
                  'MERPAN 80 WDG - Kaptan 800g/kg', '1,88-2 kg/ha', 28),
              ShownPesticide(
                  'NATIVO 75WG - Triflosistrobin 250 g/kg + Tebukonazol 500 g/kg',
                  '0.0002',
                  14),
              ShownPesticide('NORDOX 75WG - Bakarni oksiklorid 750g/kg',
                  '0,2%, u mirovanju', 0),
              ShownPesticide(
                  'PYRUS 400SC - Pirimetanil 400g/kg', '0,75 l/ha', 56),
              ShownPesticide(
                  'SCORE 250 EC - Difenkonazol 250g/l', '0,013-0,015%', 35),
              ShownPesticide('CASTOR - Kaptan 500g/kg', 'o,2-0,3%', 21),
              ShownPesticide(
                  'STROBY WG - Krezoksim-metil 500g/l', '0,015-0,02%', 35),
              ShownPesticide('TOPAS 100EC - Penkonazol 100g/l', '0.00025', 14),
              ShownPesticide(
                  'ZATO PLUS - Trifloksistrobin 40g/kg+Kaptan 600g/kg',
                  '1,25-1,5 kg/ha',
                  21),
              ShownPesticide(
                  'ZATO 50WG - Tri floksistrobin 500g/kg', '0.0001', 14),
              ShownPesticide(
                  'CHORUS 50 WG - Ciprodinil 500g/kg', '0.00045', 21),
              ShownPesticide('ZIRAM 76WG - Ciram 760g/kg', '2,5 kg/ha', 0),
              ShownPesticide(
                  'LUNA EXPIRIENCE - Fluopiram 200g/l+Tebukonazol 200g/l',
                  '0,25-0,75 l/ha',
                  14),
              ShownPesticide('DIFENZONE - Difenkonazol 250g/l', '0,2 l/ha', 21),
              ShownPesticide(
                  'FABAN - Pirimetanil 250g/l+Ditianon 250g/l', '1,2 l/ha', 56),
              ShownPesticide('DELAN - Ditianon 700g/kg', '0,5-0,75 kg/ha', 42),
              ShownPesticide('SCAB 80WG - Kaptan 800g/kg', '1,88 kg/ha', 28),
              ShownPesticide('KAPETAN 80WG - Kaptan 800g/kg', '1,88 kg/ha', 21),
              ShownPesticide(
                  'DELAN PRO - Ditianon 125g/kg+Kalijevi fosfonati 561,20 g/l',
                  '2,5 l7ha',
                  35),
              ShownPesticide('SCALA - Pirimetanil 400g/l', '1,1-1,5 l/ha', 56),
              ShownPesticide(
                  'SERCADIS - Fluksapiroksad 300g/l', '0,25-0,3 l/ha', 35),
              ShownPesticide('VITISAN - Kalijev hidrogen karbonat 994,90',
                  '5-7,5 kg/ha', 0),
              ShownPesticide(
                  'COMIDUR SC - Bakarni oksiklorid 520g/kg', '0,25-0,3%', 0),
              ShownPesticide(
                  'SECARDIS PLUS - Fluksapiroksad 75g/l+Difenkonazol 50 g/l',
                  '1,2 l/ha',
                  35),
              ShownPesticide('SYLLIT 544 SC - Dodin 544 g/l', '1,25 l/ha', 60),
              ShownPesticide(
                  'AIRON SC - Bakarni hidroksid 136 g/l+ Bakarni oksiklorid 136 g/l',
                  '3 l/ha',
                  21),
              ShownPesticide(
                  'EMBRELIA - Difenkonazol 40 g/l+ Izopirazam 100 g/l',
                  '0,5-1,5 l/ha',
                  21),
              ShownPesticide(
                  'SUGOBY - Krezoksim-metil 500 g/l', '0,015-0,02%', 35),
              ShownPesticide('LUNNA CARE - Fluopiram 50 g/l+ Fosetil 666,0 g/l',
                  '1-3 kg/ha', 28),
              ShownPesticide(
                  'DECIBEL MAX - Krezoksim-metil 250g/kg+Difenkonazol 125g/kg',
                  '0,3 kg/ha',
                  35),
              ShownPesticide('ALCOBAN - Ditianon 700 g/kg', '0,5 kg/ha', 42),
            ]
          },
          {
            'Apple Powdery Mildew': [
              ShownPesticide('CHROMOSUL 80 - Sumpor 800g/kg', 'do 6 kg/ha', 28),
              ShownPesticide('COSAVET DF - Sumpor 800g/kg', '0,3-0,5%', 35),
              ShownPesticide('DIFCOR - Difenkonazol 250g/l', '0,12 l/ha', 21),
              ShownPesticide(
                  'DOMARK 40 ME - Tetrakonazol 40g/l', '0,6-0,75 l/ha', 35),
              ShownPesticide('KALINOSUL 80WG - Sumpor 800g/kg', '0.003', 35),
              ShownPesticide('KUMULUS DF - Sumpor 800g/kg', '0,1-0,2%', 28),
              ShownPesticide(
                  'NATIVO 75 WG - Trifloksistrobin 250g/kg+ Tebukonazol 500g/kg',
                  '160-200g/ha',
                  42),
              ShownPesticide(
                  'NORDOX 75 WG - Bakarni oksid 750 g/kg', '0,1-0,1,5 %', 35),
              ShownPesticide('SULFOLAC 80WG - Sumpor 800g/kg', '0,3-0,5%', 35),
              ShownPesticide('TOPAS 100EC - Penkonazol 100g/l', '0.00025', 28),
              ShownPesticide(
                  'LUNA EXPERIENCE - Fluopiram 200g/l+Tebukonazol 200g/l',
                  '0,375 l/ha',
                  14),
              ShownPesticide('SULGRAN - Sumpor 800g/kg', '3-6 kg/ha', 28),
              ShownPesticide(
                  'SERCADIS - Fluksapiroksad 300g/l', '0,15 l/ha', 35),
              ShownPesticide('VITISAN - Kalijev hidrogen karbonat 994,90 g/kg',
                  '3-12 kg/ha', 0),
              ShownPesticide(
                  'CYFLAMID 5EW - Ciflufenamid 51.30g/l', '0,32-0,5 l/ha', 21),
              ShownPesticide(
                  'KARATHANE GOLD - Meptildinokap 350g/l', '0,6 l/ha', 21),
            ]
          },
          {
            'Codling Moth': [
              ShownPesticide('DECIS 2,5EC - Deltametrin 25 g/l', '0.0005', 7),
              ShownPesticide('MIMIC - Tebufenozid 240 g/kg', '0.006', 21),
              ShownPesticide('RUNNER - Metoksifenozid 240g/kg', '0.0004', 14),
              ShownPesticide(
                  'CARPOVIRUSINE EVO 2 - Cydia pomonellaGranuloirus 909 g/ha',
                  '1 l/ha',
                  3),
              ShownPesticide(
                  'DECIS 100 EC - Deltametrin 100g/l', '0,075-0,175 l/ha', 7),
              ShownPesticide('POLECI PLUS - Deltametrin 25 g/l', '0,3 l/ha', 7),
              ShownPesticide('HARPUN - Piriproksifen 100 g/l', '1 l/ha', 91),
              ShownPesticide(
                  'DELEGATE 250 WG - Spinetoram 250 g/kg', '0,3 kg/ha', 7),
              ShownPesticide(
                  'VOLIAM TARGO - Klorantraniliprol 45 g/l+Abamektin 18 g/l',
                  '1.1-1,2 l/ha',
                  14),
            ]
          },
          {
            'Aphidess': [
              ShownPesticide('DECIS - Deltametrin 25 g/l', '0.0005', 7),
              ShownPesticide(
                  'MAVRIK 2F - Tau-fluvaliant 240 g/l', '0,02-0,04', 30),
              ShownPesticide(
                  'PRIMOR 50 WG - Pirimikarb 500 g/l', '0, 04-0,06%', 14),
              ShownPesticide(
                  'SUMIALFA 5SL - Esfenvalerat 50 g/l', '0.00025', 14),
              ShownPesticide(
                  'TEPPEKI 500WG - Flonikamid 500g/l', '0,12-0,14 kg/ha', 21),
              ShownPesticide(
                  'MOSPILAN 20SG - Acetamipirid 200g/kg', '125g/ha', 14),
              ShownPesticide('POLECI PLUS - Deltametrin 25 g/l', '0,5 l/ha', 7),
              ShownPesticide(
                  'PEROMANAL PRO - Parafinsko ulje 546 g/l', '0.01', 0),
              ShownPesticide('RITMUS - Deltametrin 25 g/l', '0,3-0,5 l/ha', 7),
              ShownPesticide(
                  'ASSET FIVE - Piretrini 46,53 g/l', '0,96 l/ha', 1),
            ]
          },
          {
            'San Hose Scale': [
              ShownPesticide('BRAI - Piriproksifen 100g/l', '0,04-0,05%', 0),
              ShownPesticide(
                  'OVIPRON TOP - Parafinsko ulje 800 g/l', '10-35 l/ha', 20),
              ShownPesticide(
                  'LAINCOIL - Parafinsko ulje 790 g/l', '0,75-1%', 0),
              ShownPesticide('CLOSER - Sulfoksaflor 120 g/l', '0,4 l/ha', 7),
            ]
          },
          {
            'Brown rot': [
              ShownPesticide(
                  'KAPETAN 80WG - Kaptan 800 g/kg', '1,88 kg/ha', 21),
              ShownPesticide('SCAB 80WG - Kaptan 800 g/kg', '1,88 kg/ha', 21),
            ]
          },
          {
            'Spider Mites': [
              ShownPesticide(
                  'SHIRUDO - Tebufenpirad 200 g/kg', '0,125 kg/ha', 21),
              ShownPesticide(
                  'PIROMANAL NEU - Parafinsko ulje 546 g/l', '0.01', 0),
              ShownPesticide(
                  'OVIPRON TOP - Parafinsko ulje 800 g/l', '10-35 l/ha', 20),
              ShownPesticide(
                  'MILBEKNOCK - Milbemektin 9,3 g/l', '0,1-0,135 %', 14),
              ShownPesticide('OVITEX - Parafinsko ulje 817 g/l', '20 l/ha', 0),
              ShownPesticide('APACHE - Abamektin 18 g/l', '0,6-0,96 l/ha', 3),
              ShownPesticide('NEALTA - Ciflumetofen 200 g/l', '1 l/ha', 7),
              ShownPesticide('NISSORUN 10 WP - Heksitiazoks 100 g/kg',
                  '0,5-0,75 kg/ha', 28),
              ShownPesticide(
                  'KANEMITE SC - Acekvinocil 164 g/l', '1,8 l/ha', 30),
            ]
          },
        ],
        'Germany': [
          {
            'Fruit Tree Spider Mite': [
              ShownPesticide(
                'Clofentezine',
                '0.2 l/ha and per m crown height in 400 to 500 l/ha',
                0,
              ),
            ]
          },
          {
            'Scab': [
              ShownPesticide(
                  'Dithianon',
                  '''
0.17 kg/ha and per m crown height in a maximum of 500 l/ha
          ''',
                  42)
            ]
          },
        ],
        'English': [],
      },
    };
