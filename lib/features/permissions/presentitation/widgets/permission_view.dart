import 'package:flutter/material.dart';
import 'package:on_time/core/shared_component/app_bar2.dart';
import 'package:on_time/features/permissions/presentitation/widgets/per_body.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBarWidget2( text: 'Permissions ',),
        body: PermissionBody(),
      ),
    );
  }
}
