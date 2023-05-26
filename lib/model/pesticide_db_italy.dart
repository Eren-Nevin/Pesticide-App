import 'models.dart';

Map<
    String,
    List<
        Map<String, List<ShownPesticide>>>> getItalyCropProblemPesticideMap() =>
    {
      'Grano': [
        {
          'Septoria': [
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
          'Ruggine Bruna': [
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
          'Ruggine Gialla': [
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
          'Oidio del frumento': [
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
          'Cimice dei cereali': [
            ShownPesticide('Deltametrina 2,81 %', '50 ml/hl', 30),
            ShownPesticide('Acetamiprid 4,67%', '1 lt/ha', 28),
            ShownPesticide('Tau-fluvalinate 21,4%', '0,2 lt/ha', 30),
            ShownPesticide('Lambda-cialotrina 9,48%', '0,2 lt/ha', 40),
          ]
        },
        {
          'Cimice Maura': [
            ShownPesticide('Deltametrina 2,81 %', '50 ml/hl', 30),
            ShownPesticide('Acetamiprid 4,67%', '1 lt/ha', 28),
            ShownPesticide('Tau-fluvalinate 21,4%', '0,2 lt/ha', 30),
            ShownPesticide('Lambda-cialotrina 9,48%', '0,2 lt/ha', 40),
          ]
        },
        {
          'Punteruolo dei cereali': [
            ShownPesticide('Deltametrina 0,2%', '0,25 Kg/ton', 90),
            ShownPesticide('Deltametrina 2,66% piperonilbutossido 23,66 %',
                '10 ml/ton', 180),
            ShownPesticide('Deltametrina 0,66% piperonilbutossido 6,14 %',
                '42 ml/ton', 180),
          ]
        },
      ],
      'Mais': [
        {
          'Elmiontosporiosi': [
            ShownPesticide('Azoxystrobin 23,2%', '1 lt/ha', 0),
            ShownPesticide('Pyraclostrobin 20%', '1 Kg/ha', 0),
          ]
        },
        {
          'Marciume dello stocco': [
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
          'Fusariosi della spiga': [
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
          'Ferretto': [
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
          'Diabrotica': [
            ShownPesticide('Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                '0,3 lt/ha', 14),
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
          'Piralide': [
            ShownPesticide(
                'Bacillus thuringiensis Berliner subsp. aizawai, ceppo GC 91 50% P',
                '2 kg/ha',
                0),
            ShownPesticide('Chlorantraniliprole 9,26%  Lambda-cialotrina 4,63%',
                '0,3 lt/ha', 14),
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
            ShownPesticide('Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                '1,5 kg/ha', 0),
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
            ShownPesticide('Bacillus thuringiensis Berliner 50%', '2 kg/ha', 0),
          ]
        },
        {
          'Nottue': [
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
      'Uva': [],
      'Pomodoro': [
        {
          'Alternariosi': [
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
            ShownPesticide('cimoxanil* 2,9% rame metallo 18%', '3,1 kg/ha', 3),
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
          'Peronospora': [
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
            ShownPesticide('Rame metallo 20,3% Zolfo 14,85%', '1000 gr/hl', 5),
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
            ShownPesticide('Metalaxil-M 2% Rame metallo 14,19%', '5 kg/ha', 3),
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
          'Oidio': [
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
            ShownPesticide('fluxapyroxad 6% difenoconazolo 4%', '60 ml/hl', 3),
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
            ShownPesticide(
                'Bacillus amyloliquefaciens (ceppo FZB24) 13%', '370 gr/ha', 4),
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
          'Fillominatrice del pomodoro': [
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
            ShownPesticide('Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                '0,2 lt/ha', 3),
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
            ShownPesticide('Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                '1,5 kg/ha', 0),
            ShownPesticide('Spinetoram 3%', '2,4 lt/ha', 3),
            ShownPesticide('Spinosad 44,2%', '200 ml/ha', 3),
            ShownPesticide('Bacillus thuringiensis 37.50%', '1,5 lt/ha', 0),
            ShownPesticide('Tebufenozide 22,5%', '90 ml/hl', 3),
            ShownPesticide('Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                '1 lt/ha', 3),
            ShownPesticide('Azadiractina 1%', '3 lt/ha', 3),
            ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
            ShownPesticide('Indoxacarb 30%', '125 gr/ha', 3),
            ShownPesticide('Etofenprox 30%', '500 ml/ha', 3),
            ShownPesticide(
                'Chlorantraniliprole 4,29% Abamectina 1,71%', '0,8 lt/ha', 7),
          ]
        },
        {
          'Cimice verde': [
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
            ShownPesticide('Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                '0,2 lt/ha', 3),
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
            ShownPesticide('Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                '1,5 kg/ha', 0),
            ShownPesticide('Spinetoram 3%', '2,4 lt/ha', 3),
            ShownPesticide('Spinosad 44,2%', '200 ml/ha', 3),
            ShownPesticide('Bacillus thuringiensis 37.50%', '1,5 lt/ha', 0),
            ShownPesticide('Tebufenozide 22,5%', '90 ml/hl', 3),
            ShownPesticide('Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                '1 lt/ha', 3),
            ShownPesticide('Azadiractina 1%', '3 lt/ha', 3),
            ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
            ShownPesticide('Indoxacarb 30%', '125 gr/ha', 3),
            ShownPesticide('Etofenprox 30%', '500 ml/ha', 3),
            ShownPesticide(
                'Chlorantraniliprole 4,29% Abamectina 1,71%', '0,8 lt/ha', 7),
          ]
        },
        {
          'Eriofide Rugginoso': [
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
            ShownPesticide('Chlorantraniliprole 9,26% Lambda-cialotrina 4,63%',
                '0,2 lt/ha', 3),
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
            ShownPesticide('Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                '1,5 kg/ha', 0),
            ShownPesticide('Spinetoram 3%', '2,4 lt/ha', 3),
            ShownPesticide('Spinosad 44,2%', '200 ml/ha', 3),
            ShownPesticide('Bacillus thuringiensis 37.50%', '1,5 lt/ha', 0),
            ShownPesticide('Tebufenozide 22,5%', '90 ml/hl', 3),
            ShownPesticide('Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                '1 lt/ha', 3),
            ShownPesticide('Azadiractina 1%', '3 lt/ha', 3),
            ShownPesticide('Azadiractina A 2,4%', '1,5 lt/ha', 3),
            ShownPesticide('Indoxacarb 30%', '125 gr/ha', 3),
            ShownPesticide('Etofenprox 30%', '500 ml/ha', 3),
            ShownPesticide(
                'Chlorantraniliprole 4,29% Abamectina 1,71%', '0,8 lt/ha', 7),
          ]
        },
      ],
      'Peperone': [
        {
          'Alternaria': [
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
            ShownPesticide(
                'Bacillus amyloliquefaciens (ceppo FZB24) 13%', '370 gr/ha', 4),
            ShownPesticide('Rame metallo 25,42%', '2,6 lt/ha', 21),
          ]
        },
        {
          'Oidio delle solanacee': [
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
            ShownPesticide(
                'Bacillus amyloliquefaciens (ceppo FZB24) 13%', '370 gr/ha', 4),
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
          'Marciume bruno': [
            ShownPesticide('RAME metallo 30%', '3,3 kg/ha', 3),
          ]
        },
        {
          'Nottue': [
            ShownPesticide('Deltametrina pura 2,8 %', '500 ml/ha', 3),
            ShownPesticide('Dazomet 99%', '700 kg/ha', 0),
            ShownPesticide('Teflutrin 0,5%', '15 kg/ha', 0),
            ShownPesticide('Lambda-cialotrina 0,4%', '15 kg/ha', 0),
          ]
        },
        {
          'Minatore fogliare': [
            ShownPesticide('Deltametrina 1,51%', '90 ml/hl', 3),
            ShownPesticide('ABAMECTINA 1,9%', '1,20 lt/hl', 3),
            ShownPesticide('Olio minerale 80%', '2 lt/hl', 20),
            ShownPesticide('Spinosad 11,6%', '300 ml/hl', 3),
            ShownPesticide('Acetamiprid 4,67%', '2 lt/ha', 7),
            ShownPesticide('Spinosad 44,2 %', '200 ml/ha', 3),
            ShownPesticide('Cyantraniliprole 9,14% Acibenzolar-S-methyl 1,14%',
                '0,75 lt/ha', 14),
            ShownPesticide('Azadiractina 1%', '3,9 lt/ha', 3),
            ShownPesticide(
                'Abamectina 0,53% Acrinatrina 0,95%', '2,5 lt/ha', 7),
            ShownPesticide('Abamectina 1,84%', '1,2 lt/ha', 3),
            ShownPesticide('Abamectina 1,75%', '1,2 lt/ha', 3),
          ]
        },
        {
          'Afide': [
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
      'Melo': [
        {
          'Ticchiolatura delo melo': [
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
            ShownPesticide('Rame metallo 20,30% Zolfo 14,85%', '850 gr/hl', 20),
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
            ShownPesticide('Pyrimetanil 21,9% Dithianon 21,9%', '2 lt/ha', 56),
            ShownPesticide('bicarbonato di potassio 99.5%', '7,5 kg/ha', 0),
            ShownPesticide('Rame metallo 25,42%', '3,2 lt/ha', 21),
          ]
        },
        {
          'Oidio': [
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
            ShownPesticide('Rame metallo 20,3% Zolfo 14,85%', '850 gr/hl', 20),
            ShownPesticide('Rame metallo 13% Zolfo 21%', '900 ml/hl', 20),
            ShownPesticide('Miclobutanil 18,23%', '0,24 lt/ha', 14),
            ShownPesticide('Tetraconazolo  11,6%', '240 ml/ha', 14),
            ShownPesticide('Penconazolo 10%', '40 gr/hl', 14),
            ShownPesticide('Penconazolo 10,20%', '40 ml/hl', 14),
            ShownPesticide('Difeconazolo 1,8%', '2,25 lt/ha', 14),
            ShownPesticide(
                'Isopyrazam 9,28% Difenoconazolo 3,71%', '1,5 lt/ha', 21),
            ShownPesticide('olio essenziale di arancio dolce', '2,8 lt/ha', 3),
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
          'Maculatura bruna': [
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
          'Carpocapsa': [
            ShownPesticide('Emamectina benzoato 0,95%', '4 kg/ha', 7),
            ShownPesticide('Deltametrina 2,8 %', '500 ml/ha', 7),
            ShownPesticide('Lamba-cialotrina 2,5%', '0,8 kg/ha', 7),
            ShownPesticide(
                'Bacillus Thuringiensis var. kurstaki 54%', '1,5 kg/ha', 0),
            ShownPesticide('Lambda-cialotrina pura 9,4%', '150 ml/ha', 7),
            ShownPesticide('DELTAMETRINA 2,73%', '0,5 lt/ha', 7),
            ShownPesticide('DELTAMETRINA 1,51%', '90 ml/hl', 3),
            ShownPesticide('Indoxacarb 15,84%', '0,5 lt/ha', 7),
            ShownPesticide(
                'Bacillus Thuringiensis var. kurstaki PB-54 16%', '1 kg/ha', 3),
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
            ShownPesticide('Bacillus thuringiensis Berliner var. Kurstaki 6,4%',
                '1 kg/ha', 0),
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
            ShownPesticide(
                'Chlorantraniliprole 4,29% Abamectina 1,71%', '1,2 lt/ha', 14),
          ]
        },
        {
          'Afide grigio': [
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
            ShownPesticide('Olio minerale paraffinico 96,5%', '3,5 lt/ha', 20),
          ]
        },
        {
          'Cocciniglia di San Josè': [
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
            ShownPesticide('Olio minerale paraffinico 96,5%', '3,5 lt/hl', 20),
            ShownPesticide('Olio minerale paraffinico 41,3%', '5 lt/hl', 0),
            ShownPesticide('Fosmet 17,7%', '3,75 lt/ha', 28),
            ShownPesticide('Fosmet 23,5%', '3,19 kg/ha', 28),
            ShownPesticide('Piretrine 0,5 %', '1 lt/hl', 2),
          ]
        },
      ],
    };
