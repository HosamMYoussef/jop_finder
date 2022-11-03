import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jop_finder/models/category_model.dart';
import 'package:provider/provider.dart';

import 'Job_details.dart';
class JopItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     final jopss = Provider.of<JopModel>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(JopDetails.routeName,
            arguments: jopss);
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
                        jopss.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 12),
                          child: Text(
                            jopss.companyName,
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
                            jopss.jopTitle,
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
                        jopss.date,
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
                        jopss.salary,
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
                  icon: jopss.isFavorited
                      ? SvgPicture.asset(
                          'assets/images/bookmarkfil.svg',
                        )
                      : SvgPicture.asset(
                          'assets/images/bookmarkoutline.svg',
                        ),
                  onPressed: () {
                    jopss.toogleFavoriteStatus();

                  },
                ))
          ],
        ),
      ),
    );
  }
}
