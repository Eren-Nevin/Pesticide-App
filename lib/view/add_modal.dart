import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:location/location.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

/* import 'package:tab_container/tab_container.dart'; */
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/model/models.dart';
import 'package:pesticide/utilities/utils.dart';
/* import 'package:extended_wrap/extended_wrap.dart'; */
import '../../blocs/authentication_bloc.dart';
import '../blocs/app_state_bloc.dart';

// TODO: Check if menus are shown when software keyboard is shown

const addOptions = ['Land', 'Crop', 'Pesticide', 'Harvest'];

const InputDecorationTheme dropdownMenuTheme = InputDecorationTheme(
  border: InputBorder.none,
  iconColor: Colors.transparent,
  focusColor: Colors.transparent,
  hoverColor: Colors.transparent,
  fillColor: Colors.transparent,
  outlineBorder: BorderSide.none,
  activeIndicatorBorder: BorderSide.none,
);

class InputAppState {
  String segment = 'Land';
  Land land = Land();
  Crop crop = Crop();
  PesticideApplication pesticide = PesticideApplication();

  InputAppState();

  InputAppState.clone(InputAppState source) {
    segment = source.segment;
    land = source.land;
    crop = source.crop;
    pesticide = source.pesticide;
  }

  @override
  bool operator ==(Object other) {
    if (other is InputAppState) {
      bool result = segment == other.segment &&
          land == other.land &&
          crop == other.crop &&
          pesticide == other.pesticide;
      return result;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(segment, land, crop, pesticide);
}

class ModalInputCubit extends Cubit<InputAppState> {
  ModalInputCubit(super.initialState);

  void setSegment(String segment) {
    InputAppState newState = InputAppState.clone(state);
    newState.segment = segment;
    emit(newState);
  }

  void setLand(Land land) {
    InputAppState newState = InputAppState.clone(state);
    newState.land = land;
    emit(newState);
  }

  void setCrop(Crop crop) {
    InputAppState newState = InputAppState.clone(state);
    newState.crop = crop;
    emit(newState);
  }

  void setLandAndCrop(Land land, Crop crop) {
    InputAppState newState = InputAppState.clone(state);
    newState.crop = crop;
    newState.land = land;
    emit(newState);
  }

  void setPesticide(PesticideApplication pesticide) {
    InputAppState newState = InputAppState.clone(state);
    newState.pesticide = pesticide;
    emit(newState);
  }
}

Future<void> showAddStuffDialog(
  BuildContext context, {
  required AppStateBloc appStateBloc,
}) async {
  ModalInputCubit modalInputCubit = ModalInputCubit(InputAppState());
  var result = await showCupertinoModalBottomSheet(
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return Material(
          child: MultiBlocProvider(
              providers: [
                BlocProvider<AppStateBloc>.value(value: appStateBloc),
                BlocProvider<ModalInputCubit>.value(value: modalInputCubit)
              ],
              child: AddStuffDialogContent(
                editing: false,
                title: 'Add'.i18n(),
                scrollController: ModalScrollController.of(context),
              )),
        );
      });
  if (result == true) {
    /* userEventsBloc.add(UserConfirmsNewTaskEvent( */
    /*     tasksBloc: tasksBloc, task: beingAddedTaskBloc.state.task)); */
  }
}

Future<DateTime?> showDateDialog(BuildContext context) async {
  var results = await showCalendarDatePicker2Dialog(
    context: context,
    config: CalendarDatePicker2WithActionButtonsConfig(
      firstDate: DateTime.now(),
      lastDate: DateTime.now().copyWith(year: 2030),
      calendarType: CalendarDatePicker2Type.single,
      currentDate: DateTime.now(),
      /* disableYearPicker: true, */
    ),
    dialogSize: const Size(325, 400),
    /* initialValue: [tempTaskBloc.state.task.date], */
    borderRadius: BorderRadius.circular(16),
  );
  if (results == null) {
    return null;
  }
  if (results.isNotEmpty && results[0] != null && results[0] is DateTime) {
    /* tempTaskBloc.add(SetTempTaskDateEvent(dateTime: results[0]!)); */
    return results[0];
  }
}

class AddStuffDialog extends StatelessWidget {
  late final String title;
  final bool editing;
  AddStuffDialog({super.key, required this.editing}) {
    title = editing ? 'Edit'.i18n() : 'Add'.i18n();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dialog(
        backgroundColor: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: AddStuffDialogContent(editing: editing, title: title),
      ),
    );
  }
}

