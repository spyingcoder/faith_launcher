import 'dart:async';
import 'package:device_apps/device_apps.dart';

Future<List> getDeviceAppsList() async {
  List<Application> apps = await DeviceApps.getInstalledApplications(
    includeAppIcons: true,
    includeSystemApps: true,
    onlyAppsWithLaunchIntent: true,
  );
  for (int i = 0; i < apps.length; i++) {
    Application app = apps[i];
    print(app);
  }
  return apps;
}


