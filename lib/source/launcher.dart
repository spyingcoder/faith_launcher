import 'package:faith_launcher/source/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red,
      systemNavigationBarColor: Colors.red,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      getPages: [
        GetPage(name: '/body', page: () => const Body()),
      ],
      initialRoute: '/body',
    );
  }
}
