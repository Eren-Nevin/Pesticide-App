import 'models.dart';

Map<
    String,
    List<
        Map<String,
            List<ShownPesticide>>>> getCroatiaCropProblemPesticideMap() => {
      'Pšenica': [
        {
          'Žitne stjenice': [
            ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
            ShownPesticide('50g/l Lambda-cihalotrin', '0,16 l / ha', 30),
            ShownPesticide('100 g/l Deltametrin', '0,125 l / ha', 30),
            ShownPesticide('25g/l Deltametrin', '0,3 - 0,5 l / ha', 30),
            ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
          ],
        },
        {
          'Kukuruzna': [
            ShownPesticide('4g/kg Lambda-cihalotrin', '12 - 15 kg / ha', 56),
            ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
            ShownPesticide('16g/kg Cipermetrin', '12 kg / ha', 56),
            ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
            ShownPesticide('15g/kg Teflutrin', '12,2 kg / ha', 56),
          ],
        },
        {
          'Smrdljiva buba': [
            ShownPesticide('50 g/l Lambda cihalotrin', '0,16 l / ha', 30),
            ShownPesticide('25 g/l Deltametrin', '0,5 l / ha', 30),
          ],
        },
        {
          'Kukuruzni moljac': [
            ShownPesticide(
                '100g/l Klorantraniliprol+50g/l Lambda cihalotrin    0,3 l/ha',
                'None',
                14),
            ShownPesticide('200g/l Klorantraniliprol', '100 - 150 ml / ha', 7),
            ShownPesticide('25g/ l Deltametrin', '0,3 - 0,5 l / ha', 30),
            ShownPesticide('100g/l Deltametrin', '0,125 l / ha', 30),
            ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
            ShownPesticide(
                '45g/l Klorantraniliprol+18g/l Abamektin', '0,8 l / ha', 14),
          ],
        },
        {
          'Žitni žižak': [
            ShownPesticide('80 g/l Cipermetrin', '10 -20ml/480ml vode/1t', 1),
            ShownPesticide('20g/l Cipermetrin', '42-84ml/1t', 1),
            ShownPesticide('25 g/l Deltametrin', '20ml/330ml vode/1t', 2),
            ShownPesticide('50 g/l Lambda-cihalotrin', '16 ml / ha', 30),
            ShownPesticide('1000g/kg Kieselgur', '1,0 - 2,0 kg / t', 0),
          ],
        },
        {
          'Žuta hrđa': [
            ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
            ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 35),
            ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                '0,75 - 1,5 l / ha', 35),
            ShownPesticide('30g/l Fluksapiroksad + 200g/l Piraklostrobin',
                '0,75 - 1,0 l / ha', 35),
            ShownPesticide('333g/l Fluksapiroksad', '150 ml / 100kg', 42),
            ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                '0,5 - 1,0 l / ha', 42),
            ShownPesticide('100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
            ShownPesticide(
                '150 g/l Protiokonazol + 125 g/l Izopirazam', '1,0 l / ha', 42),
            ShownPesticide('100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                '0,75 - 1,5 l / ha', 35),
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
          'Smeđa hrđa': [
            ShownPesticide(
                '150 g/l Protiokonazol + 125 g/l Izopirazam', '1,0 l / ha', 42),
            ShownPesticide('100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
            ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                '0,5 - 1,0 l / ha', 42),
            ShownPesticide('333g/l Fluksapiroksad', '2,0 l / ha', 42),
            ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                '0,75 - 1,5 l / ha', 35),
            ShownPesticide('100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                '0,75 - 1,5 l / ha', 35),
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
          'Smeđa pjegavost lista': [
            ShownPesticide(
                '250g/l Tebuconazol + 100g/l Difenconazol', '1,0 l / ha', 35),
            ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
            ShownPesticide('430g/l Tebuconazol', '0,6 l / ha', 35),
            ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
            ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
            ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
            ShownPesticide('333g/l Fluksapiroksad', '150 ml/100kg sjemena', 35),
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
            ShownPesticide(
                '300g/l Spiroksamin + 160g/l Protiokonazol', '1,25 l / ha', 42),
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
          'Pepelnica pšenice': [
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
            ShownPesticide('100g/l Piraklostrobin + 100g/l Mefentriflukonazol',
                '0,75 - 1,0 l / ha', 35),
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
      'Kukuruz': [
        {
          'Žitne stjenice': [
            ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
            ShownPesticide('50g/l Lambda-cihalotrin', '0,16 l / ha', 30),
            ShownPesticide('100 g/l Deltametrin', '0,125 l / ha', 30),
            ShownPesticide('25g/l Deltametrin', '0,3 - 0,5 l / ha', 30),
            ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
          ],
        },
        {
          'Kukuruzna': [
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
          'Kukuruzna': [
            ShownPesticide('4g/kg Lambda-cihalotrin', '12 - 15 kg / ha', 56),
            ShownPesticide('200g/kg Acetamiprid', '150 g / ha', 56),
            ShownPesticide('16g/kg Cipermetrin', '12 kg / ha', 56),
            ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
            ShownPesticide('15g/kg Teflutrin', '12,2 kg / ha', 56),
          ],
        },
        {
          'Smrdljiva buba': [
            ShownPesticide('50 g/l Lambda cihalotrin', '0,16 l / ha', 30),
            ShownPesticide('25 g/l Deltametrin', '0,5 l / ha', 30),
          ],
        },
        {
          'Kukuruzni moljac': [
            ShownPesticide(
                '100g/l Klorantraniliprol+50g/l Lambda cihalotrin    0,3 l/ha',
                'None',
                14),
            ShownPesticide('200g/l Klorantraniliprol', '100 - 150 ml / ha', 7),
            ShownPesticide('25g/ l Deltametrin', '0,3 - 0,5 l / ha', 30),
            ShownPesticide('100g/l Deltametrin', '0,125 l / ha', 30),
            ShownPesticide('25g/l Deltametrin', '0,5 l / ha', 30),
            ShownPesticide(
                '45g/l Klorantraniliprol+18g/l Abamektin', '0,8 l / ha', 14),
          ],
        },
        {
          'Žitni žižak': [
            ShownPesticide('80 g/l Cipermetrin', '10 -20ml/480ml vode/1t', 1),
            ShownPesticide('20g/l Cipermetrin', '42-84ml/1t', 1),
            ShownPesticide('25 g/l Deltametrin', '20ml/330ml vode/1t', 2),
            ShownPesticide('50 g/l Lambda-cihalotrin', '16 ml / ha', 30),
            ShownPesticide('1000g/kg Kieselgur', '1,0 - 2,0 kg / t', 0),
          ],
        },
        {
          'Žuta hrđa': [
            ShownPesticide('62,5g/ l Fluksapiroksad', '2,0 l / ha', 42),
            ShownPesticide('250g/l Tebukonazol', '1,0 l / ha', 35),
            ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                '0,75 - 1,5 l / ha', 35),
            ShownPesticide('30g/l Fluksapiroksad + 200g/l Piraklostrobin',
                '0,75 - 1,0 l / ha', 35),
            ShownPesticide('333g/l Fluksapiroksad', '150 ml / 100kg', 42),
            ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                '0,5 - 1,0 l / ha', 42),
            ShownPesticide('100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
            ShownPesticide(
                '150 g/l Protiokonazol + 125 g/l Izopirazam', '1,0 l / ha', 42),
            ShownPesticide('100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                '0,75 - 1,5 l / ha', 35),
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
          'Smeđa hrđa': [
            ShownPesticide(
                '150 g/l Protiokonazol + 125 g/l Izopirazam', '1,0 l / ha', 42),
            ShownPesticide('100g/l Benzovindiflupir', '0,5 - 0,75 l / ha', 42),
            ShownPesticide('150g/l Protiokonazol + 75g/l Benzovindiflupir',
                '0,5 - 1,0 l / ha', 42),
            ShownPesticide('333g/l Fluksapiroksad', '2,0 l / ha', 42),
            ShownPesticide('75g/l Fluksapiroksad + 150g/l Piraklostrobin',
                '0,75 - 1,5 l / ha', 35),
            ShownPesticide('100 g/l Mefentriflukonazol + 50 g/l Fluksapiroksad',
                '0,75 - 1,5 l / ha', 35),
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
          'Smeđa pjegavost lista': [
            ShownPesticide(
                '250g/l Tebuconazol + 100g/l Difenconazol', '1,0 l / ha', 35),
            ShownPesticide('200g/l Tebuconazol', '1,25 l / ha', 35),
            ShownPesticide('430g/l Tebuconazol', '0,6 l / ha', 35),
            ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
            ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
            ShownPesticide('250g/l Tebuconazol', '1,0 l / ha', 35),
            ShownPesticide('333g/l Fluksapiroksad', '150 ml/100kg sjemena', 35),
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
            ShownPesticide(
                '300g/l Spiroksamin + 160g/l Protiokonazol', '1,25 l / ha', 42),
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
          'Pepelnica pšenice': [
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
            ShownPesticide('100g/l Piraklostrobin + 100g/l Mefentriflukonazol',
                '0,75 - 1,0 l / ha', 35),
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
      'Grožđe': [
        {
          'Pepelnica vinove loze': [
            ShownPesticide('CHROMOSUL 80 - Sumpor 800 g/kg', 'do 6 kg/ha', 28),
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
            ShownPesticide('SULFOLAC 80 WG - Sumpor 800 g/kg', '0,3-0,5%', 35),
            ShownPesticide('TOPAS 100 EC - Penkonazol 100 g/l', '0.00025', 28),
            ShownPesticide(
                'LUNA EXPERIENCE - Fluopiram 200 g/l+Tebukonazol 200 g/l',
                '0,375 l/ha',
                14),
            ShownPesticide('SULGRAN - Sumpor  800 g/kg', '3-6 kg/ha', 28),
            ShownPesticide('SERCADISS - Fluksapiroksad 300 g/l', '15 kg/ha', 0),
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
          'Grožđani moljci': [
            ShownPesticide(
                'DECIS 100EC - Deltametrin 100 g/l', '0,125-0,175 %', 7),
            ShownPesticide('MIMIC - Tebufenozid 240 g/kg', '0.006', 28),
            ShownPesticide(
                'RUNNER 240 SC - Metoksifenozid 240 g/l', '0.0004', 7),
            ShownPesticide(
                'SUMIALFA 5 SL - Esfenvalerat 50 g/l', '0,015-0,02 %', 21),
            ShownPesticide(
                'DECIS 100 EC - Deltametrin 100 g/l', '0,125-0,175 l/ha', 7),
            ShownPesticide('ROTOR SUPER - Deltametrin 25 g/l', '500 ml/ha', 7),
            ShownPesticide('ASSET FIVE - Piretrini 46,53 g/l', '0,96 l/ha', 1),
            ShownPesticide('LEPINOX PLUS - Bacillus thuringiensis 375 g/kg',
                '0,75-1,5 kg/ha', 0),
            ShownPesticide('SCATO - Deltametrin 25 g/l', '0,5 l/ha', 7),
            ShownPesticide('RADIANT - Spinetoram 120 g/l', '0,3 l/ha', 1900),
          ]
        },
        {
          'Koprivina grinja': [
            ShownPesticide('SHOSI - Heksitiazoks 100 g/kg', '0.0005', 28),
            ShownPesticide('APACHE - Abamektin  18 g/l', '0,6-0,96 l/ha', 3),
            ShownPesticide('NEALTA - Ciflumetofen 200 g/l', '1 l/ha', 7),
            ShownPesticide(
                'DIABLO SC - Heksitiazoks 258,7 g', '0,16-0,2 l/ha', 28),
            ShownPesticide('RED FOX - Parafinsko ulje 540 g+Bakarni oksid 100g',
                '12,5-30 l/ha', 0),
            ShownPesticide(
                'SHOSI 25 SC - Heksitiazoks 251,3 g/l', '160-300 ml/ha', 28),
            ShownPesticide(
                'NISSORUN PLUS - Fenpiroksimat 62,4 g/l+ heksiazoks 31,2 g/l',
                '1,2 l/ha',
                28),
            ShownPesticide('Pesticid /aktivna tvar', 'Doza/koncentracija', 0),
            ShownPesticide('SHOSHI - Heksitiazoks 100 g/kg', '0.0005', 28),
            ShownPesticide(
                'SHOSHI 25 SC - Heksitiazoks 251,3 g/kg', '160-300 ml/ha', 28),
            ShownPesticide('APACHE - Abamektin 18 g/l', '0,6-0,96 l/ha', 3),
            ShownPesticide('NEALTA - Ciflumetofen 200 g/l', '1 l/ha', 7),
            ShownPesticide(
                'DIABLO SC - Heksitiazoks 258,7 g', '0,16-0,2 l/ha', 28),
            ShownPesticide('RED FOX - Parafinsko ulje 540g+Bakarni oksid 100g',
                '12,5-30 l/ha', 0),
            ShownPesticide(
                'NISSORUN PLUS - Fenpiroksimat 62,4 g/l +Heksiazoks 31,2 g/l',
                '1,2 l/ha',
                28),
          ]
        },
        {
          'Peronospora': [
            ShownPesticide('CUPROCAFFARO 50 WP - Bakarni oksiklorid 500 g/kg',
                '0,3-0,5 %', 35),
            ShownPesticide('FUTURA 50 WP - Folpet 500 g/kg', '0.002', 42),
            ShownPesticide('CASTOR - Kaptan 500 g/kg', '0,2-0,3 %', 35),
            ShownPesticide('POLYRAM DF - Metiram 700 g/kg', '?', 56),
            ShownPesticide('AZIMUT 80 WG - Fosetil 800 g/kg', '0,25-0,3 %', 28),
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
            ShownPesticide('GLOBEX WG - Fosetil 800 g/l', '1,5-2,5 kg/ha', 28),
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
            ShownPesticide('MILDCUT 25 SC - Ciazofamid 25 g/kg', '0.0025', 21),
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
          'Siva plijesan': [
            ShownPesticide(
                'CHORUS 75 WG - Ciprodinil 750 g/l', '400-600 kg/ha', 21),
            ShownPesticide(
                'PYROS 400 SC - Pirimetanil 400 g/l', '2-2,5 l/ha', 28),
            ShownPesticide('GEOXE - Fludioksonil 500 g/kg', '1kg/ha', 2021),
            ShownPesticide('SCALA - Pirimetanil 400 g/l', '2-2,5 l/ha', 21),
            ShownPesticide('SERENADE ASO - Bacillus amiloliquefaciens 14,1 g/l',
                '4 l/ha', 0),
          ]
        },
        {
          'Crna pjegavost': [
            ShownPesticide(
                'DELAN PRO - Ditianon 125 g/l+Kalijevi fosfati 561,2 g/l',
                '3 l/ha',
                42),
            ShownPesticide('POLYRAM DF - Metiram 700 g/kg', '0.002', 56),
            ShownPesticide('MIKAL FLASH - Fosetil 500 g/l', '0.003', 42),
          ]
        },
      ],
      'Rajčica': [
        {
          'Zelena breskvina uš': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Tappeki 500 WG (Flonikamid 500,00 g/kg)', '0,1-0,12 l/ ha', 3),
          ]
        },
        {
          'Pamukova lisna uš': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Tappeki 500 WG (Flonikamid 500,00 g/kg)', '0,1-0,12 l/ ha', 3),
          ]
        },
        {
          'Šljivina velika uš': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Lisna uš': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Lisne uši': [
            ShownPesticide(
                'Pirimor 50 WG (Pirimikarb 500,00 g/l)', '0,8 kg/ ha', 9),
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ShownPesticide(
                'Mospilan 20 SP (Acetamiprid 200,00 g/kg)', '125 g/ ha', 3),
            ShownPesticide(
                'Karate zeon (Lambda- cihalotrin 50,00 g/l)', '0,15 l/ ha', 3),
          ]
        },
        {
          'Žuta kukuruzna sovica': [
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
          ]
        },
        {
          'Sovica gama': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Sovice podzemljuše': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Karadrina': [
            ShownPesticide(
                'Runner 240 SC (Metoksifenozid 240,00 g/l)', '40 ml/ 100 l', 1),
          ]
        },
        {
          'Zlatna sovica': [
            ShownPesticide(
                'Runner 240 SC (Metoksifenozid 240,00 g/l)', '40 ml/ 100 l', 1),
          ]
        },
        {
          'Sovice': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Affirm (Emamektin benzoat 9,50 g/kg)', '2 kg/ ha', 3),
          ]
        },
        {
          'Zelena stjenica': [
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
          'Krumpirova zlatica': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Karate zeon (Lambda- cihalotrin 50,00 g/l)', '0,15 l/ ha', 3),
          ]
        },
        {
          'Duhanov resičar': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Kalifornijski resičar': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,75-1,2 l/ ha', 7),
          ]
        },
        {
          'Resičari': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ShownPesticide(
                'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,75 ml/ 100 l', 7),
          ]
        },
        {
          'Muhe lisni mineri': [
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
          'Kukuruzni moljac': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Južnoamerički moljac': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,75-1,2 l/ ha', 7),
            ShownPesticide(
                'Affirm (Emamektin benzoat 9,50 g/kg)', '1,5 kg/ ha', 3),
          ]
        },
        {
          'Staklenički štitasti moljac': [
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
          'Koprivina grinja': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,8-1 l/ ha', 7),
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
          ]
        },
        {
          'Hrđasta grinja rajčice': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 7),
            ShownPesticide(
                'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,75 ml/ 100 l', 7),
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
          ]
        },
        {
          'Nematode korijenovih kvržica': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
            ShownPesticide(
                'Velum prime (Fluopiram 400,00 g/l)', '0,375-0,625 l/ ha', 3),
          ]
        },
        {
          'Korijenove nematode': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
          ]
        },
        {
          'Cistolike nematode': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
          ]
        },
        {
          'Nematode smeđe pjegavosti korijena': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 28),
          ]
        },
        {
          'Crveni pauci': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 7),
            ShownPesticide(
                'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,60 ml/ 100 l', 7),
          ]
        },
        {
          'Plamenjača': [
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
          'Pepelnica': [
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
            ShownPesticide(
                'Domark 40 ME (Tetrakonazol 40,00 g/l)', '60-120 ml/ 100 l', 4),
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
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide(
                'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide(
                'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
            ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
          ]
        },
        {
          'Baršunasta plijesan': [
            ShownPesticide('Argo (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
            ShownPesticide('Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
            ShownPesticide(
                'Domark 40 ME (Tetrakonazol 40,00 g/l)', '60-120 ml/ 100 l', 4),
            ShownPesticide(
                'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
          ]
        },
        {
          'Siva plijesan': [
            ShownPesticide(
                'Pirus 400 SC (Pirimetanil 400,00 g/l)', '2 l/ ha', 3),
            ShownPesticide(
                'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                '60-100 ml/ 100 l',
                3),
          ]
        },
        {
          'Koncentrična pjegavost': [
            ShownPesticide(
                'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
            ShownPesticide('Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
          ]
        },
        {
          'Pjegavosti': [
            ShownPesticide(
                'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
          ]
        },
        {
          'Siva pjegavost': [
            ShownPesticide('Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
          ]
        },
        {
          'Hrđe': [
            ShownPesticide(
                'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
            ShownPesticide('Difcor (Difenkonazol 250,00 g/l)', '0,5 l/ ha', 7),
          ]
        },
        {
          'Paleži': [
            ShownPesticide(
                'Argo (Difenkonazol 250,00 g/l)', '0,4-0,5 l/ ha', 7),
          ]
        },
        {
          'Polijeganje': [
            ShownPesticide(
                'Previcur energy (Fosetil 332,50 g/l+ Propamokarb 530,00 g/l)',
                '2-3 l/ ha',
                0),
            ShownPesticide('Proplant (Propamokarb 605,00 g/l)', '2 l/ ha', 3),
          ]
        },
        {
          'Trulež korjena': [
            ShownPesticide('Proplant (Propamokarb 605,00 g/l)', '2 l/ ha', 3),
          ]
        },
        {
          'Bijela trulež': [
            ShownPesticide(
                'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                '60-100 ml/ 100 l',
                3),
          ]
        },
      ],
      'Papar': [
        {
          'Zelena breskvina uš': [
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
          'Pamukova lisna uš': [
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
          'Šljivina velika uš': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,175 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Lisna uš': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,175 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Lisne uši': [
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
            ShownPesticide(
                'Karate zeon (Lambda- cihalotrin 50,00 g/l)', '0,15 l/ ha', 3),
          ]
        },
        {
          'Žuta kukuruzna sovica': [
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
          ]
        },
        {
          'Sovica gama': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Sovice podzemljuše': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,125 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Karadrina': [
            ShownPesticide(
                'Runner 240 SC (Metoksifenozid 240,00 g/l)', '40 ml/ 100 l', 1),
          ]
        },
        {
          'Zlatna sovica': [
            ShownPesticide(
                'Runner 240 SC (Metoksifenozid 240,00 g/l)', '40 ml/ 100 l', 1),
          ]
        },
        {
          'Sovice': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,175 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Affirm (Emamektin benzoat 9,50 g/kg)', '2 kg/ ha', 3),
          ]
        },
        {
          'Zelena stjenica': [
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
          'Krumpirova zlatica': [
            ShownPesticide('Decis 100 EC (Deltametrin 100,00 g/l)',
                '0,075-0,175 l/ ha', 3),
            ShownPesticide(
                'Rotor super (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
            ShownPesticide(
                'Scatto (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Resičari': [
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
          'Muhe lisni mineri': [
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
          'Kukuruzni moljac': [
            ShownPesticide(
                'Decis 2,5 EC (Deltametrin 25,00 g/l)', '0,3-0,5 l/ ha', 3),
          ]
        },
        {
          'Južnoamerički moljac': [
            ShownPesticide(
                'Affirm (Emamektin benzoat 9,50 g/kg)', '1,5 kg/ ha', 3),
          ]
        },
        {
          'Staklenički štitasti moljac': [
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
          'Koprivina grinja': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
          ]
        },
        {
          'Hrđasta grinja rajčice': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 3),
            ShownPesticide(
                'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,60 ml/ 100 l', 3),
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
          ]
        },
        {
          'Nematode korijenovih kvržica': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
            ShownPesticide(
                'Velum prime (Fluopiram 400,00 g/l)', '0,375-0,625 l/ ha', 3),
          ]
        },
        {
          'Korijenove nematode': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
          ]
        },
        {
          'Cistolike nematode': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
          ]
        },
        {
          'Nematode smeđe pjegavosti korijena': [
            ShownPesticide(
                'Vidate 10 L (Oksamil 100,00 g/l)', '10-20 l/ ha', 35),
          ]
        },
        {
          'Crveni pauci': [
            ShownPesticide(
                'Kraft 18 EC (Abamektin 18,00 g/l)', '0,3-1,2 l/ ha', 3),
            ShownPesticide(
                'Vertimec 018 EC (Abamektin 18,00 g/l)', '0,60 ml/ 100 l', 3),
          ]
        },
        {
          'Plamenjača': [
            ShownPesticide(
                'Tazer (Azoksistrobin 250,00 g/l)', '0,5-1 l/ ha', 3),
          ]
        },
        {
          'Plamenjača': [
            ShownPesticide('Ortiva (Azoksistrobin 250,00 g/l)', '1 l/ ha', 3),
          ]
        },
        {
          'Bakterioze': [
            ShownPesticide(
                'Neoram WG (Bakreni oksid 375,00 g/kg)', '0,15-0,2 %', 5),
          ]
        },
        {
          'Pepelnica': [
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide(
                'Tazer (Azoksistrobin 250,00 g/l)', '0,5-1 l/ ha', 3),
            ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide(
                'Signum (Piraklostrobin 67,00 g/kg+ Boskalid 267,00 g/kg)',
                '0,1-0,15 %',
                7),
            ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
            ShownPesticide('Chromosul 80 (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Kumulus DF (Sumpor 800,00 g/kg)', '3 kg/ ha', 0),
            ShownPesticide('Ortiva (Azoksistrobin 250,00 g/l)', '0,8 l/ ha', 3),
            ShownPesticide('Sulgran (Sumpor 800,00 g/kg)', '3-4 kg/ ha', 0),
          ]
        },
        {
          'Baršunasta plijesan': [
            ShownPesticide(
                'Ortiva (Azoksistrobin 250,00 g/l)', '0,48-0,96 l/ ha', 3),
          ]
        },
        {
          'Siva plijesan': [
            ShownPesticide(
                'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                '60-100 ml/ 100 l',
                7),
          ]
        },
        {
          'Gangrena korijenovog vrata': [
            ShownPesticide(
                'Previcur energy (Fosetil 332,50 g/l+ Propamokarb 530,00 g/l)',
                '2 l/ ha',
                3),
            ShownPesticide(
                'Proplant (Propamokarb 605,00 g/l)', '2-2,5 l/ ha', 3),
          ]
        },
        {
          'Trulež korjena': [
            ShownPesticide('Proplant (Propamokarb 605,00 g/l)', '2 l/ ha', 3),
          ]
        },
        {
          'Bijela trulež': [
            ShownPesticide(
                'Swich 62,5 WG (Ciprodinil 375,00 g/kg+ Fludioksonil 250,00 g/kg)',
                '60-100 ml/ 100 l',
                7),
          ]
        },
        {
          'Koncentrična pjegavost': [
            ShownPesticide(
                'Tazer (Azoksistrobin 250,00 g/l)', '0,5-1 l/ ha', 3),
          ]
        },
      ],
      'Jabuka': [
        {
          'Krastavost': [
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
            ShownPesticide('CHROMOSUL 80 - Sumpor 800 g/kg', 'max 6 kg/ha', 14),
            ShownPesticide('ARGO -Difenkonazol 250g/l', '0.00013', 35),
            ShownPesticide('CUPROCAFFARO 50 WG - bakarni okksiklorid 500g/kg',
                '0,3-0,75%', 0),
            ShownPesticide('DIFCOR - Difenkonazol 250g/l', '0,013-0,015%', 35),
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
            ShownPesticide('ZATO PLUS - Trifloksistrobin 40g/kg+Kaptan 600g/kg',
                '1,25-1,5 kg/ha', 21),
            ShownPesticide(
                'ZATO 50WG - Tri floksistrobin 500g/kg', '0.0001', 14),
            ShownPesticide('CHORUS 50 WG - Ciprodinil 500g/kg', '0.00045', 21),
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
            ShownPesticide(
                'VITISAN - Kalijev hidrogen karbonat 994,90', '5-7,5 kg/ha', 0),
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
            ShownPesticide('EMBRELIA - Difenkonazol 40 g/l+ Izopirazam 100 g/l',
                '0,5-1,5 l/ha', 21),
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
          'Pepelnica jabuke': [
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
            ShownPesticide('SERCADIS - Fluksapiroksad 300g/l', '0,15 l/ha', 35),
            ShownPesticide('VITISAN - Kalijev hidrogen karbonat 994,90 g/kg',
                '3-12 kg/ha', 0),
            ShownPesticide(
                'CYFLAMID 5EW - Ciflufenamid 51.30g/l', '0,32-0,5 l/ha', 21),
            ShownPesticide(
                'KARATHANE GOLD - Meptildinokap 350g/l', '0,6 l/ha', 21),
          ]
        },
        {
          'Jabučni savijač': [
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
          'Zelena uš': [
            ShownPesticide('DECIS - Deltametrin 25 g/l', '0.0005', 7),
            ShownPesticide(
                'MAVRIK 2F - Tau-fluvaliant 240 g/l', '0,02-0,04', 30),
            ShownPesticide(
                'PRIMOR 50 WG - Pirimikarb 500 g/l', '0, 04-0,06%', 14),
            ShownPesticide('SUMIALFA 5SL - Esfenvalerat 50 g/l', '0.00025', 14),
            ShownPesticide(
                'TEPPEKI 500WG - Flonikamid 500g/l', '0,12-0,14 kg/ha', 21),
            ShownPesticide(
                'MOSPILAN 20SG - Acetamipirid 200g/kg', '125g/ha', 14),
            ShownPesticide('POLECI PLUS - Deltametrin 25 g/l', '0,5 l/ha', 7),
            ShownPesticide(
                'PEROMANAL PRO - Parafinsko ulje 546 g/l', '0.01', 0),
            ShownPesticide('RITMUS - Deltametrin 25 g/l', '0,3-0,5 l/ha', 7),
            ShownPesticide('ASSET FIVE - Piretrini 46,53 g/l', '0,96 l/ha', 1),
          ]
        },
        {
          'Kalifornijska štitasta uš': [
            ShownPesticide('BRAI - Piriproksifen 100g/l', '0,04-0,05%', 0),
            ShownPesticide(
                'OVIPRON TOP - Parafinsko ulje 800 g/l', '10-35 l/ha', 20),
            ShownPesticide('LAINCOIL - Parafinsko ulje 790 g/l', '0,75-1%', 0),
            ShownPesticide('CLOSER - Sulfoksaflor 120 g/l', '0,4 l/ha', 7),
          ]
        },
        {
          'Monilija plodova': [
            ShownPesticide('KAPETAN 80WG - Kaptan 800 g/kg', '1,88 kg/ha', 21),
            ShownPesticide('SCAB 80WG - Kaptan 800 g/kg', '1,88 kg/ha', 21),
          ]
        },
        {
          'Crveni voćni pauk': [
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
            ShownPesticide(
                'NISSORUN 10 WP - Heksitiazoks 100 g/kg', '0,5-0,75 kg/ha', 28),
            ShownPesticide('KANEMITE SC - Acekvinocil 164 g/l', '1,8 l/ha', 30),
          ]
        },
      ],
    };
