import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';

/* import 'package:tab_container/tab_container.dart'; */
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/model/models.dart';
import 'package:pesticide/utilities/utils.dart';
/* import 'package:extended_wrap/extended_wrap.dart'; */
import '../../blocs/authentication_bloc.dart';
import '../blocs/app_state_bloc.dart';

// TODO: Add modal for adding harvest date. Extract harvest date from crop modal
// itself.

const addOptions = ['Land', 'Crop', 'Pesticide'];

const InputDecorationTheme dropdownMenuTheme = InputDecorationTheme(
  border: InputBorder.none,
  iconColor: Colors.transparent,
  focusColor: Colors.transparent,
  hoverColor: Colors.transparent,
  fillColor: Colors.transparent,
  outlineBorder: BorderSide.none,
  activeIndicatorBorder: BorderSide.none,
  /* contentPadding: EdgeInsets.all(8), */
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

  /* void clearLand() { */
  /*   state.land = null; */
  /* } */

  void setCrop(Crop crop) {
    InputAppState newState = InputAppState.clone(state);
    newState.crop = crop;
    emit(newState);
  }

  /* void clearCrop() { */
  /*   state.crop = null; */
  /* } */

  void setPesticide(PesticideApplication pesticide) {
    InputAppState newState = InputAppState.clone(state);
    newState.pesticide = pesticide;
    emit(newState);
  }

  /* void clearPesticide() { */
  /*   state.pesticide = null; */
  /* } */
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
              child: TaskDialogTabularForm(editing: editing),
            )
          ],
        ),
      ),
    );
  }
}

class AddDialogTitleRow extends StatelessWidget {
  final String title;

  const AddDialogTitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    String titleSuffix =
        context.select<ModalInputCubit, String>((value) => value.state.segment);

    String title = 'Add'.i18n() + '$titleSuffix';

    return SimpleDialogTitleRowWidget(
        title: title,
        onConfirm: () {
          InputAppState inputAppState = context.read<ModalInputCubit>().state;
          final segment = inputAppState.segment;
          AppState currentState = context.read<AppStateBloc>().state;
          AppState newState = AppState.clone(currentState);
          if (segment == 'Land') {
            newState.lands = [...newState.lands, inputAppState.land];
          }
          if (segment == 'Crop') {
            newState.crops = [...newState.crops, inputAppState.crop];
          }
          if (segment == 'Pesticide') {
            newState.pesticides = [
              ...newState.pesticides,
              inputAppState.pesticide
            ];
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

class TaskDialogTabularForm extends StatelessWidget {
  final bool editing;
  const TaskDialogTabularForm({super.key, required this.editing});

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
          } else {
            return const PesticideFieldsColumnWidget();
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
    ModalInputCubit inputCubit = context.read<ModalInputCubit>();
    inputCubit.setLand(Land());
    // TODO: implement build
    return Column(children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'Name'.i18n(),
              editing: false,
              numberOnly: false,
              callback: (v) async {
                Land currentLand = inputCubit.state.land;
                Land updatedLand = currentLand.apply(name: v);
                inputCubit.setLand(updatedLand);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'Latitude'.i18n(),
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
              title: 'Area'.i18n(),
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
                print(v);
                return;
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
              print(v);
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
    // TODO: implement build
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: AlignmentDirectional.centerStart,
        height: 48,
        // TODO: Force accepted to using input filters
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
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'Crop'.i18n(),
              editing: false,
              callback: (v) async {
                Crop currentCrop = inputCubit.state.crop;
                Crop updatedCrop = currentCrop.apply(name: v);
                inputCubit.setCrop(updatedCrop);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Make this pick date
          child: TitleWithDateFieldRow(
              title: 'Planting Date'.i18n(),
              callback: (v) async {
                Crop currentCrop = inputCubit.state.crop;
                Crop updatedCrop = currentCrop.apply(plantingDate: v);
                inputCubit.setCrop(updatedCrop);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Make this pick dates instead of one day
          child: TitleWithDateFieldRow(
              title: 'Harvest Day'.i18n(),
              callback: (v) async {
                Crop currentCrop = inputCubit.state.crop;
                Crop updatedCrop = currentCrop.apply(harvestDates: [v]);
                inputCubit.setCrop(updatedCrop);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
    ]);
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
    List<Map<String, String>> cropOptions = appState.crops
        .map((crop) => {crop.name: crop.cropId.toString()})
        .toList();
    inputCubit.setPesticide(PesticideApplication());
    // TODO: implement build
    return Column(children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithMenuFieldRow(
              title: 'Land'.i18n(),
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(landId: int.parse(v));
                inputCubit.setPesticide(updatedPesticide);
              },
              options: landOptions)),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithMenuFieldRow(
            title: 'Crop'.i18n(),
            callback: (v) async {
              PesticideApplication currentPesticide =
                  inputCubit.state.pesticide;
              PesticideApplication updatedPesticide =
                  currentPesticide.apply(cropId: int.parse(v));
              inputCubit.setPesticide(updatedPesticide);
            },
            options: cropOptions,
          )),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithMenuFieldRow(
              title: 'Problem'.i18n(),
              callback: (v) async {},
              options: [
                {
                  PesticideProblems.ProblemA.name:
                      PesticideProblems.ProblemA.name
                },
                {
                  PesticideProblems.ProblemB.name:
                      PesticideProblems.ProblemB.name
                },
                {PesticideProblems.Other.name: PesticideProblems.Other.name},
              ])),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'Pesticide'.i18n(),
              editing: false,
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(pesticide: v);
                inputCubit.setPesticide(updatedPesticide);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'Dose'.i18n(),
              numberOnly: true,
              editing: false,
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(dose: double.parse(v));
                inputCubit.setPesticide(updatedPesticide);
              })),
      const Divider(thickness: 1, height: 2, color: Color(0xFFE4E4E4)),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: AlignmentDirectional.centerStart,
          height: 48,
          // TODO: Force accepted to using input filters
          child: TitleWithTextFieldRow(
              title: 'PHI',
              numberOnly: true,
              editing: false,
              callback: (v) async {
                PesticideApplication currentPesticide =
                    inputCubit.state.pesticide;
                PesticideApplication updatedPesticide =
                    currentPesticide.apply(harvestIntervalDays: int.parse(v));
                inputCubit.setPesticide(updatedPesticide);
              })),
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
  final StringCallback callback;
  /* final void Function(String); */
  const TitleWithTextFieldRow(
      {super.key,
      this.numberOnly = false,
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
              initialSelection: dropdownMenuEntries[0].value,
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
  const TitleWithDateFieldRow({
    super.key,
    required this.title,
    required this.callback,
  });

  @override
  State<TitleWithDateFieldRow> createState() => _TitleWithDateFieldRowState();
}

class _TitleWithDateFieldRowState extends State<TitleWithDateFieldRow> {
  DateTime? selectedDate;
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