class AddStuffDialogContent extends StatelessWidget {
  final String title;
  final bool editing;
  final ScrollController? scrollController;
  const AddStuffDialogContent(
      {super.key,
      required this.title,
      required this.editing,
      this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Colors.white,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: const EdgeInsetsDirectional.only(
                    start: 24, end: 24, top: 8),
                child: AddDialogTitleRow(title: title)),
            Container(
              margin: const EdgeInsetsDirectional.only(
                  start: 24, end: 24, bottom: 36),
              child: AddStuffDialogForm(editing: editing),
            )
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}

// TODO: Add proper translations for toast messages
class AddDialogTitleRow extends StatelessWidget {
  final String title;

  const AddDialogTitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    String titleSuffix =
        context.select<ModalInputCubit, String>((value) => value.state.segment);

    String title = 'Add'.i18n() + ' $titleSuffix';

    return SimpleDialogTitleRowWidget(
        title: title,
        onConfirm: () {
          InputAppState inputAppState = context.read<ModalInputCubit>().state;
          final segment = inputAppState.segment;
          AppState currentState = context.read<AppStateBloc>().state;
          AppState newState = AppState.clone(currentState);
          if (segment == 'Land') {
            if (inputAppState.land.name.isEmpty) {
              showToast('Enter Land Name');
              return;
            }
            if (inputAppState.land.location.isEmpty) {
              showToast('Enter Land Location');
              return;
            }
            if (inputAppState.land.lattitude == 0) {
              showToast('Enter Land Lattitude');
              return;
            }
            if (inputAppState.land.longitude == 0) {
              showToast('Enter Land Longitude');
              return;
            }
            if (inputAppState.land.area == 0) {
              showToast('Enter Land Area');
              return;
            }
            if (inputAppState.land.slope == 0) {
              showToast('Enter Land Slope');
              return;
            }
            newState.lands = [...newState.lands, inputAppState.land];
          }
          if (segment == 'Crop') {
            if (inputAppState.crop.landId == 0) {
              showToast('Select Land');
              return;
            }
            if (inputAppState.crop.name.isEmpty) {
              showToast('Enter Crop Name');
              return;
            }
            if (inputAppState.crop.plantingDate == 0) {
              showToast('Enter Planting Date');
              return;
            }
            newState.crops = [...newState.crops, inputAppState.crop];
          }
          if (segment == 'Pesticide') {
            if (inputAppState.pesticide.landId == 0) {
              showToast('Select Land');
              return;
            }
            if (inputAppState.pesticide.pesticide.isEmpty) {
              showToast('Enter Pesticide Name');
              return;
            }
            if (inputAppState.pesticide.dose == 0) {
              showToast('Enter Proper Dose');
              return;
            }
            if (inputAppState.pesticide.applicationDate == 0) {
              showToast('Enter Proper Application Date');
              return;
            }
            if (inputAppState.pesticide.harvestIntervalDays == 0) {
              showToast('Enter Proper Harvest Interval Date');
              return;
            }
            if (inputAppState.pesticide.problem.isEmpty) {
              showToast('Enter Proper Problem');
              return;
            }
            newState.pesticides = [
              ...newState.pesticides,
              inputAppState.pesticide
            ];
          }
          if (segment == 'Harvest') {
            if (inputAppState.crop.landId == 0) {
              showToast('Select Land');
              return;
            }
            Crop editedCrop = inputAppState.crop;
            int editedIndex = newState.crops
                .indexWhere((crop) => crop.cropId == editedCrop.cropId);
            newState.crops[editedIndex] = editedCrop;
          }

          context.read<AppStateBloc>().add(ReloadAppStateEvent(newState));
          GoRouter.of(context).pop();
        });
  }
}

class SimpleDialogTitleRowWidget extends StatelessWidget {
  final VoidCallback? onConfirm;
  final String? confirmTitle;
  const SimpleDialogTitleRowWidget({
    super.key,
    required this.title,
    this.onConfirm,
    this.confirmTitle,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsetsDirectional.only(end: 16),
                child: const DialogCloseButton(size: 24)),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                if (onConfirm != null) {
                  onConfirm!();
                } else {
                  GoRouter.of(context).pop(true);
                }
              },
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 8),
                child: Text(
                  confirmTitle ?? 'Save'.i18n(),
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: Theme.of(context).primaryColor,
                        fontSizeFactor: 1.1,
                      ),
                ),
              ),
            ),
          ]),
    );
  }
}

