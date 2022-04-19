import 'dart:async';

import 'package:device_apps/device_apps.dart';
import 'package:faith_launcher/controller/app_list_controller.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List applicationList = [];

  // void addList() async {
  //   List bufferList = [];
  //   bufferList = await getDeviceAppsList();
  //   setState(() {
  //     applicationList = bufferList;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // addList();
    // print(applicationList);
    getDeviceAppsList();
    print(getDeviceAppsList);
  }


  Future<List> getDeviceAppsList() async {
    List<Application> apps = await DeviceApps.getInstalledApplications(
      includeAppIcons: true,
      includeSystemApps: true,
      onlyAppsWithLaunchIntent: true,
    );
    // for (int i = 0; i < apps.length; i++) {
    //   Application app = apps[i];
    //   print(app);
    // }
    return apps;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Text(
              "$applicationList",
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
