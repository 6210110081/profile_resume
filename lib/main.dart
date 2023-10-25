import 'package:flutter/material.dart';
import 'package:profile_resume/my_profile.dart';
import 'project_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfile(),
      theme: ThemeData.dark(),
      routes: {
        '/projectDetails': (context) => ProjectDetails(
              title: 'Default Title',
              description: 'Default Description',
              technologies: 'Default Technologies',
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
