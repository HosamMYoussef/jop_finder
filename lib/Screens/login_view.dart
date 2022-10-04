import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jop_finder/Screens/Home_view.dart';
import 'package:jop_finder/Screens/categorites.dart';
import 'package:jop_finder/Screens/register_view.dart';
import 'package:jop_finder/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  static const routeName = './login_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  const Text(
                    'JobFinder',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Baumans',
                      fontSize: 26,
                    ),
                  ),
                  Container(
                    width: 30,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20.0),
                    child: Text('Welcome \n back!',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                            fontSize: 42)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 9),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                      width: 400,
                      // color: Colors.white,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '  Enter your email address',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 151, 150, 150),
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 9),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                      width: 400,
                      // color: Colors.white,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '  Enter Your Password',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 151, 150, 150),
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock_outlined),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 260.0),
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 76.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: 52,
                      width: 238,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Categories.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: pColor,
                          elevation: 0,
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      const Text(
                        'Don’t have an account yet ?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 151, 150, 150),
                            fontFamily: 'Cairo',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(RegisterView.routeName);
                        },
                        child: const Text(
                          ' sign up',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cairo',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'or',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 52,
                        width: 92,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                            child: Image.asset('assets/images/Google.png'),
                      ),const SizedBox(width: 35,),
                      Container(
                        height: 52,
                        width: 92,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                            child: Image.asset('assets/images/Facebook.png'),
                      ),
                    ],
                  )
                ]))
          ]),
    );
  }
}
