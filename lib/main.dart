import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:manuals/app.dart';
import 'package:manuals/theming/custom_theme.dart';
import 'package:manuals/widgets/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  EquatableConfig.stringify = kDebugMode;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool initialized = false;
  bool error = false;

  void _initializedApp() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        initialized = true;
      });
    } catch (e) {
      print(e);
      setState(() {
        error = true;
      });
    }
  }

  @override
  void initState() {
    _initializedApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(error) {
      return Center(
        child: Text(
          "Error while initializing...",
          style: TextStyle(color: Colors.red),
        ),
      );
    }

    if(!initialized) {
      // TODO: Create Loading Screen
      return CircularProgressIndicator();
    }

    return CustomRepositoryProvider(child: App());
  }
}