class DialogCloseButton extends StatelessWidget {
  final int size;
  const DialogCloseButton({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        GoRouter.of(context).pop(false);
      },
      child: SizedBox(
        height: size.toDouble(),
        width: size.toDouble(),
        child: Icon(Icons.close_outlined,
            color: Colors.black, size: size.toDouble()),
      ),
    );
  }
}

class AddStuffDialogForm extends StatelessWidget {
  final bool editing;
  const AddStuffDialogForm({super.key, required this.editing});

  @override
  Widget build(BuildContext context) {
    /* TabContainerController tabContainerController = */
    /*     TabContainerController(length: 4); */
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            alignment: AlignmentDirectional.centerStart,
            height: 48,
            child: SelectWhichToAdd(editing: editing)),
        const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
        Builder(builder: (context) {
          String selectedSegment =
              context.watch<ModalInputCubit>().state.segment;
          if (selectedSegment == addOptions[0]) {
            return const LandFieldsColumnWidget();
          } else if (selectedSegment == addOptions[1]) {
            return const CropFieldsColumnWidget();
          } else if (selectedSegment == addOptions[2]) {
            return const PesticideFieldsColumnWidget();
          } else {
            return const HarvestDayFieldsColumnWidget();
          }
        }),
      ],
    );
  }
}

class LandFieldsColumnWidget extends StatelessWidget {
  const LandFieldsColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    GetIt.I<Logger>().e('Rebuilding');
    ModalInputCubit inputCubit = context.read<ModalInputCubit>();
    TextEditingController lattitudeController = TextEditingController();
    TextEditingController longitudeController = TextEditingController();
    inputCubit.setLand(Land());
    // TODO: implement build
    return Column(children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: Row(
            children: [
              Expanded(
                child: TitleWithTextFieldRow(
                    title: 'Name'.i18n(),
                    editing: false,
                    numberOnly: false,
                    callback: (v) async {
                      Land currentLand = inputCubit.state.land;
                      Land updatedLand = currentLand.apply(name: v);
                      inputCubit.setLand(updatedLand);
                    }),
              ),
              CupertinoButton.filled(
                padding: const EdgeInsets.all(4),
                child: Container(
                    alignment: AlignmentDirectional.center,
                    width: 96,
                    height: 36,
                    child: const Text("Get Location")),
                onPressed: () async {
                  Location location = Location();

                  bool _serviceEnabled;
                  PermissionStatus _permissionGranted;
                  LocationData _locationData;

                  _serviceEnabled = await location.serviceEnabled();
                  if (!_serviceEnabled) {
                    _serviceEnabled = await location.requestService();
                    if (!_serviceEnabled) {
                      return;
                    }
                  }

                  _permissionGranted = await location.hasPermission();
                  if (_permissionGranted == PermissionStatus.denied) {
                    _permissionGranted = await location.requestPermission();
                    if (_permissionGranted != PermissionStatus.granted) {
                      return;
                    }
                  }

                  _locationData = await location.getLocation();

                  final lattitude = _locationData.latitude ?? 0;
                  final longitude = _locationData.longitude ?? 0;

                  GetIt.I<Logger>().w(lattitude);

                  lattitudeController.value =
                      TextEditingValue(text: lattitude.toString());
                  longitudeController.value =
                      TextEditingValue(text: longitude.toString());

                  Land currentLand = inputCubit.state.land;
                  Land updatedLand = currentLand.apply(
                      lattitude: lattitude, longitude: longitude);
                  inputCubit.setLand(updatedLand);
                },
              ),
            ],
          )),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'Latitude'.i18n(),
              controller: lattitudeController,
              editing: false,
              numberOnly: true,
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand =
                    currentLand.apply(lattitude: double.parse(v));
                inputCubit.setLand(updatedLand);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithTextFieldRow(
              title: 'Longitude'.i18n(),
              controller: longitudeController,
              editing: false,
              numberOnly: true,
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand =
                    currentLand.apply(longitude: double.parse(v));
                inputCubit.setLand(updatedLand);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithTextFieldRow(
              title: 'Location'.i18n(),
              editing: false,
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand = currentLand.apply(location: v);
                inputCubit.setLand(updatedLand);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithTextFieldRow(
              title: 'Area'.i18n() + ' (hectar)',
              editing: false,
              numberOnly: true,
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand = currentLand.apply(area: double.parse(v));
                inputCubit.setLand(updatedLand);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithTextFieldRow(
              title: 'Slope'.i18n(),
              editing: false,
              numberOnly: true,
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand = currentLand.apply(slope: double.parse(v));
                inputCubit.setLand(updatedLand);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithMenuFieldRow(
              title: 'Soil Structure'.i18n(),
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand = currentLand.apply(
                    soilStructure: SoilStructure.values.byName(v));
                inputCubit.setLand(updatedLand);
              },
              options: [
                {SoilStructure.VeryThin.name: SoilStructure.VeryThin.name},
                {SoilStructure.Thin.name: SoilStructure.Thin.name},
                {SoilStructure.Medium.name: SoilStructure.Medium.name},
                {SoilStructure.Thick.name: SoilStructure.Thick.name},
                {SoilStructure.VeryThick.name: SoilStructure.VeryThick.name},
              ])),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithMenuFieldRow(
            title: 'Soil Texture'.i18n(),
            callback: (v) async {
              Land currentLand = inputCubit.state.land;
              Land updatedLand =
                  currentLand.apply(soilTexture: SoilTexture.values.byName(v));
              inputCubit.setLand(updatedLand);
              return;
            },
            options: [
              {SoilTexture.Sandy.name: SoilTexture.Sandy.name},
              {SoilTexture.Silt.name: SoilTexture.Silt.name},
              {SoilTexture.Clay.name: SoilTexture.Clay.name},
              {SoilTexture.Loamy.name: SoilTexture.Loamy.name},
            ],
          )),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
    ]);
  }
}

