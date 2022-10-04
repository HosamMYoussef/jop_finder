import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Notfications extends StatelessWidget {
  const Notfications({Key? key}) : super(key: key);
  static const routeName = './Notfications';
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
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 32),
            child: Text(
              'Notifications',
              style: (TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: 430,
              height: 600,
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 7, bottom: 6, right: 5),
                        child: SvgPicture.asset('assets/images/dia.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 9, bottom: 9),
                        child: Column(
                          children: [
                            const Text(
                              'Congratulations! you have applied for ',
                              style: (TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: const [
                                Text(
                                  'your first job. ',
                                  style: (TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    '1hr ago',
                                    style: (TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromRGBO(126, 126, 126, 1))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 7, bottom: 6, right: 5),
                        child: SvgPicture.asset('assets/images/locc.svg'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 4.0, top: 9, bottom: 9),
                        child: Column(
                          children: [
                            const Text(
                              'Your Password has been changed ',
                              style: (TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 11.0),
                                  child: Text(
                                    'successfully.',
                                    style: (TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                  ),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    '3hr ago',
                                    style: (TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromRGBO(126, 126, 126, 1))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                )
              ]),
            ),
          )
        ]));
  }
}
