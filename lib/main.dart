import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:register_covid19app/home.dart';
import 'package:register_covid19app/screens/loginsignup.dart';
//import 'home.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'models/authentication.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Authentication(),
        )
      ],
      child: MaterialApp(
        title: 'COVID-19 Tracker',
        theme: ThemeData(
          primaryColor: Colors.blue[800],
        ),
        home: Login(),

        
        routes: {
          SignupScreen.routeName: (ctx) => SignupScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          //Home.routeName: (ctx) => Home(signOut),



        },
      ),
    );
  }
}

