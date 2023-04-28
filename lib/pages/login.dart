import 'dart:io';
import 'dart:typed_data';

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
import 'package:pesticide/model/authentication_state.dart';
import 'package:pesticide/utilities/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
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
        return MultiBlocProvider(providers: [
          BlocProvider.value(
            value: loggingInCubit,
          ),
          BlocProvider.value(
            value: inputCubit,
          ),
        ], child: SafeArea(child: LoginPageContents(title: 'CoPeFa')));
      }),
    );
  }
}

class LoginPageContents extends StatelessWidget {
  // When true, we are only logging in. When false, we're signing up.
  final String title;
  final ScrollController scrollController = ScrollController();
  LoginPageContents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyboardVisibilityBuilder(builder: (context, keyboardOpen) {
                  if (keyboardOpen) {
                    Future.delayed(const Duration(milliseconds: 300), () {
                      if (scrollController.hasClients) {
                        scrollController.jumpTo(
                          scrollController.position.maxScrollExtent,
                        );
                      }
                    });
                  }
                  return Container(
                    margin: EdgeInsets.only(top: 48, bottom: 48),
                    child: LoginOrSignupPrompt(
                      title: title,
                    ),
                  );
                }),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Builder(builder: (context) {
                    bool isLoggingInCubit =
                        context.watch<IsLoggingInCubit>().state;
                    if (isLoggingInCubit) {
                      return LoginForm();
                    } else {
                      return SignupForm();
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
            text: ' ' + 'Sign up'.i18n(),
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
            text: ' ' + 'Sign in'.i18n(),
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
          return SignupSelectLanguageWidget();
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
                    margin: EdgeInsetsDirectional.symmetric(vertical: 8),
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
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        height: 64,
        child: OutlinedButton(
            onPressed: (() async {
              String? languageCode = languageCodes[language];

              if (languageCode != null) {
                GetIt.I<Logger>().i("$language Button Clicked");
                context.read<AppStateBloc>().add(ChoseLocalEvent(
                      chosenLocale: languageCode,
                    ));
                await setLocaleAndRestart(context, languageCode);
              } else {
                GetIt.I<Logger>().e("""$language Button Clicked, But
                country code not found""");
              }
              /* context.read<LocaleCubit>().setLocale(Locale('de')); */
              /* context.read<SigningUpSelectLanguageCubit>().languageSelected(); */
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
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Flag.fromString(
                  languageCodes[language]!,
                  height: 48,
                  width: 48,
                  borderRadius: 12,
                ),
              ),
              Expanded(child: Text(language)),
            ])));
  }
}
/* class SignupImage extends StatefulWidget { */
/*   const SignupImage({super.key}); */

/*   @override */
/*   State<SignupImage> createState() => _SignupImageState(); */
/* } */

/* class _SignupImageState extends State<SignupImage> { */
/*   XFile? _image; */

/*   @override */
/*   Widget build(BuildContext context) { */
/*     return GestureDetector( */
/*       onTap: () async { */
/*         final ImagePicker picker = ImagePicker(); */

/*         final XFile? image = */
/*             await picker.pickImage(source: ImageSource.gallery); */

/*         if (image != null) { */
/*           context */
/*               .read<UserLoginPageInputCubit>() */
/*               .setPhotoFile(await image.readAsBytes()); */

/*           setState(() { */
/*             _image = image; */
/*           }); */
/*         } else { */
/*           GetIt.I<Logger>().e("Error selecting photo"); */
/*         } */
/*       }, */
/*       child: Container( */
/*         height: 100, */
/*         width: 100, */
/*         margin: const EdgeInsets.only(bottom: 48), */
/*         child: CircleAvatarWithBorder( */
/*             borderThickness: 2.0, */
/*             borderColor: Color(loginButtonColor), */
/*             overalRadius: 50, */
/*             imageProvider: _image != null */
/*                 ? Image.file( */
/*                     File(_image!.path), */
/*                     /1* width: 200, height: 200, fit: BoxFit.fitHeight *1/ */
/*                   ).image */
/*                 : Image.asset('assets/profile_pic_silhouette.png').image), */
/*       ), */
/*     ); */
/*   } */
/* } */

