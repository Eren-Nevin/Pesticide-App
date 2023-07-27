import 'dart:io';

import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:flag/flag.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/blocs/authentication_bloc.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/blocs/events/authentication_events.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/model/authentication_state.dart';
import 'package:pesticide/repository.dart';
import 'package:pesticide/utilities/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:pesticide/main.dart';
import 'package:pesticide/view/common_widgets.dart';

import 'package:pesticide/i18n/translator.dart';
import 'package:country_picker/country_picker.dart';

// TODO: Add toast errors for both login and signup + form validations

// TODO: Add field validation and sanitation

/* int loginBackdropColor = 0xFF651fff; */
/* int loginBackdropColor = 0xFFad905c; */
int loginBackdropColor = 0xFFada55c;
/* int loginBackdropColor = Colors.green.value; */
int loginButtonColor = 0xFF69f0ae;

class UserLoginPageInput {
  String name = '';
  String username = '';
  String email = '';
  String password = '';
  String rePassword = '';
  String language = '';
  String education = '';
  String occupation = '';

  String country = '';
  Uint8List? photoFile;

  UserLoginPageInput();

  UserLoginPageInput.clone(UserLoginPageInput source) {
    name = source.name;
    username = source.username;
    email = source.email;
    password = source.password;
    rePassword = source.rePassword;
    language = source.language;
    education = source.education;
    occupation = source.occupation;
    country = source.country;
    photoFile = source.photoFile;
  }

  @override
  bool operator ==(Object other) {
    if (other is UserLoginPageInput) {
      return name == other.name &&
          username == other.username &&
          email == other.email &&
          password == other.password &&
          rePassword == other.rePassword &&
          photoFile == other.photoFile &&
          country == other.country &&
          language == other.language &&
          education == other.education &&
          occupation == other.occupation;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(name, username, email, password, photoFile,
      country, language, education, occupation);
}

class UserLoginPageInputCubit extends Cubit<UserLoginPageInput> {
  UserLoginPageInputCubit() : super(UserLoginPageInput());

  void setName(String name) {
    UserLoginPageInput currentState = state;
    currentState.name = name;
    emit(currentState);
  }

  void setEmail(String email) {
    UserLoginPageInput currentState = state;
    currentState.email = email;
    emit(currentState);
  }

  void setUsername(String username) {
    UserLoginPageInput currentState = state;
    currentState.username = username;
    emit(currentState);
  }

  void setPassword(String password) {
    UserLoginPageInput currentState = state;
    currentState.password = password;
    emit(currentState);
  }

  void setrePassword(String rePassword) {
    UserLoginPageInput currentState = state;
    currentState.rePassword = rePassword;
    emit(currentState);
  }

  void setPhotoFile(Uint8List photoFile) {
    UserLoginPageInput currentState = state;
    currentState.photoFile = photoFile;
    emit(currentState);
  }

  void setLanguage(String language) {
    UserLoginPageInput currentState = state;
    currentState.language = language;
    emit(currentState);
  }

  void setCountry(String country) {
    UserLoginPageInput newState = UserLoginPageInput.clone(state);
    newState.country = country;
    emit(newState);
  }

  void setEducation(String education) {
    UserLoginPageInput newState = UserLoginPageInput.clone(state);
    newState.education = education;
    emit(newState);
  }

  void setOccupation(String occupation) {
    UserLoginPageInput newState = UserLoginPageInput.clone(state);
    newState.occupation = occupation;
    emit(newState);
  }

  void reset() => emit(UserLoginPageInput());
}

class IsLoggingInCubit extends Cubit<bool> {
  IsLoggingInCubit() : super(false);

  void setToLogin() => emit(true);
  void setToSignup() => emit(false);
}

class LoginPage extends StatelessWidget {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(loginBackdropColor),
      appBar: null,
      resizeToAvoidBottomInset: true,
      body: Builder(builder: (context) {
        UserLoginPageInputCubit inputCubit = UserLoginPageInputCubit();
        IsLoggingInCubit loggingInCubit = IsLoggingInCubit();
        return MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: loggingInCubit,
              ),
              BlocProvider.value(
                value: inputCubit,
              ),
            ],
            child:
                SafeArea(child: LoginPageContents(title: 'CoPeFa Pesticide')));
      }),
    );
  }
}

