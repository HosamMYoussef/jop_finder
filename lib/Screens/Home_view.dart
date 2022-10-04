import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jop_finder/Screens/bookmarks_view.dart';
import 'package:jop_finder/Screens/profile.dart';
import 'package:jop_finder/constants.dart';
import 'package:jop_finder/models/category_model.dart';

import 'Jop_details.dart';
import 'notfications.dart';

class HomeView extends StatefulWidget {
  final List<JopModel> jops;
  HomeView(this.jops);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  List<bool> check = [
    true,
    false,
    false,
  ];

  List<bool> checks = [
    false,
    true,
    true,
    true,
    true,
    true,
   
  ];

  bool isTap = false;

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
                  padding: const EdgeInsets.only(top: 40.0, left: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Notfications.routeName);
                      },
                      icon: SvgPicture.asset(
                        'assets/images/icon2.svg',
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
                  padding: const EdgeInsets.only(top: 40.0, right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/icon.svg',
                      )),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 21.0, top: 27),
            child: Text(
              'Find Opportunities for your \n next job !',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SingleChildScrollView(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: SizedBox(
                        height: 28,
                        width: 30,
                        child:

                            // shrinkWrap: true,
                            SvgPicture.asset(
                          'assets/images/list.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!check[0]) {
                                check[0] = true;
                                check[1] = false;
                                check[2] = false;
                              }
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 92,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: check[0]
                                    ? pColor
                                    : Color.fromRGBO(239, 239, 239, 1)),
                            child: Center(
                              child: Text(
                                'UI\/UX',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    color:
                                        check[0] ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!check[1]) {
                                check[1] = true;
                                check[0] = false;
                                check[2] = false;
                              }
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: check[1]
                                    ? pColor
                                    : const Color.fromRGBO(239, 239, 239, 1)),
                            child: Center(
                              child: Text(
                                'Data Entry',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    color:
                                        check[1] ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!check[2]) {
                                check[2] = true;
                                check[1] = false;
                                check[0] = false;
                              }
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: check[2]
                                    ? pColor
                                    : Color.fromRGBO(239, 239, 239, 1)),
                            child: Center(
                              child: Text(
                                'Markiting ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    color:
                                        check[2] ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 115,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(64, 67, 222, 1),
                      Color.fromRGBO(90, 93, 255, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10.0, top: 17, right: 60),
                          child: Text(
                            'Upload your resume',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 6),
                          child: Text(
                            'Get more notified by compinies and \n better chance for getting accepted in jobs.',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset('assets/images/rec.svg')
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 15, right: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Best Matches',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                Text(
                  'View all  >',
                  style: TextStyle(
                      color: Color.fromRGBO(126, 126, 126, 1),
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(JopDetails.routeName,
                          arguments: widget.jops[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Stack(
                        children: [
                          Container(
                            height: 110,
                            width: 349,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Image.asset(
                                      widget.jops[index].image,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 13.0, top: 12),
                                        child: Text(
                                          widget.jops[index].companyName,
                                          style: const TextStyle(
                                            color: Color.fromRGBO(
                                                126, 126, 126, 1),
                                            fontSize: 14,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 13.0),
                                        child: Text(
                                          widget.jops[index].jopTitle,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22.0),
                                    child: Text(
                                      widget.jops[index].date,
                                      style: const TextStyle(
                                        color: Color.fromRGBO(126, 126, 126, 1),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22.0),
                                    child: Text(
                                      widget.jops[index].salary,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                          Positioned(
                              left: 290,
                              bottom: 60,
                              child: IconButton(
                                icon: checks[index]
                                    ? SvgPicture.asset(
                                        'assets/images/bookmarkoutline.svg',
                                      )
                                    : SvgPicture.asset(
                                        'assets/images/bookmarkfil.svg',
                                      ),
                                onPressed: () {
                                  setState(() {
                                    if (checks[index]) {
                                      checks[index] = false;
                                    } else {
                                      checks[index] = true;
                                    }
                                    ;
                                  });
                                },
                              ))
                        ],
                      ),
                    ),
                  );
                },
                itemCount: widget.jops.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