class CropFieldsColumnWidget extends StatelessWidget {
  const CropFieldsColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ModalInputCubit inputCubit = context.read<ModalInputCubit>();
    AppState appState = context.read<AppStateBloc>().state;
    List<Map<String, String>> options = appState.lands
        .map((land) => {land.name: land.landId.toString()})
        .toList();

    inputCubit.setCrop(Crop());
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: AlignmentDirectional.centerStart,
        height: 48,
        child: TitleWithMenuFieldRow(
          title: 'Land'.i18n(),
          callback: (v) async {
            Crop currentCrop = inputCubit.state.crop;
            Crop updatedCrop = currentCrop.apply(landId: int.parse(v));
            inputCubit.setCrop(updatedCrop);
          },
          options: options,
        ),
      ),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          /* child: TitleWithTextFieldRow( */
          /*     title: 'Crop'.i18n(), */
          /*     editing: false, */
          /*     callback: (v) async { */
          /*       Crop currentCrop = inputCubit.state.crop; */
          /*       Crop updatedCrop = currentCrop.apply(name: v); */
          /*       inputCubit.setCrop(updatedCrop); */
          /*     })), */
          child: TitleWithAutoCompleteTextFieldRow(
            title: 'Crop'.i18n(),
            suggestions: getKnownCropNames(),
            callback: (v) async {
              Crop currentCrop = inputCubit.state.crop;
              Crop updatedCrop = currentCrop.apply(name: v);
              inputCubit.setCrop(updatedCrop);
            },
          )),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithDateFieldRow(
              title: 'Planting Date'.i18n(),
              callback: (v) async {
                Crop currentCrop = inputCubit.state.crop;
                Crop updatedCrop = currentCrop.apply(plantingDate: v);
                inputCubit.setCrop(updatedCrop);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      const SizedBox(height: 200),
      /* Container( */
      /*     margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0), */
      /*     alignment: AlignmentDirectional.centerStart, */
      /*     height: 48, */
      /*     child: TitleWithDateFieldRow( */
      /*         title: 'Harvest Day'.i18n(), */
      /*         callback: (v) async { */
      /*           Crop currentCrop = inputCubit.state.crop; */
      /*           Crop updatedCrop = currentCrop.apply(harvestDates: [v]); */
      /*           inputCubit.setCrop(updatedCrop); */
      /*         })), */
      /* const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)), */
    ]);
  }
}