class LoginPageContents extends StatelessWidget {
  // When true, we are only logging in. When false, we're signing up.
  final String title;
  const LoginPageContents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      /* controller: scrollController, */
      child: Column(
        children: [
          Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 48, bottom: 48),
                  child: LoginOrSignupPrompt(
                    title: title,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: Builder(builder: (context) {
                    bool isLoggingInCubit =
                        context.watch<IsLoggingInCubit>().state;
                    if (isLoggingInCubit) {
                      return const LoginForm();
                    } else {
                      return const SignupForm();
                    }
                  }),
                ),
              ]),
        ],
      ),
    );
  }
}

class LoginOrSignupPrompt extends StatelessWidget {
  final String title;

  List<TextSpan> getPrompt(BuildContext context, bool loggingIn) {
    if (loggingIn) {
      return [
        TextSpan(text: 'Dont have an account?'.i18n()),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.read<UserLoginPageInputCubit>().reset();
                context.read<IsLoggingInCubit>().setToSignup();
              },
            text: ' ${'Sign up'.i18n()}',
            style: const TextStyle(fontWeight: FontWeight.bold))
      ];
    } else {
      return [
        TextSpan(text: 'Already have an account?'.i18n()),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.read<UserLoginPageInputCubit>().reset();
                context.read<IsLoggingInCubit>().setToLogin();
              },
            text: ' ${'Sign in'.i18n()}',
            style: const TextStyle(fontWeight: FontWeight.bold))
      ];
    }
  }

  const LoginOrSignupPrompt({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      child: IntrinsicHeight(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              child: Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Helvetica',
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: Text.rich(
                TextSpan(
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    children: context.watch<IsLoggingInCubit>().state
                        ? getPrompt(context, true)
                        : getPrompt(context, false)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(children: [
              Row(
                children: const [Expanded(child: LoginFields())],
              ),
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: Row(
                  children: [
                    /* Container(), */
                    Expanded(
                        child: ActionButton(
                      loggingIn: true,
                    )),
                  ],
                ),
              ),
            ])));
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Use the form or remove it. Currently doesn't do anything since it
    // only has a single container child
    return Form(
        child: Container(
      /* color: Colors.yellow, */
      margin: const EdgeInsets.symmetric(horizontal: 16),
      /* height: 900, */
      child: Builder(builder: ((context) {
        bool languageSelected =
            context.watch<AppStateBloc>().state.hasChosenLocale;
        if (!languageSelected) {
          return const SignupSelectLanguageWidget();
        } else {
          return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const [Expanded(child: SignupFields())],
                ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                          child: ActionButton(
                        loggingIn: false,
                      )),
                    ],
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    context.read<IsLoggingInCubit>().setToSignup();
                    context.read<AppStateBloc>().add(UnchoseLocalEvent());
                  },
                  child: Container(
                    margin: const EdgeInsetsDirectional.symmetric(vertical: 8),
                    alignment: AlignmentDirectional.centerStart,
                    child: Text("< Select Language".i18n(),
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: Colors.white)),
                  ),
                ),
              ]);
        }
      })),
    ));
  }
}

class SignupSelectLanguageWidget extends StatelessWidget {
  const SignupSelectLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (String language in languages)
                Row(children: [
                  Expanded(child: SelectLanguageButton(language: language))
                ])
            ]));
  }
}

class SelectLanguageButton extends StatelessWidget {
  final String language;
  const SelectLanguageButton({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    String country =
        language == 'English' ? 'us' : languageToLocaleCodes[language]!;

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        height: 64,
        child: OutlinedButton(
            onPressed: (() async {
              String? languageCode = languageToLocaleCodes[language];

              if (languageCode != null) {
                GetIt.I<Logger>().i("$language Button Clicked");
                context.read<AppStateBloc>().add(ChoseLocalEvent(
                      chosenLocale: languageCode,
                    ));
              } else {
                GetIt.I<Logger>().e("""$language Button Clicked, But
                country code not found""");
              }
            }),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              backgroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: 'SF Pro Text'),
            ),
            child: Row(children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Flag.fromString(
                  country,
                  height: 48,
                  width: 48,
                ),
              ),
              Expanded(child: Text(language)),
            ])));
  }
}

