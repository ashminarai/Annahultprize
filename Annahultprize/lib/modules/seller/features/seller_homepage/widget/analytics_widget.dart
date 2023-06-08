import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyticsWidget extends StatelessWidget {
  final Color color;
  final double averageNum;
  //final int goodsSold;
  final int givenNumber;
  final String title;
  final IconData icon;
  final bool time;

  AnalyticsWidget({
    this.color,
    this.averageNum,
    //this.goodsSold,
    this.givenNumber,
    this.title,
    this.icon,
    this.time = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: sPadding,
      height: 145.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.8),
            offset: Offset(0.0, 0.1),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                icon,
                size: 18.0,
                color: kPrimaryColorLight,
              ),
            ],
          ),
          Text(
            "${averageNum.toString()}%",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          time
              ? Text(
                  "${givenNumber.toString()} घण्टा",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                )
              : Text(
                  "${givenNumber.toString()}",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
          SizedBox(child: Divider(color: Colors.white)),
          Text(
            "$title",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
