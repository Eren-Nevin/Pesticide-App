import 'package:flutter/services.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class UnitConversionWeightWidget extends StatefulWidget {
  const UnitConversionWeightWidget({
    super.key,
  });

  @override
  State<UnitConversionWeightWidget> createState() =>
      _UnitConversionWeightWidgetState();
}

class _UnitConversionWeightWidgetState
    extends State<UnitConversionWeightWidget> {
  double inputNumber = 0;
  double outputNumber = 0;
  static const List<String> options = [
    'Kg_To_Gr',
    'Gr_To_Kg',
    'Kg_To_Pound',
    'Pound_To_Kg',
  ];
  String selectedOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            child: DropdownMenu(
              initialSelection: options[0],
              dropdownMenuEntries: [
                DropdownMenuEntry(value: options[0], label: 'Kg -> Gr'),
                DropdownMenuEntry(value: options[1], label: 'Gr -> Kg'),
                DropdownMenuEntry(value: options[2], label: 'Kg -> Pound'),
                DropdownMenuEntry(value: options[3], label: 'Pound -> Kg'),
              ],
              onSelected: (v) {
                setState(() {
                  if (v != null) {
                    selectedOption = v;
                  }
                });
              },
            ),
          ),
        ),
      ]),
      Container(
        margin: EdgeInsets.all(8),
        child: CupertinoTextField(
          onChanged: (v) {
            setState(() {
              try {
                inputNumber = double.parse(v);
              } catch (Exception) {
                inputNumber = 0;
              }
            });
          },
          keyboardType: TextInputType.number,
          placeholder: 'Input',
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp("[0-9]+.?[0-9]*"),
            ),
          ],
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(color: Colors.black),
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(width: 0),
              borderRadius: BorderRadius.circular(4)),
        ),
      ),
      Container(
        height: 56,
        margin: EdgeInsets.all(8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              outputNumber.toStringAsFixed(4).toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CupertinoButton.filled(
            child: Text("Calculate".i18n()),
            onPressed: () {
              double output = 0;
              if (selectedOption == options[0]) {
                output = 1000 * inputNumber;
              } else if (selectedOption == options[1]) {
                output = inputNumber / 1000;
              } else if (selectedOption == options[2]) {
                output = inputNumber * 2.20462;
              } else if (selectedOption == options[3]) {
                output = inputNumber * 0.453592;
              }
              setState(() {
                outputNumber = output;
              });
            },
          ),
        ]),
      ),
    ]);
  }
}

class UnitConversionAreaWidget extends StatefulWidget {
  const UnitConversionAreaWidget({
    super.key,
  });

  @override
  State<UnitConversionAreaWidget> createState() =>
      _UnitConversionAreaWidgetState();
}

class _UnitConversionAreaWidgetState extends State<UnitConversionAreaWidget> {
  double inputNumber = 0;
  double outputNumber = 0;
  static const List<String> options = [
    'M2_To_Decar',
    'M2_To_Hectar',
    'Decar_To_M2',
    'Hectar_To_M2',
    'Decar_To_Hectar',
    'Hectar_To_Decar',
  ];
  String selectedOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            child: DropdownMenu(
              initialSelection: options[0],
              dropdownMenuEntries: [
                DropdownMenuEntry(value: options[0], label: 'M2 -> Decar'),
                DropdownMenuEntry(value: options[1], label: 'M2 -> Hectar'),
                DropdownMenuEntry(value: options[2], label: 'Decar -> M2'),
                DropdownMenuEntry(value: options[3], label: 'Hectar -> M2'),
                DropdownMenuEntry(value: options[4], label: 'Decar -> Hectar'),
                DropdownMenuEntry(value: options[5], label: 'Hectar -> Decar'),
              ],
              onSelected: (v) {
                setState(() {
                  if (v != null) {
                    selectedOption = v;
                  }
                });
              },
            ),
          ),
        ),
      ]),
      Container(
        margin: EdgeInsets.all(8),
        child: CupertinoTextField(
          onChanged: (v) {
            setState(() {
              try {
                inputNumber = double.parse(v);
              } catch (Exception) {
                inputNumber = 0;
              }
            });
          },
          keyboardType: TextInputType.number,
          placeholder: 'Input',
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp("[0-9]+.?[0-9]*"),
            ),
          ],
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(color: Colors.black),
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(width: 0),
              borderRadius: BorderRadius.circular(4)),
        ),
      ),
      Container(
        height: 56,
        margin: EdgeInsets.all(8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              outputNumber.toStringAsFixed(4).toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CupertinoButton.filled(
            child: Text("Calculate".i18n()),
            onPressed: () {
              double output = 0;
              if (selectedOption == options[0]) {
                output = inputNumber * 0.001;
              } else if (selectedOption == options[1]) {
                output = inputNumber * 0.0001;
              } else if (selectedOption == options[2]) {
                output = inputNumber * 1000;
              } else if (selectedOption == options[3]) {
                output = inputNumber * 10000;
              } else if (selectedOption == options[4]) {
                output = inputNumber * 0.1;
              } else if (selectedOption == options[5]) {
                output = inputNumber * 10;
              }
              setState(() {
                outputNumber = output;
              });
            },
          ),
        ]),
      ),
    ]);
  }
}