class SignupFields extends StatelessWidget {
  const SignupFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        child: Column(children: [
          InputField(
            hint: '${'Name'.i18n()} *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setName(value);
            },
          ),
          CountryField(
            hint: '${'Select Country'.i18n()} *',
            onChanged: (String selectedCountry) {
              context
                  .read<UserLoginPageInputCubit>()
                  .setCountry(selectedCountry);
            },
          ),
          InputField(
            hint: '${'Occupation'.i18n()} *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setOccupation(value);
            },
          ),
          InputField(
            hint: 'Education'.i18n(),
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setEducation(value);
            },
          ),
          InputField(
            hint: 'Email'.i18n(),
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setEmail(value);
            },
          ),
          /* Container( */
          /*   padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8), */
          /*   child: Text( */
          /*     "e-mail address will be used to send project training " */
          /*     "documents and news.", */
          /*     style: Theme.of(context).textTheme.labelMedium, */
          /*   ), */
          /* ), */
          InputField(
            hint: '${'Username'.i18n()} *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setUsername(value);
            },
          ),
          PasswordField(onChanged: (value) {
            context.read<UserLoginPageInputCubit>().setPassword(value);
          }),
          PasswordField(
              // TODO: Translate hint
              hint: 'Retype Password',
              onChanged: (value) {
                context.read<UserLoginPageInputCubit>().setrePassword(value);
              }),
        ]));
  }
}

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        child: Column(children: [
          InputField(
            hint: '${'Username'.i18n()} *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setUsername(value);
            },
          ),
          PasswordField(onChanged: (value) {
            context.read<UserLoginPageInputCubit>().setPassword(value);
          }),
        ]));
  }
}

class PasswordField extends StatefulWidget {
  final bool startObsecured;
  String hint;
  final void Function(String value) onChanged;
  PasswordField(
      {super.key,
      this.startObsecured = true,
      required this.onChanged,
      this.hint = 'Password'});

  @override
  State<PasswordField> createState() => _PasswordFieldState(
      hint: hint, obscured: startObsecured, onChanged: onChanged);
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscured;
  String hint;
  final void Function(String value) onChanged;

  _PasswordFieldState({
    required this.onChanged,
    this.obscured = true,
    required this.hint,
  });
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: InputField(
          hint: '${hint.i18n()} *',
          lastField: true,
          obscured: obscured,
          initialValue: context.read<UserLoginPageInputCubit>().state.password,
          onChanged: (value) {
            onChanged(value);
          },
        ),
      ),
      CupertinoButton(
          child: Icon(
            CupertinoIcons.eye_fill,
            size: 24,
            color:
                obscured ? CupertinoColors.inactiveGray : CupertinoColors.white,
          ),
          onPressed: () {
            setState(() {
              obscured = !obscured;
            });
          }),
    ]);
  }
}

class CountryField extends StatelessWidget {
  final String hint, initialValue;
  final void Function(String value) onChanged;
  const CountryField(
      {super.key,
      this.hint = '',
      this.initialValue = '',
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    String selectedCountry =
        context.watch<UserLoginPageInputCubit>().state.country;
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async {
              showCountryPicker(
                context: context,
                showPhoneCode: false,
                showSearch: true,
                onSelect: (Country country) {
                  onChanged(country.name);
                },
              );
            },
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 0, color: const Color(0x88000000)),
                    /* color: const Color(0x17000000), */
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(6)),
                child: Text(selectedCountry.isEmpty ? hint : selectedCountry,
                    style: TextStyle(
                        color: selectedCountry.isEmpty
                            ? Colors.grey
                            : Colors.black87))),
          ),
        )
      ],
    );
  }
}

