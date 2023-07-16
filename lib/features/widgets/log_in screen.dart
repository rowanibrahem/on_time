import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:on_time/features/widgets/views/body.dart';
import 'package:on_time/features/widgets/views/states.dart';
import '../../constants.dart';
import '../../core/utilies/styles.dart';
import 'bottom_nav.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();


bool isPasswordVisible = false;
bool? currentValue;
bool _remember = false;
var formKey = GlobalKey <FormState>();

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AuthCubit ,AuthStates> (
      listener: (context, state){
        if(state is LogInSuccessState){
          Navigator.pop(context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
        }

        else if(state is LogInFailedState){
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar (message: state.message!),
          );
        }
        else {
          showDialog(context: context, builder: (_)=>AlertDialog(
            content: Row(
              children: [
                CircularProgressIndicator(color: Colors.green,),
                SizedBox(width: 10,),
                Text("Loading..")
              ],
            ),
          ));
        }
      },
      builder: (context,state)=>
          SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                //this number is standard at all at will make padding to make it in center
                child: Center(
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/images/Group 378.png',
                              width: 300,
                              height: 300,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Welcome!',
                                style: Styles.textStyle40.copyWith(color: Color(0xFF3650FE)),
                              ),
                              const SizedBox(width: 5,),
                              Image.asset(
                                'assets/images/pngwing.com (2).png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Log in to continue',
                              style: Styles.textStyle40.copyWith(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration:  InputDecoration(
                              labelText: 'enter your email',
                              hintText: 'your email',
                              prefixIcon: Icon(
                                Icons.person,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            validator: ( value){
                              if (value!.isEmpty){
                                return 'Email must not be empty';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            validator: (  value){
                              if (value!.isEmpty){
                                return 'password is too short';
                              }
                              return null;
                            },
                            controller: passwordController,
                            decoration: InputDecoration(

                              hintText: 'Password',
                              labelText: 'enter your password',
                              prefixIcon: const Icon(
                                Icons.lock,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            obscureText: !isPasswordVisible,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Switch(
                                value: _remember,
                                onChanged: (newValue) {
                                  setState(() {
                                    _remember = newValue;
                                  });
                                },
                              ),
                              const Text('Remember me'),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              // width: double.infinity,
                              // height: 50,
                              backgroundColor: kPrimaryColor,
                              padding: const EdgeInsets.all(20.0),
                              // minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<AuthCubit>(context).logIn(
                                  userName: emailController.text,
                                  password: passwordController.text,
                                  // sfunction: () {
                                  //   // Success function: Navigate to the next screen upon successful login
                                  //   Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => BottomNav()),
                                  //   );
                                  // },
                                );
                              }
                            },
                            child: Text(
                              'Sign in',
                              style: Styles.textStyle40.copyWith(fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
SnackBar customSnackBar({
  required String message
}){
  return SnackBar(
    content: Container(
        alignment: Alignment.center,
        height: 40,
        child: Text(message,
          style: TextStyle(
              fontSize: 16
          ),
        )
    ),
  );
}