class HarvestDayFieldsColumnWidget extends StatelessWidget {
  const HarvestDayFieldsColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ModalInputCubit inputCubit = context.watch<ModalInputCubit>();
    AppState appState = context.read<AppStateBloc>().state;
    List<Map<String, String>> options = appState.lands
        .map((land) => {land.name: land.landId.toString()})
        .toList();

    /* inputCubit.setLand(appState.lands[0]); */
    /* inputCubit.setCrop(findALandCrop(appState, appState.lands[0]) ?? Crop()); */
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: AlignmentDirectional.centerStart,
        height: 48,
        child: TitleWithMenuFieldRow(
          title: 'Land'.i18n(),
          callback: (v) async {
            Land? selectedLand = getLandById(appState, int.parse(v));
            Crop? corrospondingCrop = findALandCrop(appState, selectedLand!);
            if (corrospondingCrop != null) {
              /* print("HELLO WORLD"); */
              inputCubit.setLandAndCrop(selectedLand, corrospondingCrop);
            }
          },
          options: options,
        ),
      ),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: AlignmentDirectional.centerStart,
        height: 48,
        child: Builder(builder: (context) {
          ModalInputCubit inputCubit = context.watch<ModalInputCubit>();
          Crop crop = inputCubit.state.crop;
          return TitleWithStaticTextRow(
            title: 'Crop'.i18n(),
            content: crop.name,
          );
        }),
      ),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      HarvestDatesWidgets(key: UniqueKey()),
    ]);
  }
}

class HarvestDatesWidgets extends StatelessWidget {
  const HarvestDatesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    /* return Builder(builder: (context) { */

    /* }) */
    ModalInputCubit inputCubit = context.read<ModalInputCubit>();
    List<int> harvestDates = inputCubit.state.crop.harvestDates!;

    Widget getSingleHarvestWidget(int i) {
      DateTime harvestTime =
          DateTime.fromMillisecondsSinceEpoch(harvestDates[i]);

      return Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              alignment: AlignmentDirectional.centerStart,
              height: 48,
              child: TitleWithDateFieldRow(
                  title: 'Harvest Day'.i18n() + ': ${i + 1}',
                  initialSelectedDate: harvestTime,
                  callback: (v) async {
                    Crop currentCrop = inputCubit.state.crop;
                    List<int> currentCropHarvestDates =
                        currentCrop.harvestDates!;
                    currentCropHarvestDates[i] = v;
                    Crop updatedCrop = currentCrop.apply(
                        useSameId: true, harvestDates: currentCropHarvestDates);
                    inputCubit.setCrop(updatedCrop);
                  })),
          const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
        ],
      );
    }

    List<Widget> harvestWidgetList = [];

    for (int i = 0; i < harvestDates.length; i++) {
      harvestWidgetList.add(getSingleHarvestWidget(i));
    }

    Widget newHarvestDateWidget = Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            alignment: AlignmentDirectional.centerStart,
            height: 48,
            // TODO: Make this pick dates instead of one day
            child: TitleWithDateFieldRow(
                title: 'Add'.i18n() + ' ' + 'Harvest Day'.i18n(),
                callback: (v) async {
                  Crop currentCrop = inputCubit.state.crop;
                  List<int> currentCropHarvestDates =
                      List.from(currentCrop.harvestDates!);
                  currentCropHarvestDates.add(v);
                  Crop updatedCrop = currentCrop.apply(
                      useSameId: true, harvestDates: currentCropHarvestDates);
                  inputCubit.setCrop(updatedCrop);
                })),
        const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      ],
    );

    return Column(children: [...harvestWidgetList, newHarvestDateWidget]);
  }
}

