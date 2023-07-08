import 'package:flutter/material.dart';
import 'package:on_time/core/shared_component/app_bar2.dart';
import 'package:on_time/features/vacation/presentation/widgets/vacation_body.dart';

import '../../../../constants.dart';

class VacationView extends StatelessWidget {
  const VacationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBarWidget2(text: 'Vacation',),
        body: VacationBody(),
      ),
    );
  }
}
