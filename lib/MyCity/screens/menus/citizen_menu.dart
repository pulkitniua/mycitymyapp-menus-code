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

class CitizenMenu extends StatefulWidget {
  const CitizenMenu({super.key});

  @override
  State<CitizenMenu> createState() => _CitizenMenuState();
}

class _CitizenMenuState extends State<CitizenMenu> {
  final List<TextModel> _textModel = [
    TextModel(
      title: 'About the city',
      icon: null,
      sections: [
        'History',
        'Demographic Data',
      ],
    ),
    TextModel(
      title: 'Report 311 Civic Issues',
      icon: null,
      sections: [
        'Buildings & Construction',
        'Parking Related',
        'Encroachments',
        'Cleanliness & Garbage',
      ],
    ),
    TextModel(
      title: 'Apply for Citizen Services',
      icon: null,
      sections: [
        'Property Tax',
        'Building Plan Approval',
        'Fire NoC',
        'Birth & Death Certificates',
        'Solid Waste Management',
        'Desludging Request',
        'Pet Registration',
      ],
    ),
    TextModel(
      title: 'Utilities',
      icon: null,
      sections: [
        'Electricity',
        'Water & Sewerage',
        'Gas',
        'Mobile & Broadband',
        'Groceries & Needs',
      ],
    ),
    TextModel(
      title: 'Places',
      icon: null,
      sections: [
        'Healthcare Facilities',
        'Recreational Spots',
        'Fire Stations',
        'Police Stations',
        'Women & Children (Maternity & Anganwadi)',
        'Educational Institutes',
      ],
    ),
    TextModel(
      title: 'Parking and Navigation',
      icon: null,
      sections: [
        'Transit Points (Airport, Railway, Metro Stations,Bus Stands)',
        'Metro Tickrt Online',
        'Plan Your Journey',
        'Daily Traffic Advisory'
            'Parking Spots & Availability',
      ],
    ),
    TextModel(
      title: 'Conveniences',
      icon: null,
      sections: [
        'Public Toilets & Water ATMs',
        'Eat-Out',
        'Wi-Fi Zones',
        'Banks & ATMs',
        'Rent a bike',
        'Demographic Data',
      ],
    ),
    TextModel(
      title: 'Enquire and Participate',
      icon: null,
      sections: [
        'FAQ',
        'Municipal Budgets',
        'City News',
        'Participate in Surveys',
        'RTI',
      ],
    ),
    TextModel(
      title: 'Citizen Analytics',
      icon: null,
      sections: [
        'No. of Users & App downloads',
        'Service wise applications',
        'Service wise applications serviced',
        'Avg. Delivery/Resolution time (Days)',
        'No. of Calls to Helpline',
        'Service-wise revenue Generated',
      ],
    ),
    TextModel(
      title: 'Know Your Government',
      icon: null,
      sections: [
        'Know Your MLA',
        'State Government Schemes/Notifications',
        'Know Your Mayor & Councilors',
        'Municipal Notofications',
        'Electricity Board Zonal Offices',
        'Water Board Zonal Offices',
        'Transport Zonal Offices',
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
          title: isCalender ? 'Calender' : 'Business Menu',
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
