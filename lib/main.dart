import 'package:flutter/material.dart';
import 'project_details.dart';
import 'package:rive/rive.dart';

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
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Space Profile'),
      ),
      body: Stack(
        children: [
          SpaceBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_image.jpg'),
                  radius: 80,
                ),
                SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Web Developer & Space Enthusiast',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    'I am a passionate web developer with a love for space and the mysteries of the cosmos. When I am not coding, I am stargazing and exploring the wonders of the universe.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        20), // Add space between the introduction and the programming work section
                Text(
                  'Programming Work',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/projectDetails',
                              arguments: {
                                'title': 'Project 1: Web App Development',
                                'description':
                                    'Developed a web app for XYZ Inc.',
                                'technologies':
                                    'Flutter, HTML, CSS, JavaScript',
                              });
                        },
                        child: Text(
                          'Project 1: Web App Development',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/projectDetails',
                              arguments: {
                                'title': 'Project 2: Mobile App Development',
                                'description':
                                    'Created a mobile app for ABC Corp.',
                                'technologies': 'Flutter, Dart, Firebase',
                              });
                        },
                        child: Text(
                          'Project 2: Mobile App Development',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SpaceBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: RiveAnimation.asset(
        'assets/vehicles.riv', // Replace with your Rive animation file
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}
