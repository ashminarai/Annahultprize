import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/core/logger/logger.dart';
import 'package:anna_hult/modules/seller/features/seller_homepage/widget/analytics_widget.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dummy_data.dart';

class SellerHomepageController extends GetxController {
  CarouselController carouselController = CarouselController();

  Widget analyticsList() {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return AnalyticsWidget(
            color: data[index].color,
            icon: data[index].icon,
            averageNum: data[index].averageNum,
            givenNumber: data[index].givenNumber,
            title: data[index].title,
          );
        },
      ),
    );
  }

  // Widget analyticsList() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "Analytics",
  //         style: GoogleFonts.montserrat(
  //           textStyle: TextStyle(
  //             fontSize: 20.0,
  //             fontWeight: FontWeight.w500,
  //           ),
  //         ),
  //       ),
  //       mHeightSpan,
  //       //Log.debug("Controller", "line 46 is clear"),
  //       Expanded(
  //         child: ListView.builder(
  //           scrollDirection: Axis.horizontal,
  //           itemCount: data.length,
  //           itemBuilder: (context, index) {
  //             return AnalyticsWidget(
  //               color: data[index].color,
  //               icon: data[index].icon,
  //               averageNum: data[index].averageNum,
  //               givenNumber: data[index].givenNumber,
  //               title: data[index].title,
  //             );
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
