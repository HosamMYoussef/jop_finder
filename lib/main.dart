import 'package:flutter/material.dart';
import 'package:jop_finder/Screens/Home_view.dart';
import 'package:jop_finder/Screens/Job_details.dart';
import 'package:jop_finder/Screens/bookmarks_view.dart';
import 'package:jop_finder/Screens/categorites.dart';
import 'package:jop_finder/Screens/controlView.dart';
import 'package:jop_finder/Screens/login_view.dart';
import 'package:jop_finder/Screens/profile.dart';
import 'package:jop_finder/Screens/register_view.dart';
import 'package:jop_finder/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Screens/notfications.dart';
import 'firebase_options.dart';

import 'Screens/Splash_view.dart';
import 'models/Auth.dart';
import 'models/Jops.dart';

Future<void> main() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Jops(),
        ),
        ChangeNotifierProvider(
          create: (context) => Auth(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (context, auth, _) =>  MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'JopFinder',
            theme: ThemeData(
              primaryColor: pColor,
              canvasColor: const Color.fromRGBO(246, 246, 246, 1),
            ),
            home:  auth.isAuth? Categories():  LoginView(),
            routes: {
              './': (context) => const Splash(),
              LoginView.routeName: (context) =>  LoginView(),
              RegisterView.routeName: (context) => const RegisterView(),
              // HomeView.routeName: (context) => const HomeView(),
              ControlView.routeName: (context) => const ControlView(),
              Categories.routeName: (context) => Categories(),
              Profile.routeName: (context) => const Profile(),
              JopDetails.routeName: (context) => JopDetails(),
              Notfications.routeName: (context) => const Notfications(),
            }),
        
      ),
    );
  }
}
