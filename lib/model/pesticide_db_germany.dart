import 'models.dart';

Map<
    String,
    List<
        Map<String,
            List<ShownPesticide>>>> getGermanyCropProblemPesticideMap() => {
      'Weizen': [
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
            ShownPesticide(
                'Bifenox + Florasulam', '1l/ha in 200 to 400 l/ha of water', 0),
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
          'Common Wind Stalk Annual Bluegrass': [
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
      'Mais': [
        {
          'Annual dicot weeds': [
            ShownPesticide(
                'Pendimethalin', '4l/ha in 200 to 400 l/ha of water', 0)
          ]
        },
      ],
      'Traube': [],
      'Tomate': [
        {
          'Aphids': [
            ShownPesticide('flonicamide', '0.08 kg/ha in 600 l/ha of water', 1),
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
      'Pfeffer': [],
      'Apfel': [
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
    };
