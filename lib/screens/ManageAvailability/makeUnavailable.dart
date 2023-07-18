import 'package:eventually_vendor/constants/icons.dart';
import 'package:eventually_vendor/widget/button.dart';
import 'package:eventually_vendor/widget/manageAvailability/text.dart';
import 'package:flutter/material.dart';
import 'package:eventually_vendor/widget/manageAvailability/heading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/font.dart';
import '../../widget/manageAvailability/dropDownField.dart';

class makeUnavailable extends StatefulWidget {
  const makeUnavailable({super.key});

  @override
  State<makeUnavailable> createState() => _makeUnavailableState();
}

class _makeUnavailableState extends State<makeUnavailable> {
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    int currentMonth = today.month;

    int currentYear = today.year;

    Map<int, String> weekdays = {
      1: 'Jan',
      2: 'Feb',
      3: 'March',
      4: 'April',
      5: 'May',
      6: 'June',
      7: 'July',
      8: 'Aug',
      9: 'Sept',
      10: 'Oct',
      11: 'Nov',
      12: 'Dec',
    };

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading(title: 'Make Unavailable'),
            Row(
              children: [
                text(
                  title: '${weekdays[currentMonth]} ${today.day}, $currentYear',
                  fontSize: Get.width * 0.05,
                  fontWeight: AppFonts.bold,
                  fontColor: AppColors.grey,
                ),
                SvgPicture.asset(AppIcons.calendar),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: Get.height * 0.05),
              child: text(
                title: 'Time Duration',
                fontSize: Get.width * 0.04,
                fontWeight: AppFonts.regular,
                fontColor: AppColors.grey,
              ),
            ),
            dropdownField(hintText: 'Start Time', icon: AppIcons.startFlag),
            dropdownField(hintText: 'End Time', icon: AppIcons.endFlag),
            Center(
                child: button(
                    label: 'Unavailable', onpressed: () {}, borderRadius: 10.0))
          ],
        ),
      ),
    ));
  }
}
