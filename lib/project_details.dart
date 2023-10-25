import 'package:flutter/material.dart';

class ProjectDetails extends StatelessWidget {
  final String title;
  final String description;
  final String technologies;

  ProjectDetails(
      {required this.title,
      required this.description,
      required this.technologies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Use the project title as the page title
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(description),
            SizedBox(height: 10),
            Text(
              'Technologies:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(technologies),
          ],
        ),
      ),
    );
  }
}
