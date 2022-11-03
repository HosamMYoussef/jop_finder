import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jop_finder/Screens/profile.dart';
import 'package:provider/provider.dart';

import '../models/Jops.dart';
import '../models/category_model.dart';
import 'Home_view.dart';
import 'bookmarks_view.dart';

class ControlView extends StatefulWidget {
  const ControlView({Key? key}) : super(key: key);
  static const routeName = './ControllView';

  @override
  State<ControlView> createState() => _ControlViewState();
}
class _ControlViewState extends State<ControlView> {
  late List<Widget> _pages;
  void initState() {
    _pages = [
      HomeView(),
      Bookmarks(),
      const Profile(),
    ];
    super.initState();
  }

  int _selectPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
      final List<int> a =[0,1,2,3,4,5,];

    final jopData = Provider.of<Jops>(context);
    final jopss = jopData.jops;
    return ChangeNotifierProvider(
    create:(context)=> jopss[6],
      child: Scaffold(
        body: _pages[_selectPageIndex],
        bottomNavigationBar: SizedBox(
          height: 50,
          child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              elevation: 0,
              currentIndex: _selectPageIndex,
              onTap: _selectPage,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/home.svg'),
                  label: '___',
                  activeIcon: SvgPicture.asset('assets/images/homefill.svg'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/bookmark.svg'),
                  label: '___',
                  activeIcon: SvgPicture.asset('assets/images/bookmarkfill.svg'),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/profile.svg'),
                  label: '___',
                  activeIcon: SvgPicture.asset('assets/images/profilefill.svg'),
                ),
              ]),
        ),
      ),
    );
  }
}
