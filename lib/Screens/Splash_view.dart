import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jop_finder/Screens/login_view.dart';
import 'package:jop_finder/constants.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          
          children: [
            const Padding(
          padding: EdgeInsets.only(top: 50, left: 0, bottom: 39),
          child: Text(
            'JobFinder',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Baumans',
              fontSize: 26,
            ),
          ),
        ),
            Expanded(
              child: Column(
                  children: [
              
              Container(
                  height: 370,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/Working.png',
                    fit: BoxFit.fill,
                  )),
            const  SizedBox(
                height: 15,
              ),
             const Text(
                "Find your",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
             const Text(
                "dream job here!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 25.0, right: 25, top: 7, bottom: 16),
                child:Text(
                  "you can search millions of jobs online to find the next step in your career",
                 textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 151, 150, 150),
                      fontFamily: 'Cairo',
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      ),
                ),
              ),
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:0,bottom :20.0),
              child: SizedBox(height: 70,
              width: 75,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed(LoginView.routeName);
              },
              
              style: ElevatedButton.styleFrom(
                primary: pColor,
                
                shape:const CircleBorder()
              ),
              
              
              child:  SvgPicture.asset('assets/images/button1.svg',height: 23,
              width: 30,
              color: Colors.white,),),),
            )
          ],
        ),
   );
  }
}