class SignupFields extends StatelessWidget {
  const SignupFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        child: Column(children: [
          InputField(
            hint: 'Name'.i18n(),
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setName(value);
            },
          ),
          CountryField(
            hint: 'Select Country'.i18n(),
            onChanged: (String selectedCountry) {
              context
                  .read<UserLoginPageInputCubit>()
                  .setCountry(selectedCountry);
            },
          ),
          InputField(
            hint: 'Occupation'.i18n(),
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
            hint: 'Email'.i18n() + ' *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setEmail(value);
            },
          ),
          InputField(
            hint: 'Username'.i18n() + ' *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setUsername(value);
            },
          ),
          const PasswordField(),
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
            hint: 'Email'.i18n() + ' *',
            onChanged: (value) {
              context.read<UserLoginPageInputCubit>().setEmail(value);
            },
          ),
          const PasswordField(),
        ]));
  }
}

class PasswordField extends StatefulWidget {
  final bool startObsecured;
  const PasswordField({super.key, this.startObsecured = true});

  @override
  State<PasswordField> createState() =>
      _PasswordFieldState(obscured: startObsecured);
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscured;

  _PasswordFieldState({this.obscured = true});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: InputField(
          lastField: true,
          obscured: obscured,
          initialValue: context.read<UserLoginPageInputCubit>().state.password,
          hint: 'Password'.i18n() + ' *',
          onChanged: (value) {
            context.read<UserLoginPageInputCubit>().setPassword(value);
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
                    border: Border.all(width: 0, color: Color(0x88000000)),
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
  final void Function(String value) onChanged;
  const InputField(
      {super.key,
      this.hint = '',
      this.initialValue = '',
      this.obscured = false,
      this.lastField = false,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            /* color: const Color(0x17000000), */
            color: Colors.white70,
            border: Border.all(width: 0, color: Color(0x88000000)),
            borderRadius: BorderRadius.circular(6)),
        child: Builder(builder: (context) {
          var textFormFieldRow = CupertinoTextFormFieldRow(
              padding: EdgeInsets.zero,
              initialValue: initialValue,
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

void showLoginPageToast(FToast fToast, String message) {
  fToast.showToast(
      child: ToastWidget(
        message: message,
        backgroundColor: CupertinoColors.systemRed,
        messageColor: CupertinoColors.white,
      ),
      gravity: ToastGravity.CENTER,
      toastDuration: Duration(seconds: 1));
}

class ActionButton extends StatelessWidget {
  final bool loggingIn;
  const ActionButton({super.key, required this.loggingIn});

  @override
  Widget build(BuildContext context) {
    FToast fToast = FToast();
    fToast.init(context);
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        height: 56,
        child: OutlinedButton(
            onPressed: (() async {
              if (loggingIn) {
                GetIt.I<Logger>().i("Logging in");
                /* LoginResponse? response = await GetIt.I<AuthService>().login( */
                /*   context.read<UserLoginPageInputCubit>().state.email, */
                /*   context.read<UserLoginPageInputCubit>().state.password, */
                /* ); */
                /* if (response == null) { */
                showLoginPageToast(fToast, 'Login Error');
                /* } else if (response.result == LoginResult.UserNotFound) { */
                /*   showLoginPageToast(fToast, 'Email Not Found'); */
                /* } else if (response.result == LoginResult.WrongPassword) { */
                /*   showLoginPageToast(fToast, 'Wrong Password'); */
                /* } */
              } else {
                GetIt.I<Logger>().i("Signing up");
                UserLoginPageInput loginPageInput =
                    context.read<UserLoginPageInputCubit>().state;
                AuthenticationState authState = AuthenticationState(
                    token: '',
                    firebaseToken: '',
                    profileImageUrl: '',
                    loggedInUserGlobalId: 0,
                    name: loginPageInput.name,
                    email: loginPageInput.email,
                    username: loginPageInput.username,
                    password: loginPageInput.password,
                    language: loginPageInput.language,
                    education: loginPageInput.education,
                    occupation: loginPageInput.occupation,
                    loggedIn: true);

                context
                    .read<AuthenticationBloc>()
                    .add(ReloadAuthEvent(authState));

                GoRouter.of(context).go('/dashboard');
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
