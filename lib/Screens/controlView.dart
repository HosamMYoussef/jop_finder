import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jop_finder/Screens/profile.dart';

import '../models/category_model.dart';
import 'Home_view.dart';
import 'bookmarks_view.dart';

class ControlView extends StatefulWidget {
  const ControlView({Key? key}) : super(key: key);
  static const routeName = './ControllView';
  @override
  State<ControlView> createState() => _ControlViewState();
}

final List<JopModel> jops = [
  JopModel(
      companyName: 'Dell Company',
      image: 'assets/images/dell.png',
      jopTitle: 'Juniour UI/UX Designer',
      salary: '\$7k-8k',
      date: '2 Days ago',
      location: 'Remotly',
      postion: 'Full Time',
      describtion:
          'The core responsibility of this role is to lead in \nthe areas of experience architecture, automation, \n and optimization. Additional responsibilities include\n creation of user journeys and personas, wireframing \nand designs for all products and services .',
      requirment:
          '	• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'),
  JopModel(
      companyName: 'Lidl Company',
      image: 'assets/images/lidl.png',
      jopTitle: 'UI/UX Writer Internship',
      salary: 'Competitve',
      date: '5 Days ago',
      location: 'Iceland',
      postion: 'Full Time',
      describtion:
          'The core responsibility of this role is to lead in \nthe areas of experience architecture, automation, \n and optimization. Additional responsibilities include\n creation of user journeys and personas, wireframing \nand designs for all products and services .',
      requirment:
          '	• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'),
  JopModel(
      companyName: 'LionHead Company',
      image: 'assets/images/lion.png',
      jopTitle: 'Senior UX Writer',
      salary: '\$10k-15k',
      date: '5 Days ago',
      location: 'Remotly',
      postion: 'Part Time',
      describtion:
          'The core responsibility of this role is to lead in \nthe areas of experience architecture, automation, \n and optimization. Additional responsibilities include\n creation of user journeys and personas, wireframing \nand designs for all products and services .',
      requirment:
          '	• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'),
  JopModel(
      companyName: 'Huawei Company',
      image: 'assets/images/huawai.png',
      jopTitle: 'Juniour UI/UX Designer',
      salary: 'Competitve',
      date: '1 Days ago',
      location: 'England',
      postion: 'Full Time',
      describtion:
          'The core responsibility of this role is to lead in \nthe areas of experience architecture, automation, \n and optimization. Additional responsibilities include\n creation of user journeys and personas, wireframing \nand designs for all products and services .',
      requirment:
          '	• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'),
  JopModel(
      companyName: 'Intel Company',
      image: 'assets/images/intel.png',
      jopTitle: 'Senior UX Designer',
      salary: '\$15k',
      date: '2 Weeks ago',
      location: 'Germany',
      postion: 'Part Time',
      describtion:
          'The core responsibility of this role is to lead in \nthe areas of experience architecture, automation, \n and optimization. Additional responsibilities include\n creation of user journeys and personas, wireframing \nand designs for all products and services .',
      requirment:
          '	• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'),
  JopModel(
      companyName: 'Apple Company',
      image: 'assets/images/apple.png',
      jopTitle: 'Data Entry Clerk',
      salary: '\$7k',
      date: '1 Weeks ago',
      location: 'Remotly',
      postion: 'Part Time',
      describtion:
          'The core responsibility of this role is to lead in \nthe areas of experience architecture, automation, \n and optimization. Additional responsibilities include\n creation of user journeys and personas, wireframing \nand designs for all products and services .',
      requirment:
          '• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'),
];

class _ControlViewState extends State<ControlView> {
  late List<Widget> _pages;
  void initState() {
    // TODO: implement initState
    _pages = [
      HomeView(jops),
      Bookmarks(jops),
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
    return Scaffold(
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
    );
  }
}
