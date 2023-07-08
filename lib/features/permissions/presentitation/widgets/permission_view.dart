import 'package:flutter/material.dart';
import 'package:on_time/core/shared_component/app_bar2.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarWidget2( text: 'Profile Details ',),
    );
  }
}