class InputField extends StatelessWidget {
  final String hint, initialValue;
  final bool obscured;
  final bool lastField;
  final TextEditingController? controller;
  final void Function(String value) onChanged;
  const InputField(
      {super.key,
      this.hint = '',
      this.initialValue = '',
      this.controller,
      this.obscured = false,
      this.lastField = false,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller =
        this.controller ?? TextEditingController(text: initialValue);
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            /* color: const Color(0x17000000), */
            color: Colors.white70,
            border: Border.all(width: 0, color: const Color(0x88000000)),
            borderRadius: BorderRadius.circular(6)),
        child: Builder(builder: (context) {
          var textFormFieldRow = CupertinoTextFormFieldRow(
              controller: controller,
              padding: EdgeInsets.zero,
              obscureText: obscured,
              placeholder: hint,
              placeholderStyle: const TextStyle(color: Colors.grey),
              style: Theme.of(context).textTheme.bodyLarge,
              onChanged: onChanged,
              textInputAction:
                  lastField ? TextInputAction.done : TextInputAction.next);
          return textFormFieldRow;
        }));
  }
}

class ActionButton extends StatelessWidget {
  final bool loggingIn;
  bool hasPressed = false;
  ActionButton({super.key, required this.loggingIn});

  @override
  Widget build(BuildContext context) {
    FToast fToast = FToast();
    fToast.init(context);
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        height: 56,
        child: OutlinedButton(
            onPressed: (() async {
              UserLoginPageInput loginPageInput =
                  context.read<UserLoginPageInputCubit>().state;
              if (loggingIn) {
                GetIt.I<Logger>().i("Logging in");

                // TODO: Add user not found and other errors
                if (!hasPressed) {
                  hasPressed = true;

                  Dio client = Dio();

                  AttemptLoginEvent event = AttemptLoginEvent(
                    username: loginPageInput.username,
                    password: loginPageInput.password,
                  );

                  Response response = await client.post(
                      "$serverAddress/api/login",
                      data: {
                        'payload': {'login_info': event.toJson()}
                      },
                      options:
                          Options().copyWith(responseType: ResponseType.json));

                  GetIt.I<Logger>()
                      .d("Returned response from server rest api $response");

                  GetIt.I<Logger>().w(response.data);

                  /* // TODO: Make  proper  success and error handling */
                  if (response.data['status'] == 'Bad request') {
                    showToast('User Not Found Or Password is Wrong');
                    hasPressed = false;
                    return;
                  }
                  if (response.data['uid'] != 0) {
                    AuthenticationState newState =
                        AuthenticationState.getEmptyAuthState();
                    newState.loggedInUserGlobalId = response.data['uid'];
                    newState.name = response.data['name'];
                    newState.email = response.data['email'];
                    newState.username = response.data['username'];
                    newState.password = response.data['password'];
                    newState.occupation = response.data['occupation'];
                    newState.education = response.data['education'];
                    newState.country = response.data['country'];
                    newState.loggedIn = true;

                    await showStartingAlerts(context);

                    context
                        .read<AuthenticationBloc>()
                        .add(ReloadAuthEvent(newState));

                    if (newState.loggedIn) {
                      await GetIt.I<Repository>()
                          .getStateFromServer(newState.loggedInUserGlobalId);
                    }

                    /* context.read<AuthenticationBloc>().add(AttemptLoginEvent( */
                    /*       username: loginPageInput.username, */
                    /*       password: loginPageInput.password, */
                    /*     )); */
                    hasPressed = false;
                  }
                }
              } else {
                GetIt.I<Logger>().i("Signing up");

                if (loginPageInput.name.isEmpty) {
                  showToast('Please Enter Name'.i18n());
                  return;
                }

                if (loginPageInput.country.isEmpty) {
                  showToast('Select Country'.i18n());
                  return;
                }

                if (loginPageInput.occupation.isEmpty) {
                  showToast('Please Enter Occupation'.i18n());
                  return;
                }

                if (loginPageInput.username.isEmpty) {
                  showToast('Please Enter Username'.i18n());
                  return;
                }

                if (loginPageInput.password.length < 6) {
                  showToast('''Passwords should be at least 6 characters long'''
                      .i18n());
                  return;
                }

                if (loginPageInput.password != loginPageInput.rePassword) {
                  showToast('Passwords do not match'.i18n());
                  return;
                }

                Dio client = Dio();
                AttempSignupEvent event = AttempSignupEvent(
                  name: loginPageInput.name,
                  email: loginPageInput.email,
                  username: loginPageInput.username,
                  password: loginPageInput.password,
                  country: loginPageInput.country,
                  education: loginPageInput.education,
                  occupation: loginPageInput.occupation,
                );

                if (!hasPressed) {
                  hasPressed = true;

                  Response response = await client.post(
                      "$serverAddress/api/signup",
                      data: {
                        'payload': {'signup_info': event.toJson()}
                      },
                      options:
                          Options().copyWith(responseType: ResponseType.json));

                  GetIt.I<Logger>()
                      .d("Returned response from server rest api $response");

                  GetIt.I<Logger>().w(response.data);

                  /* // TODO: Make  proper  success and error handling */
                  if (response.data['uid'] != 0) {
                    AuthenticationState newState =
                        AuthenticationState.getEmptyAuthState();
                    newState.loggedInUserGlobalId = response.data['uid'];
                    newState.name = response.data['name'];
                    newState.email = response.data['email'];
                    newState.username = response.data['username'];
                    newState.password = response.data['password'];
                    newState.occupation = response.data['occupation'];
                    newState.education = response.data['education'];
                    newState.country = response.data['country'];
                    newState.loggedIn = true;

                    AppState cleanState =
                        AppState.clone(context.read<AppStateBloc>().state);
                    cleanState.lands = [];
                    cleanState.crops = [];
                    cleanState.pesticides = [];

                    await showStartingAlerts(context);

                    context
                        .read<AppStateBloc>()
                        .add(ReloadAppStateEvent(cleanState, true));

                    context
                        .read<AuthenticationBloc>()
                        .add(ReloadAuthEvent(newState));
                  }
                  /* context.read<AuthenticationBloc>().add(AttempSignupEvent( */
                  /*       name: loginPageInput.name, */
                  /*       email: loginPageInput.email, */
                  /*       username: loginPageInput.username, */
                  /*       password: loginPageInput.password, */
                  /*       country: loginPageInput.country, */
                  /*       education: loginPageInput.education, */
                  /*       occupation: loginPageInput.occupation, */
                  /*     )); */

                  /* context */
                  /*     .read<AppStateBloc>() */
                  /*     .add(ReloadAppStateEvent(null, true)); */
                  /* hasPressed = false; */
                }

                /* GoRouter.of(context).go('/dashboard'); */
              }
            }),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              backgroundColor: Color(loginButtonColor),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: 'SF Pro Text'),
            ),
            child: Text(loggingIn ? 'Sign in'.i18n() : 'Sign up'.i18n())));
  }
}

