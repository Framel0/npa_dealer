import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:npa_dealer/bloc/authentication/authentication.dart';
import 'package:npa_dealer/bloc/simple_bloc_delegate.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/page/home_page.dart';
import 'package:npa_dealer/page/pages.dart';
import 'package:npa_dealer/repositories/user/user.dart';
import 'package:npa_dealer/routes/route_generator.dart';
import 'package:npa_dealer/widget/widget.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthenticationBloc>(
        builder: (context) {
          return AuthenticationBloc(userRepository: userRepository)
            ..dispatch(AppStarted());
        },
      ),
    ],
    child: MyApp(
      userRepository: userRepository,
    ),
  ));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({Key key, @required this.userRepository}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _buildTheme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is AuthenticationAuthenticated) {
            // Navigator.pushReplacement(
            //     // replcet the curent layout unlike push that just creates new page
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext cotext) => MyHomePage()));
          }
        },
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state is AuthenticationUninitialized) {
              return SplashPage();
            }
            if (state is AuthenticationAuthenticated) {
              return HomePage();
            }
            if (state is AuthenticationUnauthenticated) {
              // return HomePage();
              return LoginPage(
                userRepository: userRepository,
              );
            }
            if (state is AuthenticationLoading) {
              return LoadingIndicator();
            }
          },
        ),
      ),
    );
  }
}

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    accentColor: colorAccentYellow,
    primaryColor: colorPrimary,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: colorPrimaryYellow,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    errorColor: kShrineErrorRed,
  );
}
