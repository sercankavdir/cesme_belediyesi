import 'package:flutter/material.dart';

import './screens/activities_screen.dart';
import './screens/news_screen.dart';
import 'screens/courses_screen.dart';
import './screens/new_detail_screen.dart';
import './screens/pharmacy_screen.dart';
import './screens/otopark_screen.dart';
import './screens/tabs_screen.dart';
import './screens/president_screen.dart';
import './screens/home_screen.dart';

import './models/new.dart';
import './models/pharmacy.dart';
import './models/course.dart';
import './models/activity.dart';
import './dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<Activity> _availableActiities = DUMMY_ACTIVITIES;
  List<Course> _availableCourses = DUMMY_COURSES;
  List<New> _availableNews = DUMMY_NEWS;
  List<Pharmacy> _availableEczane = DUMMY_PHARMACIES;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.black54,
        canvasColor: Color.fromRGBO(245, 244, 246, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: HomeScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(),
        PresidentScreen.routeName: (ctx) => PresidentScreen(),
        NewsScreen.routeName: (ctx) => NewsScreen(_availableNews),
        NewDetailScreen.routeName: (ctx) => NewDetailScreen(),
        OtoparkScreen.routeName: (ctx) => OtoparkScreen(),
        ActivitiesScreen.routeName: (ctx) =>
            ActivitiesScreen(_availableActiities),
        CoursesScreen.routeName: (ctx) => CoursesScreen(_availableCourses),
        PharmacyScreen.routeName: (ctx) => PharmacyScreen(_availableEczane),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => HomeScreen(),);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        );
      },
    );
  }
}
