import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import 'notfications.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static const routeName = './Profile';
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 49,
                      child: Image.asset(
                        'assets/images/pers.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: -1,
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(6.6),
                          child: SvgPicture.asset('assets/images/cam.svg'),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 33.0),
                      child: Text(
                        'Kylian Bridger',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cairo',
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                            color: Color.fromRGBO(126, 126, 126, 1),
                            fontFamily: 'Cairo',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: SizedBox(
                            height: 13,
                            width: 16,
                            child: SvgPicture.asset('assets/images/loc.svg'),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Berlin, Germany',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cairo',
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              'About',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, right: 20),
            child: Text(
              'I am a multidisciplinary designer with a curious\n mind, I enjoy to meet new people and understand\n how they are solving problems, this is one of the\n reasons why I invest my time on meetups from\nproduct management to everything related to \ndesign.',
              style: TextStyle(
                  color: Color.fromRGBO(126, 126, 126, 1),
                  fontFamily: 'Cairo',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 15),
            child: Text(
              'Contact',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SvgPicture.asset('assets/images/em.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Email ',
                      style: TextStyle(
                          color: Color.fromRGBO(126, 126, 126, 1),
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Hosamyoussef303@gmail.com',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SvgPicture.asset('assets/images/mob.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Phone ',
                      style: TextStyle(
                          color: Color.fromRGBO(126, 126, 126, 1),
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '+201027593120',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Languages',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Germany',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ), Text(
                      ' (Native)',
                      style: TextStyle(
                          color: Color.fromRGBO(126, 126, 126, 1),
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ), Row(
                children:   const [
                    Text(
                      'English',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ), Text(
                      ' (Intermediate).',
                      style: TextStyle(
                          color: Color.fromRGBO(126, 126, 126, 1),
                          fontFamily: 'Cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
