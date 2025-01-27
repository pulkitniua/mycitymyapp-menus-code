import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/config/base_config.dart';

class BottomNav extends StatelessWidget {
  final VoidCallback? onEmergencyTap; // Emergency screen callback
  final VoidCallback? onHomeTap; // Home screen callback
  final VoidCallback? onGridTap; // Grid screen callback

  const BottomNav({
    super.key,
    this.onEmergencyTap,
    this.onHomeTap,
    this.onGridTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: BaseConfig.mainBackgroundColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(width: 2, color: Colors.indigo),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            BottomNavigationBar(
              backgroundColor: BaseConfig.mainBackgroundColor,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                    child: Image.asset(
                      BaseConfig.sosIcon,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  label: 'Emergency',
                ),
                const BottomNavigationBarItem(
                  icon: SizedBox(),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                    child: Image.asset(
                      BaseConfig.homeIcon,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  label: 'Home',
                ),
              ],
              onTap: (index) {
                // Handle all three cases for Emergency, Grid, and Home
                switch (index) {
                  case 0:
                    // Emergency icon tapped
                    if (onEmergencyTap != null) {
                      onEmergencyTap!(); // Trigger Emergency action
                    }
                    break;
                  case 1:
                    // navigate to next screen when grid icon is clicked
                    if (onGridTap != null) onGridTap!();
                    break;
                  case 2:
                    // Home icon tapped
                    if (onHomeTap != null) onHomeTap!(); // Trigger Home action
                    break;
                }
              },
            ),
            Positioned.fill(
              top: 12,
              child: Align(
                alignment: Alignment.topCenter,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    onTap: () {
                      if (onGridTap != null) {
                        onGridTap!(); // Trigger Grid icon action
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50.r),
                        border: Border.all(width: 2, color: Colors.indigo),
                      ),
                      child: Image.asset(
                        BaseConfig.gridIcon,
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
