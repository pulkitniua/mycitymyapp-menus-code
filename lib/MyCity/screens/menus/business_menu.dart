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

class BusinessMenu extends StatefulWidget {
  const BusinessMenu({super.key});

  @override
  State<BusinessMenu> createState() => _BusinessMenuState();
}

class _BusinessMenuState extends State<BusinessMenu> {
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
      title: 'Event Spotlight',
      icon: null,
      sections: [
        'Investment Fairs',
        'Job Fairs',
        'Exhibitions',
      ],
    ),
    TextModel(
      title: 'Apply for Business Services & Permits (G2B)',
      icon: null,
      sections: [
        'Property Tax',
        'Building Plan Approval',
        'Fire NoC',
        'Trade License',
        'Advertisement',
        'Solid Waste Management',
        'Street Vending License',
        'Desludging Request',
        'Miscellaneous Payments/Challans',
      ],
    ),
    TextModel(
      title: 'Utilities & Related Services',
      icon: null,
      sections: ['Electricity', 'Gas', 'Water & Sewerage', 'Pay Your GST'],
    ),
    TextModel(
      title: 'Report 311 Civic Issues',
      icon: null,
      sections: [
        'Building & Construction',
        'Engineering Works',
        'Horticulture',
        'Parking Related',
        'Veterinary & Animal Nuisance',
        
      ],
    ),
    TextModel(
      title: 'Enroll as Service Provider',
      icon: null,
      sections: [
        'Utilities',
        'Mobile & Broadband',
        'Plan Your Journey',
        'Travel & Hotel Bookings'
        'Event Booking',
        'Cabs',
      ],
    ),
    TextModel(
      title: 'Authentication Services',
      icon: null,
      sections: [
        'Verify Property Details',
        'Verify Licenses & Permits',
        'Verify NOCs',
        'Verify Payment Status',
        
      ],
    ),
    TextModel(
      title: 'Business Analytics',
      icon: null,
      sections: [
        'Service wise applications',
        'Service wise applications serviced',
        'Avg Delivery Resolution time (Days)',
        'Sector-wise transactions',
        
      ],
    ),
    TextModel(
      title: 'Know Your Govt.',
      icon: null,
      sections: [
        'Know Your MLA',
        'Service wise applications',
        'State Government Schemes/Notifications',
        'Know Your Mayor/Councilors',
        'Trade Department',
        'Health Department',
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