Future<bool> showStartingAlerts(BuildContext context) async {
  await showStartingAlert(
      context,
      '''Please check the pH level of the water you intend to spray. The pH of the water should be between 5.5 and 6.5. If the pH of the water you use is higher than this, use a pH lowering product'''
          .i18n());
  await showStartingAlert(
      context,
      '''Please make the spraying mixture at the location that is closest to the land. Do not operate a vehicle while the tank is filled with a pesticide mixture. This may cause environmental pollution and the pesticide mixture to be dispersed'''
          .i18n());
  await showStartingAlert(
      context,
      '''After preparing the mixing mixture, do not keep it waiting. Begin the spraying as soon as possible. Waiting for the pesticide mixture may reduce its effectiveness, cause diseases and pests to develop resistance, and reduce application success'''
          .i18n());

// Newly added ones
  // ignore: use_build_context_synchronously
  await showStartingAlert(
      context,
      '''It is very important to calibrate the crop protection machine. According to the literature calibration can save up to 10% of pesticides'''
          .i18n());

  // ignore: use_build_context_synchronously
  await showStartingAlert(
      context,
      '''Occupational health and safety equipment needs to be used, masks, gloves, etc. Cleaning the tank as cleaning. Procedures for cleaning the equipment, information on waste management'''
          .i18n());

  return true;
}
