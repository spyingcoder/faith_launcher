// import 'dart:convert';
//
// List<AppList> appListFromJson(String str) =>
//     List<AppList>.from(json.decode(str).map((x) => AppList.fromMap(x)));
//
// class AppList {
//   AppList({
//      this.versionCode,
//      this.id,
//      this.title,
//      this.body,
//   });
//
//   int versionCode;
//   int id;
//   String title;
//   String body;
//
//   factory AppList.fromMap(Map<String, dynamic> json) => AppList(
//     versionCode: json["userId"],
//     id: json["id"],
//     title: json["title"],
//     body: json["body"],
//   );
// }