import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jop_finder/Screens/controlView.dart';
import 'package:jop_finder/constants.dart';
import 'package:jop_finder/models/category_model.dart';

import 'Home_view.dart';
import 'notfications.dart';

class Categories extends StatefulWidget {
  static const routeName = './Categories-screen';

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isTap = false;
  List<bool> check = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  int selectedCard = -1;

  final List<CategoriesModel> category = [
    CategoriesModel(
      name: 'Graphic Design',
      image: 'assets/images/image1.png',
    ),
    CategoriesModel(
      name: 'Teaching',
      image: 'assets/images/image2.png',
    ),
    CategoriesModel(
      name: 'Marketing',
      image: 'assets/images/image3.png',
    ),
    CategoriesModel(
      name: 'Programming',
      image: 'assets/images/image4.png',
    ),
    CategoriesModel(
      name: 'Medical',
      image: 'assets/images/image5.png',
    ),
    CategoriesModel(
      name: 'Photography',
      image: 'assets/images/image6.png',
    ),
    CategoriesModel(
      name: 'Data Entry',
      image: 'assets/images/image7.png',
    ),
    CategoriesModel(
      name: 'Engineering',
      image: 'assets/images/image8.png',
    ),
    CategoriesModel(
      name: 'Translation',
      image: 'assets/images/image9.png',
    ),
    CategoriesModel(
      name: 'Writing',
      image: 'assets/images/image10.png',
    ),
    CategoriesModel(
      name: 'Banking',
      image: 'assets/images/image11.png',
    ),
    CategoriesModel(
      name: 'Analysis',
      image: 'assets/images/image12.png',
    ),
  ];

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
            padding: EdgeInsets.only(left: 21.0, top: 10),
            child: Text(
              'what job categories are you \n interested in ?',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 18),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 114 / 124,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: category.length,
                itemBuilder: ((context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          if (check[index]) {
                            check[index] = false;
                          } else {
                            check[index] = true;
                          }
                          ;
                        });
                      },
                      child: Stack(children: [
                        Container(
                          height: 124,
                          width: 114,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: check[index] ? pColor : Colors.white,
                                  width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(category[index].image),
                              Text(
                                category[index].name,
                                style: const TextStyle(
                                    color: sColor,
                                    fontFamily: 'Cairo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 95,
                            left: 86,
                            child: Opacity(
                              opacity: check[index] ? 1 : 0,
                              child: Container(
                                height: 26,
                                width: 27,
                                decoration: const BoxDecoration(
                                    color: pColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: SvgPicture.asset(
                                    'assets/images/s7.svg',
                                    height: 2,
                                    width: 2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ))
                      ]),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 76.0, bottom: 20),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 52,
              width: 238,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ControlView.routeName);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: pColor,
                  elevation: 0,
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
