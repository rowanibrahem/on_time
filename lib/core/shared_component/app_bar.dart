import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';
import '../../features/widgets/views/body.dart';
import '../../features/widgets/views/states.dart';
import '../utilies/styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 90);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit ,AuthStates>(
      listener: (context , state){},
      builder: (context , state)=> AppBar(
        leading: SizedBox(),
        backgroundColor: kPrimaryColor,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                "Welcome Back,",
                style: Styles.textStyle152.copyWith(color: Colors.grey ,  fontSize: 30),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      BlocProvider.of<AuthCubit>(context).userNameData!,
                      style: Styles.textStyle152.copyWith(color: Colors.white , fontSize: 20),
                    ),
                    Text(
                      '100',
                      style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text('Flutter Developer' ,
                    style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 15),),
                  Text(
                    'Points' ,
                    style:  Styles.textStyle152.copyWith(color: Colors.white , fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }


}
