import 'package:flutter/material.dart';
import 'package:on_time/core/shared_component/app_bar2.dart';
import 'package:on_time/features/profile_detail_page/presentation/views/widgets/prof_details_body.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget2(text: 'Profile Details ',),
        body: ProfileBody(),
      ),
    );
  }
}
