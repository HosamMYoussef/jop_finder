import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jop_finder/Screens/Job_details.dart';
import 'package:provider/provider.dart';

import '../models/Jops.dart';
import '../models/category_model.dart';
import 'notfications.dart';

class Bookmarks extends StatelessWidget {
  static const routeName = './Bookmark';
  List<bool> checks = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    final jopss = Provider.of<Jops>(context).favoritesItem;
    // final jopss = jopData.favoritesItem;

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
            padding: EdgeInsets.only(left: 21.0, top: 17),
            child: Text(
              'Saved Jobs',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 165 / 199,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: jopss.length,
                    itemBuilder: (context, index) {
                      return ChangeNotifierProvider(
                        create: (context) => jopss[index],
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                JopDetails.routeName,
                                arguments: jopss[index]);
                          },
                          child: Container(
                            height: 199,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0.0),
                                    child: Image.asset(jopss[index].image),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    jopss[index].jopTitle,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    jopss[index].companyName,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(126, 126, 126, 1),
                                        fontSize: 14,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    jopss[index].salary,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    jopss[index].date,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(126, 126, 126, 1),
                                        fontSize: 12,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    },
                  )))
        ]));
  }
}
