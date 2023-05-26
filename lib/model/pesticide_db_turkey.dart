import 'models.dart';

Map<
    String,
    List<
        Map<String,
            List<ShownPesticide>>>> getTurkeyCropProblemPesticideMap() => {
      'Buğday': [
        {
          'Süne': [
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
          'Kımıl': [
            ShownPesticide('100 g/l Alpha-cypermethrin', '0.45', 14),
            ShownPesticide('120 g/l Deltamethrin', '0.075', 0),
          ]
        },
        {
          'Hububat hortumlu böceği': [
            ShownPesticide('500 g/l Cypermethrin', '0.15', 7),
            ShownPesticide('100 g/l Alpha-cypermethrin', '0.14', 15),
            ShownPesticide('25 g/l Beta-cyfluthrin', '0.3', 14),
            ShownPesticide('50 g/l Lambda-cyhalothrin', '0.25', 14),
          ]
        },
        {
          'Sarı pas': [
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
            ShownPesticide('225 g/l Tebuconazole + 75 g/l Flutriafol', '1', 49),
            ShownPesticide('230 g/L Prochloraz+ 41 g/L Tetraconazole', '2', 56),
            ShownPesticide('233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                '1.75', 42),
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
            ShownPesticide('310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                '0.6', 35),
            ShownPesticide('60 g/l Metconazole', '1.5', 35),
            ShownPesticide('62,5 g/l Fluxapyroxad', '1.5', 49),
            ShownPesticide(
                '80 g/l Azoxystrobin + 160 g/l Tebuconazole', '1', 56),
            ShownPesticide(
                '80 g/l Azoxystrobin + 31,25 g/l Epoxiconazole', '2', 56),
          ]
        },
        {
          'Kahverengi pas': [
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
            ShownPesticide('233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                '1.75', 42),
            ShownPesticide('250 g/l Azoxystrobin', '1', 56),
            ShownPesticide(
                '267 g/l Prochloraz + 133 g/l Tebuconazole', '1.5', 42),
            ShownPesticide('282 g/l Thiophanate-methyl + 56 g/l Pyraclostrobin',
                '1.75', 56),
            ShownPesticide(
                '85 g/l Pyraclostrobin + 62,5 g/l Epoxiconazole', '2', 42),
          ]
        },
        {
          'Septorya Yaprak Lekesi': [
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
            ShownPesticide('225 g/l Tebuconazole + 75 g/l Flutriafol', '1', 49),
            ShownPesticide('230 g/L Prochloraz+ 41 g/L Tetraconazole', '2', 56),
            ShownPesticide('233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                '1.75', 42),
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
            ShownPesticide('310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                '0.6', 35),
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
          'Tahıl Küllemesi': [
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
            ShownPesticide('225 g/l Tebuconazole + 75 g/l Flutriafol', '1', 49),
            ShownPesticide('230 g/L Prochloraz+ 41 g/L Tetraconazole', '2', 56),
            ShownPesticide('233 g/l Thiophanate-methyl + 70 g/l Tetraconazole',
                '1.75', 42),
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
            ShownPesticide('310 g/l Thiophanate-methyl + 187 g/l Epoxiconazole',
                '0.6', 35),
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
      'Mısır': [
        {
          'Yaprak Yanıklığı': [
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
          'İki Noktalı Kırmızı Örümcek': [
            ShownPesticide('110 g/l Etoxazole', '0.25', 1),
          ]
        },
        {
          'Mısır Koçankurdu': [
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
          'Mısır kurdu': [
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
          'Yaprak': [
            ShownPesticide('50 g/l Lambda-cyhalothrin', '0.5', 14),
          ]
        },
        {
          'Mısır Yaprakbiti': [
            ShownPesticide('50 g/l Lambda-cyhalothrin', '0.75', 14),
          ]
        },
        {
          'Telkurtları': [
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
          'Çizgili Yaprakkurdu': [
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
      'Üzüm': [
        {
          'İki Noktalı Kırmızı Örümcek': [
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
          'Salkım güvesi': [
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
          'Bağ küllemesi': [
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
          'Bağda ölükol': [
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
            ShownPesticide('%75 Metalik bakıra eşdeğer bakır oksit', '150', 0),
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
          'Bağ Antraknozu': [
            ShownPesticide(
                '%50 Metalik bakıra eşdeğer bakır oksiklorid', '500', 21),
          ]
        },
        {
          'Bağ mildiyösü': [
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
            ShownPesticide(
                '%32,5 Fosetyl-Al + %25 Mancozeb + %2,5 Cymoxanil', '400', 21),
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
            ShownPesticide('%66,7 Fosetly-Al + %4,44 Fluopicolide', '250', 28),
            ShownPesticide('%66,7 Mancozeb + %8,3 Zoxamide', '180', 21),
            ShownPesticide('%70 Dithianon', '40', 14),
            ShownPesticide('%70 Metiram', '200', 56),
            ShownPesticide('%72 Mancozeb', '200', 21),
            ShownPesticide('%75 Metalik bakıra eşdeğer bakır oksit', '125', 14),
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
                '193 g/l Metalik bakıra eşdeğer bazik bakır sülfat', '500', 21),
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
                '357,5 g/l Metalik bakıra eşdeğer bakır oksiklorid', '350', 14),
            ShownPesticide(
                '361,1 g/l Metalik bakıra eşdeğer bakır hidroksit', '100', 7),
            ShownPesticide('400 g/l Fosforoz Asit', '400', 0),
            ShownPesticide(
                '400 g/l Metalik Bakıra Eşdeğer Bakır Hidroksit', '200', 7),
            ShownPesticide('455 g/l Mancozeb', '150', 21),
            ShownPesticide('500 g/l Captan', '300', 28),
            ShownPesticide('500 g/l Dimethomorph', '50', 28),
            ShownPesticide('500 g/L Folpet+ 10 g/L Oxathiapiprolin', '200', 56),
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
      'Domates': [
        {
          'Mildiyö': [
            ShownPesticide('%25 Mandipropamid + %18 Cymoxanil', '0.6', 1),
            ShownPesticide('%30 Cymoxanil + %22,5 Famoxadone', '40', 3),
            ShownPesticide('%30 Fluazinam+ %20 Cymoxanil', '75', 1),
            ShownPesticide(
                '%32,5 Fosetyl-Al + %25 Mancozeb + %2,5 Cymoxanil', '400', 21),
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
          'Bakteriyel Benek': [
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
          'Erken Yaprak Yanıklığı': [
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
            ShownPesticide(
                '%32,5 Fosetyl-Al + %25 Mancozeb + %2,5 Cymoxanil', '400', 21),
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
                '193 g/l Metalik bakıra eşdeğer bazik bakır sülfat', '500', 21),
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
                '357,5 g/l Metalik bakıra eşdeğer bakır oksiklorid', '420', 14),
            ShownPesticide('375 g/l Fluazinam + 150 g/l Azoxystrobin', '50', 3),
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
          'Kurşini küf': [
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
          'Tahıl Küllemesi': [
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
            ShownPesticide('200 g/l Fluopyram + 200 g/l Tebuconazole', '30', 3),
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
          'Bakteriyel leke': [
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
          'Domates güvesi': [
            ShownPesticide('230 g/l Metaflumizone+16 g/l Abamectin', '100', 3),
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
                '200 g/l Thiamethoxam + 100 g/l Chlorantraniliprole', '0.8', 7),
            ShownPesticide('222 g/l Flubendiamide', '30', 1),
            ShownPesticide('230 g/l Metaflumizone+16 g/l Abamectin', '100', 3),
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
          'Yeşil kurt': [
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
            ShownPesticide('230 g/l Metaflumizone+16 g/l Abamectin', '100', 3),
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
          'Tütün beyaz sineği': [
            ShownPesticide('200 g/l Cyantraniliprole', '0.5', 3),
            ShownPesticide(
                '200 g/l Thiamethoxam + 100 g/l Chlorantraniliprole', '0.8', 7),
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
          'Yaprakbitleri': [
            ShownPesticide('500 g/l Pirimiphos methyl', '100', 4),
          ]
        },
      ],
      'Biber': [
        {
          'Şeftali yaprak biti': [
            ShownPesticide('% 20 Flonicamid+% 15 Acetamiprid', '22', 3),
            ShownPesticide('%20 Acetamiprid', '25', 3),
            ShownPesticide('%50 Flonicamid', '15', 1),
            ShownPesticide('%50 Pirimicarb', '50', 7),
            ShownPesticide('10 g/l Azadirachtin', '500', 3),
            ShownPesticide('200 g/l Acetamiprid', '25', 3),
          ]
        },
        {
          'Tahıl Küllemesi': [
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
            ShownPesticide('200 g/l Fluopyram + 200 g/l Tebuconazole', '30', 3),
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
          'Kurşini küf': [
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
            ShownPesticide('375 g/l Pyrimethanil +125 g/l Fluopyram', '75', 3),
            ShownPesticide('500 g/l Fenhexamid', '100', 1),
            ShownPesticide('500 g/l Imazalil', '30', 3),
          ]
        },
        {
          'Çiçek Tripsi': [
            ShownPesticide('10 g/l Azadirachtin A', '500', 3),
            ShownPesticide('120 g/l Spinetoram', '50', 3),
            ShownPesticide('240 g/l Spinosad', '0.4', 3),
            ShownPesticide('28 g/l Pyrethrin + 24 g/l Azadirachtin', '175', 3),
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
          'Pamuk yaprakkurdu': [
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
          'Yeşil kurt': [
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
          'Tütün beyaz sineği': [
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
      'Elma': [
        {
          'Elma içkurdu': [
            ShownPesticide('% 5.7 Emamectin benzoate', '175', 7),
            ShownPesticide('%10 Acetamiprid + %3 Lambda-cyhalothrin', '25', 14),
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
            ShownPesticide('100 g/l Novaluron + 80 g/l Acetamiprid', '50', 21),
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
                '240 g/l Diflubenzuron + 120 g/l Lambda-cyhalothrin', '10', 14),
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
          'San Jose Kabuklu Biti': [
            ShownPesticide('800 g/l Parafinik Yağ', '2500', 0),
            ShownPesticide(
                '700 g/l Mineral Yağ + 3 g/l Pyriproxyfen', '1500', 0),
            ShownPesticide('240 g/l Sulfoxaflor', '20', 14),
            ShownPesticide('800 g/l Mineral Yağ', '2500', 0),
            ShownPesticide('800 g/l Parafinik Yağ', '2.5', 0),
          ]
        },
        {
          'İki Noktalı Kırmızı Örümcek': [
            ShownPesticide('250 g/l Spirodiclofen', '24', 14),
            ShownPesticide('%20 Pyridaben', '75', 21),
            ShownPesticide('500 g/l Clofentezine', '20', 28),
          ]
        },
        {
          'Elma karalekesi': [
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
            ShownPesticide('%75 Metalik bakıra eşdeğer bakır oksit', '250', 14),
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
                '193 g/l Metalik bakıra eşdeğer bazik bakır sülfat', '500', 21),
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
                '357,5 g/l Metalik bakıra eşdeğer bakır oksiklorid', '400', 14),
            ShownPesticide(
                '375 g/l Phosphorus Acid + 125 g/l Dithianon', '125', 35),
            ShownPesticide('375 g/l Pyrimethanil +125 g/l Fluopyram', '60', 14),
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
          'Elma küllemesi': [
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
          'Elma memeli pası': [
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
    };