class PesticideFieldsColumnWidget extends StatelessWidget {
  const PesticideFieldsColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ModalInputCubit inputCubit = context.read<ModalInputCubit>();
    AppState appState = context.read<AppStateBloc>().state;
    List<Map<String, String>> landOptions = appState.lands
        .map((land) => {land.name: land.landId.toString()})
        .toList();
    inputCubit.setPesticide(PesticideApplication());
    inputCubit.setCrop(Crop());
    return Column(children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: TitleWithMenuFieldRow(
            title: 'Land'.i18n(),
            callback: (v) async {
              Land? selectedLand = getLandById(appState, int.parse(v));
              Crop? corrospondingCrop = findALandCrop(appState, selectedLand!);
              if (corrospondingCrop != null) {
                inputCubit.setLandAndCrop(selectedLand, corrospondingCrop);
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide = currentPesticide.apply(
                    cropId: corrospondingCrop.cropId,
                    landId: selectedLand.landId);
                inputCubit.setPesticide(updatedPesticide);
              }
            },
            options: landOptions,
          )),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: AlignmentDirectional.centerStart,
        height: 48,
        child: Builder(builder: (context) {
          ModalInputCubit inputCubit = context.watch<ModalInputCubit>();
          Crop crop = inputCubit.state.crop;
          return TitleWithStaticTextRow(
            title: 'Crop'.i18n(),
            content: crop.name,
          );
        }),
      ),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: Builder(builder: (context) {
            Crop crop = context.select<ModalInputCubit, Crop>((value) {
              return value.state.crop;
            });
            return TitleWithAutoCompleteTextFieldRow(
              title: 'Problem'.i18n(),
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(problem: v);
                inputCubit.setPesticide(updatedPesticide);
              },
              /* suggestions: _getStandardCropProblemsMap()[crop.name] ?? [], */
              suggestions: getShownProblems('Turkey', crop.name),
            );
          })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          child: Builder(builder: (context) {
            String pesticideProblem =
                context.select<ModalInputCubit, String>((value) {
              return value.state.pesticide.problem;
            });

            ModalInputCubit modalInputCubit = context.read<ModalInputCubit>();

            return TitleWithAutoCompleteTextFieldRow(
              title: 'Pesticide'.i18n(),
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(pesticide: v);
                inputCubit.setPesticide(updatedPesticide);
              },
              suggestions: getShownPesticides('Turkey',
                      modalInputCubit.state.crop.name, pesticideProblem)
                  .map((e) => e.name)
                  .toList(),
              /* suggestions: [], */
            );
          })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Builder(builder: (context) {
        String pesticideName = context.select<ModalInputCubit, String>((value) {
          return value.state.pesticide.pesticide;
        });
        ModalInputCubit modalInputCubit = context.read<ModalInputCubit>();
        String problemName = modalInputCubit.state.pesticide.problem;
        List<ShownPesticide> shownPesticides = getShownPesticides(
                'Turkey', modalInputCubit.state.crop.name, problemName)
            .where((e) => e.name == modalInputCubit.state.pesticide.pesticide)
            .toList();

        ShownPesticide? shownPesticide =
            shownPesticides.length == 1 ? shownPesticides[0] : null;
        TextEditingController controller = TextEditingController();
        if (shownPesticide != null) {
          controller.text = shownPesticide.dose.toString();
          PesticideApplication currentPesticide = inputCubit.state.pesticide;
          PesticideApplication updatedPesticide =
              currentPesticide.apply(dose: shownPesticide.dose);
          inputCubit.setPesticide(updatedPesticide);
        }
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            alignment: AlignmentDirectional.centerStart,
            height: 48,
            // TODO: Force accepted to using input filters
            child: TitleWithTextFieldRow(
                controller: controller,
                title: 'Dose'.i18n(),
                editing: false,
                callback: (v) async {
                  PesticideApplication currentPesticide =
                      inputCubit.state.pesticide;
                  PesticideApplication updatedPesticide =
                      currentPesticide.apply(dose: v);
                  inputCubit.setPesticide(updatedPesticide);
                }));
      }),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Builder(builder: (context) {
        String pesticideName = context.select<ModalInputCubit, String>((value) {
          return value.state.pesticide.pesticide;
        });
        ModalInputCubit modalInputCubit = context.read<ModalInputCubit>();
        String problemName = modalInputCubit.state.pesticide.problem;
        List<ShownPesticide> shownPesticides = getShownPesticides(
                'Turkey', modalInputCubit.state.crop.name, problemName)
            .where((e) => e.name == modalInputCubit.state.pesticide.pesticide)
            .toList();

        ShownPesticide? shownPesticide =
            shownPesticides.length == 1 ? shownPesticides[0] : null;
        /* modalInputCubit */
        /* modalInputCubit.state.pesticide.pesticide */
        print(shownPesticide);
        TextEditingController controller = TextEditingController();
        if (shownPesticide != null) {
          controller.text = shownPesticide.phi.toString();
          PesticideApplication currentPesticide = inputCubit.state.pesticide;
          PesticideApplication updatedPesticide =
              currentPesticide.apply(harvestIntervalDays: shownPesticide.phi);
          inputCubit.setPesticide(updatedPesticide);
        }
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            alignment: AlignmentDirectional.centerStart,
            height: 48,
            // TODO: Force accepted to using input filters
            child: TitleWithTextFieldRow(
                title: 'PHI',
                controller: controller,
                numberOnly: true,
                editing: false,
                callback: (v) async {
                  PesticideApplication currentPesticide =
                      inputCubit.state.pesticide;
                  PesticideApplication updatedPesticide =
                      currentPesticide.apply(harvestIntervalDays: int.parse(v));
                  inputCubit.setPesticide(updatedPesticide);
                }));
      }),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithDateFieldRow(
              title: 'Application Date'.i18n(),
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(applicationDate: v);
                inputCubit.setPesticide(updatedPesticide);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
    ]);
  }
}

