import 'package:flutter/material.dart';
import 'package:ibs_platform/card.dart';
import 'package:ibs_platform/moodboard.dart';

class DashboardController extends StatelessWidget {
  const DashboardController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 193, left: 23, right: 24),
      itemBuilder: (_, index) => HomeCard(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => MoodBoard()));
        },
        imageUrl:
            'https://elearningindustry.com/wp-content/uploads/2020/07/how-to-choose-an-lms-for-your-organization.jpg',
      ),
      itemCount: 4,
      separatorBuilder: (_, __) => SizedBox(height: 20),
    );
  }
}
