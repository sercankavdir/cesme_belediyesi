import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  final String courseName;
  final String imageUrl;
  final String date;

  CourseWidget({
    @required this.courseName,
    @required this.imageUrl,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 16,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(imageUrl),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                courseName,
                style: TextStyle(color: Colors.black, fontSize: 18),
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'Başlangıç Tarihi: ${date}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
