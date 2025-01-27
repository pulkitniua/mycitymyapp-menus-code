import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobile_app/MyCity/screens/home/official_home/ulb_service_management/ulb_service_managment.dart';
import 'package:mobile_app/MyCity/widget/custom_expansion/expansion_icon_card.dart';

import 'package:mobile_app/MyCity/widget/header/city_header.dart';
import 'package:mobile_app/MyCity/screens/home/calender_home/calender_home.dart';
import 'package:mobile_app/routes/routes.dart';

class TextModels {
  String title;
  String? icon;
  IconData? iconData;
  List<String>? sections;
  bool isNew;

  TextModels({
    required this.title,
    this.icon,
    this.iconData,
    this.sections,
    this.isNew = false,
  });
}

class VisitorMenu extends StatefulWidget {
  const VisitorMenu({super.key});

  @override
  State<VisitorMenu> createState() => _VisitorMenuState();
}

class _VisitorMenuState extends State<VisitorMenu> {
  final List<TextModel> _textModel = [
    TextModel(
      title: 'About the city',
      icon: null,
      sections: [
        'History(Brief)',
        'Demographic Data',
      ],
    ),
    TextModel(
      title: 'Report Grievances',
      icon: null,
      sections: [
        'Public Transport Issues',
        'Report Theft/Lost & Found',
        'Accomodation Grievances',
      ],
    ),
    TextModel(
      title: 'Parking and Navigation',
      icon: null,
      sections: [
        'Travel Advisory',
        'Transit Points',
        'Fire NoC',
        'Plan Your Journey',
        'Tourist Transport Passes',
        'Rent a Bike',
        'Parking Availability',
      ],
    ),
    TextModel(
      title: 'FAQ & Enquiry',
      icon: null,
      sections: [
        'Virtual city assistant (Interactive Screens)',
        'Accessibility Assistance (for specially abled)',
        'General FAQs',
        'Sustainability Tips',
      ],
    ),
    TextModel(
      title: 'Important Places',
      icon: null,
      sections: [
        'Historical Spots/Monuments',
        'Museums',
        'Parks & Gardens',
        'Leisure & Entertainment (Cinema, Gaming arcade etc.)',
        'Signature Food Joints',
        'Markets & Shoppings',
      ],
    ),
    TextModel(
      title: 'Transit and Navigation',
      icon: null,
      sections: [
        'Transit Advisory',
        'Transit Points',
        'Plan Your Journey',
        'Plan Your Journey'
            'Parking Availability',
      ],
    ),
    TextModel(
      title: 'Bookings',
      icon: null,
      sections: [
        'Hotels & Lodging',
        'Monuments & Entry Passes',
        'Cultural Programmes & Exhibitions',
      ],
    ),
    TextModel(
      title: 'Conveniences',
      icon: null,
      sections: [
        'Public Toilets & Water ATMs',
        'Rent a Bike',
        'Wi-Fi Zones',
        'Banks & ATMs',
        'EV Charging Hubs',
      ],
    ),
    TextModel(
      title: 'Updates Hub',
      icon: null,
      sections: [
        'City News',
        'Exhibitions, Events & Concerts',
        'Disaster Preparedness Info',
      ],
    ),
    TextModel(
      title: 'Contact Us',
      icon: null,
      sections: [
        'Contact Local Tourist Offices',
        'Ask <Chatbot>',
        'FAQs',
        'City Helpline',
      ],
    ),
    TextModel(
      title: 'Tourist Info',
      icon: null,
      sections: [
        'Places to Visit',
        'Transit Points',
        'SOS Services',
        'Local Tourist Offices',
        'Women Safety'
      ],
    ),
  ];

  late List<RxBool> isExpanded;
  List<TextModel> filteredTextModel = [];
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    isExpanded = List.generate(_textModel.length, (index) => RxBool(false));
    filteredTextModel = _textModel;
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {
      final query = _searchController.text.toLowerCase();
      filteredTextModel = _textModel
          .where(
            (item) =>
                item.title.toLowerCase().contains(query) ||
                (item.sections?.any(
                      (section) => section.toLowerCase().contains(query),
                    ) ??
                    false),
          )
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  bool isCalender = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCityHeader(
          title: isCalender ? 'Calender' : 'Visitor Menu',
          isBackButton: isCalender,
          showBack: true,
          calenderOnPressed: () {
            setState(() {
              isCalender = !isCalender;
            });
          }),
      body: isCalender
          ? const CalenderHomeScreen()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Expanded(
                    child: filteredTextModel.isEmpty
                        ? Center(
                            child: Text(
                              'No results found',
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          )
                        : ListView.builder(
                            itemCount: filteredTextModel.length,
                            itemBuilder: (context, index) {
                              final item = filteredTextModel[index];
                              return ExpansionIconCard(
                                item: item,
                                isExpanded: isExpanded[index],
                                onExpansionTap: () {
                                  isExpanded[index].value =
                                      !isExpanded[index].value;
                                },
                                onItemTap: (section) {
                                  Get.toNamed(AppRoutes.EMP_LOGIN);
                                },
                              ).marginOnly(bottom: 10.h);
                            },
                          ),
                  ),
                ],
              ),
            ),
    );
  }
}
