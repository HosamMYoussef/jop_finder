import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jop_finder/constants.dart';
import 'package:jop_finder/models/category_model.dart';
import 'package:provider/provider.dart';

class JopDetails extends StatelessWidget {
  static const routeName = './Jop-Details';

  @override
  Widget build(BuildContext context) {
  
    final JopModel jop = ModalRoute.of(context)?.settings.arguments as JopModel;

    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0, left: 10),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(
                              'assets/images/back.svg',
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
                      Padding(
                        padding: const EdgeInsets.only(top: 45.0, right: 10),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/images/3dots.svg',
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      jop.image,
                      height: 113,
                      width: 113,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    jop.jopTitle,
                    style: const TextStyle(
                        fontFamily: "cairo",
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Center(
                  child: Text(
                    jop.companyName,
                    style: const TextStyle(
                        fontFamily: "cairo",
                        fontSize: 20,
                        color: Color.fromRGBO(126, 126, 126, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    jop.date,
                    style: const TextStyle(
                        fontFamily: "cairo",
                        fontSize: 16,
                        color: Color.fromRGBO(126, 126, 126, 1),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 57,
                          width: 57,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset('assets/images/loc.svg'),
                          ),
                        ),
                        const Text(
                          'Location',
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              color: Color.fromRGBO(126, 126, 126, 1),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          jop.location,
                          style: const TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 57,
                          width: 57,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset('assets/images/jop.svg'),
                          ),
                        ),
                        const Text(
                          'Position',
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              color: Color.fromRGBO(126, 126, 126, 1),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          jop.postion,
                          style: const TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 57,
                          width: 57,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset('assets/images/sal.svg'),
                          ),
                        ),
                        const Text(
                          'Salary',
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              color: Color.fromRGBO(126, 126, 126, 1),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          jop.salary,
                          style: const TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 20),
                      child: Text(
                        'Job Desciption',
                        style: TextStyle(
                            fontFamily: "cairo",
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 4.0, left: 20, right: 15),
                      child: Text(
                        jop.describtion,
                        style: const TextStyle(
                            fontFamily: "cairo",
                            fontSize: 16,
                            color: Color.fromRGBO(126, 126, 126, 1),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 20),
                      child: Text(
                        'Job Requirments',
                        style: TextStyle(
                            fontFamily: "cairo",
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 4.0, left: 20, right: 15),
                      child: Text(
                        jop.requirment,
                        style: const TextStyle(
                            fontFamily: "cairo",
                            fontSize: 16,
                            color: Color.fromRGBO(126, 126, 126, 1),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 20),
                      child: Text(
                        'Job Requirments',
                        style: TextStyle(
                            fontFamily: "cairo",
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 4.0, left: 20, right: 15),
                      child: Text(
                        jop.requirment,
                        style: const TextStyle(
                            fontFamily: "cairo",
                            fontSize: 16,
                            color: Color.fromRGBO(126, 126, 126, 1),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ]),
        ),
        Positioned(
          bottom: 1,
          //left: 40,
          child: buildBlur(
            borderRadius: BorderRadius.circular(1),
            child: SizedBox(
              height: 80,
              width: 400,
              //decoration: BoxDecoration(color: Colors.red),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: 52,
                      width: 238,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: pColor,
                          elevation: 0,
                        ),
                        child: const Text(
                          'Apply now',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset('assets/images/book.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

Widget buildBlur({
  required Widget child,
  required BorderRadius borderRadius,
  double sigmaX = 1,
  double sigmaY = 1,
}) =>
    ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: child,
      ),
    );