class UnitConversionVolumeWidget extends StatefulWidget {
  const UnitConversionVolumeWidget({
    super.key,
  });

  @override
  State<UnitConversionVolumeWidget> createState() =>
      _UnitConversionVolumeWidgetState();
}

class _UnitConversionVolumeWidgetState
    extends State<UnitConversionVolumeWidget> {
  double inputNumber = 0;
  double outputNumber = 0;
  static const List<String> options = [
    'ML_To_L',
    'L_To_ML',
  ];
  String selectedOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            child: DropdownMenu(
              initialSelection: options[0],
              dropdownMenuEntries: [
                DropdownMenuEntry(value: options[0], label: 'mL -> L'),
                DropdownMenuEntry(value: options[1], label: 'L -> mL'),
              ],
              onSelected: (v) {
                setState(() {
                  if (v != null) {
                    selectedOption = v;
                  }
                });
              },
            ),
          ),
        ),
      ]),
      Container(
        margin: EdgeInsets.all(8),
        child: CupertinoTextField(
          onChanged: (v) {
            setState(() {
              try {
                inputNumber = double.parse(v);
              } catch (Exception) {
                inputNumber = 0;
              }
            });
          },
          keyboardType: TextInputType.number,
          placeholder: 'Input',
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp("[0-9]+.?[0-9]*"),
            ),
          ],
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(color: Colors.black),
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(width: 0),
              borderRadius: BorderRadius.circular(4)),
        ),
      ),
      Container(
        height: 56,
        margin: EdgeInsets.all(8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              outputNumber.toStringAsFixed(4).toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CupertinoButton.filled(
            child: Text("Calculate".i18n()),
            onPressed: () {
              double output = 0;
              if (selectedOption == options[0]) {
                output = inputNumber * 0.001;
              } else if (selectedOption == options[1]) {
                output = inputNumber * 1000;
              }
              setState(() {
                outputNumber = output;
              });
            },
          ),
        ]),
      ),
    ]);
  }
}

class UnitConversionDoseWidget extends StatefulWidget {
  const UnitConversionDoseWidget({
    super.key,
  });

  @override
  State<UnitConversionDoseWidget> createState() =>
      _UnitConversionDoseWidgetState();
}

class _UnitConversionDoseWidgetState extends State<UnitConversionDoseWidget> {
  double inputNumber = 0;
  double outputNumber = 0;
  static const List<String> options = [
    'KGHA_TO_KGDA',
    'KGDA_TO_KGHA',
    'LHA_TO_LDA',
    'LDA_TO_LHA',
  ];
  String selectedOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            child: DropdownMenu(
              initialSelection: options[0],
              dropdownMenuEntries: [
                DropdownMenuEntry(value: options[0], label: 'kg/ha -> kg/da'),
                DropdownMenuEntry(value: options[1], label: 'kg/da -> kg/ha'),
                DropdownMenuEntry(value: options[2], label: 'l/ha -> l/da'),
                DropdownMenuEntry(value: options[3], label: 'l/da -> l/ha'),
              ],
              onSelected: (v) {
                setState(() {
                  if (v != null) {
                    selectedOption = v;
                  }
                });
              },
            ),
          ),
        ),
      ]),
      Container(
        margin: EdgeInsets.all(8),
        child: CupertinoTextField(
          onChanged: (v) {
            setState(() {
              try {
                inputNumber = double.parse(v);
              } catch (Exception) {
                inputNumber = 0;
              }
            });
          },
          keyboardType: TextInputType.number,
          placeholder: 'Input',
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp("[0-9]+.?[0-9]*"),
            ),
          ],
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(color: Colors.black),
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(width: 0),
              borderRadius: BorderRadius.circular(4)),
        ),
      ),
      Container(
        height: 56,
        margin: EdgeInsets.all(8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              outputNumber.toStringAsFixed(4).toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CupertinoButton.filled(
            child: Text("Calculate".i18n()),
            onPressed: () {
              double output = 0;
              if (selectedOption == options[0]) {
                output = inputNumber * 0.0001;
              } else if (selectedOption == options[1]) {
                output = inputNumber * 10000;
              } else if (selectedOption == options[2]) {
                output = inputNumber * 0.0001;
              } else if (selectedOption == options[3]) {
                output = inputNumber * 10000;
              }
              setState(() {
                outputNumber = output;
              });
            },
          ),
        ]),
      ),
    ]);
  }
}
