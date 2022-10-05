import 'package:flutter/cupertino.dart';

import 'category_model.dart';

 class Jops with ChangeNotifier{
   
   List<JopModel> _jops =[
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
          '• Minimum 2+ years of experience in UI / UX design.\n• Experience designing personas and user journeys.\n• Proven experience as a web / mobile UI Designer,\n mand UX Designer.'), JopModel(
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

List<JopModel> get jops {
    return [..._jops];
    
  }

}