class SelectWhichToAdd extends StatelessWidget {
  final bool editing;

  const SelectWhichToAdd({super.key, required this.editing});

  @override
  Widget build(BuildContext context) {
    return Row(textBaseline: TextBaseline.alphabetic, children: [
      const DialogFormRowTitles(title: 'Type'),
      Flexible(
        child: Builder(builder: (context) {
          return Container(
            height: 36,
            child: DropdownMenu(
              inputDecorationTheme: dropdownMenuTheme,
              /* menuHeight: 36, */
              /*   menuStyle: MenuStyle(padding: EdgeInsets.all(4)), */
              initialSelection: addOptions[0],
              dropdownMenuEntries: [
                DropdownMenuEntry(value: addOptions[0], label: 'Land'.i18n()),
                DropdownMenuEntry(value: addOptions[1], label: 'Crop'.i18n()),
                DropdownMenuEntry(
                    value: addOptions[2], label: 'Pesticide'.i18n()),
                DropdownMenuEntry(
                    value: addOptions[3], label: 'Harvest'.i18n()),
              ],
              onSelected: (v) {
                print(v);
                if (v != null) {
                  print(v);
                  context.read<ModalInputCubit>().setSegment(v);
                }
              },
            ),
          );
        }),
      )
    ]);
  }
}

typedef StringCallback = Future<void> Function(String input);
typedef intCallback = Future<void> Function(int input);

class TitleWithTextFieldRow extends StatelessWidget {
  final bool editing;
  final String title;
  final bool numberOnly;
  final TextEditingController? controller;
  final StringCallback callback;
  /* final void Function(String); */
  const TitleWithTextFieldRow(
      {super.key,
      this.numberOnly = false,
      this.controller,
      required this.editing,
      required this.title,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Row(
        /* crossAxisAlignment: CrossAxisAlignment.baseline, */
        textBaseline: TextBaseline.alphabetic,
        children: [
          DialogFormRowTitles(title: title),
          Flexible(
            child: Builder(builder: (context) {
              return numberOnly
                  ? CupertinoTextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp("[0-9]+.?[0-9]*"),
                        ),
                      ],
                      decoration: const BoxDecoration(),
                      padding: EdgeInsets.zero,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      textCapitalization: TextCapitalization.sentences,
                      placeholderStyle: const TextStyle(
                        color: Color(0xFF8C8C8C),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      onChanged: callback)
                  : CupertinoTextField(
                      controller: controller,
                      decoration: const BoxDecoration(),
                      padding: EdgeInsets.zero,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      textCapitalization: TextCapitalization.sentences,
                      placeholderStyle: const TextStyle(
                        color: Color(0xFF8C8C8C),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      onChanged: callback);
            }),
          )
        ]);
  }
}

