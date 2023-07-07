import 'package:flutter/material.dart';



import '../../constants.dart';
import '../../core/utilies/styles.dart';
import 'home_page.dart';

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

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          //this number is standard at all at will make padding to make it in center
          child: Center(
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
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => const HomePage(),
                      ),
                      );
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
    );
  }
}
