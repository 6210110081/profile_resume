import 'package:flutter/material.dart';
import 'package:profile_resume/spack_bg.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Sofron Kuwa',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Software Developer',
                  style: TextStyle(fontSize: 20),
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
                SizedBox(height: 20),
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