class TitleWithAutoCompleteTextFieldRow extends StatelessWidget {
  final String title;
  final List<String> suggestions;
  final TextEditingController? controller;
  final StringCallback callback;
  TitleWithAutoCompleteTextFieldRow(
      {super.key,
      this.controller,
      required this.title,
      required this.suggestions,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
    TextEditingController controller =
        this.controller ?? TextEditingController();
    return Row(textBaseline: TextBaseline.alphabetic, children: [
      DialogFormRowTitles(title: title),
      Flexible(
        child: Builder(builder: (context) {
          return TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
              autofocus: false,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              onChanged: callback,
              controller: controller,
              /* decoration: InputDecoration( */
              /*   border: OutlineInputBorder(), */
              /* ), */
            ),
            suggestionsCallback: (pattern) => suggestions,
            itemBuilder: (context, suggestion) {
              return ListTile(
                title: Text(suggestion),
              );
            },
            onSuggestionSelected: (String suggestion) {
              controller.text = suggestion;
              callback(suggestion);
            },
          );
          /* return SimpleAutoCompleteTextField( */
          /*     key: key, */
          /*     suggestions: suggestions, */
          /*     controller: controller, */
          /*     /1* decoration: const BoxDecoration(), *1/ */
          /*     /1* padding: EdgeInsets.zero, *1/ */
          /*     submitOnSuggestionTap: false, */
          /*     clearOnSubmit: false, */
          /*     style: const TextStyle( */
          /*         fontSize: 15, */
          /*         fontWeight: FontWeight.w400, */
          /*         color: Colors.black), */
          /*     textCapitalization: TextCapitalization.sentences, */
          /*     /1* placeholderStyle: const TextStyle( *1/ */
          /*     /1*   color: Color(0xFF8C8C8C), *1/ */
          /*     /1*   fontWeight: FontWeight.w400, *1/ */
          /*     /1*   fontSize: 15, *1/ */
          /*     /1* ), *1/ */
          /*     textChanged: callback); */
        }),
      )
    ]);
  }
}

class TitleWithMenuFieldRow extends StatelessWidget {
  final String title;
  final StringCallback callback;
  final List<Map<String, String>> options;
  const TitleWithMenuFieldRow(
      {super.key,
      required this.title,
      required this.callback,
      required this.options});

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuEntry> dropdownMenuEntries = options
        .map((e) => DropdownMenuEntry(
            label: e.keys.first.i18n(), value: e.values.first))
        .toList();

    /* final List<Map<String, String>> localOptions = [...options]; */

    return Row(textBaseline: TextBaseline.alphabetic, children: [
      DialogFormRowTitles(title: title),
      Flexible(
        child: Builder(builder: (context) {
          return Container(
            height: 36,
            child: DropdownMenu(
              inputDecorationTheme: dropdownMenuTheme,
              /* menuHeight: 36, */
              /*   menuStyle: MenuStyle(padding: EdgeInsets.all(4)), */
              /* initialSelection: dropdownMenuEntries[0].value, */
              dropdownMenuEntries: dropdownMenuEntries,
              onSelected: (v) {
                print(v);
                if (v != null) {
                  print(v);
                  callback(v);
                }
              },
            ),
          );
        }),
      )
    ]);
  }
}

class TitleWithDateFieldRow extends StatefulWidget {
  final String title;
  final intCallback callback;
  final DateTime? initialSelectedDate;
  const TitleWithDateFieldRow({
    super.key,
    required this.title,
    required this.callback,
    this.initialSelectedDate,
  });

  @override
  State<TitleWithDateFieldRow> createState() =>
      _TitleWithDateFieldRowState(initialSelectedDate);
}

class _TitleWithDateFieldRowState extends State<TitleWithDateFieldRow> {
  DateTime? selectedDate;

  _TitleWithDateFieldRowState(DateTime? initialSelectedDate) {
    selectedDate = initialSelectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Row(textBaseline: TextBaseline.alphabetic, children: [
      DialogFormRowTitles(title: widget.title),
      Flexible(
        child: Builder(builder: (context) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async {
              final dateTime = await showDateDialog(context);
              setState(() {
                selectedDate = dateTime;
                if (selectedDate != null) {
                  widget.callback(selectedDate!.millisecondsSinceEpoch);
                }
              });
            },
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              height: 48,
              child: Text(selectedDate == null
                  ? "Select Date".i18n()
                  : convertIntTimeToDate(selectedDate!.millisecondsSinceEpoch)),
            ),
          );
        }),
      )
    ]);
  }
}

class TitleWithStaticTextRow extends StatelessWidget {
  final String title;
  final String content;
  const TitleWithStaticTextRow({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(textBaseline: TextBaseline.alphabetic, children: [
      DialogFormRowTitles(title: title),
      Expanded(
        child: Text(content),
      )
    ]);
  }
}

class DialogFormRowTitles extends StatelessWidget {
  final String title;
  const DialogFormRowTitles({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(minWidth: 120),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ));
  }
}
