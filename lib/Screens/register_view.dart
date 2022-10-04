import 'package:flutter/material.dart';
import 'package:jop_finder/constants.dart';

import 'Home_view.dart';
import 'login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);
  static const routeName = './register_view';
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
                    child: Text('Create New \n account!',
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
                      'Full Name',
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
                          hintText: '  Enter Your full name',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 151, 150, 150),
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18,),
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
                          Navigator.of(context).pushNamed(LoginView.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: pColor,
                          elevation: 0,
                        ),
                        child: const Text(
                          'Sign up',
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
                        'Already have an account? ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 151, 150, 150),
                            fontFamily: 'Cairo',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(LoginView.routeName);
                        },
                        child: const Text(
                          ' sign in',
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
                  
                  
                ]))
          ]),
    );
  }
}
