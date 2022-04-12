import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // List<Application> apps = await DeviceApps.getInstalledApplications(
  //   includeAppIcons: true,
  //   includeSystemApps: true,
  //   onlyAppsWithLaunchIntent: true,
  // );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Center(
          child: Text(
            "Surprise MF",
            style: TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
