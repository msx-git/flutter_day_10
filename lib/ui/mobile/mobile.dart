import 'package:flutter/material.dart';
import 'package:flutter_day_10/generated/assets.dart';
import 'package:flutter_day_10/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(Assets.iconsMenu, width: 24.w),
                          Image.asset(Assets.imagesAlex, width: 28.w),
                        ],
                      ),
                    ),
                  ),
                  10.height,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Text(
                        'MORENT',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 24.sp,
                          color: const Color(0xff3563E9),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  24.height,

                  /// Search Field
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffC3D4E9).withOpacity(0.4),
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Row(
                              children: [
                                24.width,
                                SvgPicture.asset(Assets.iconsSearch,
                                    width: 24.w, height: 24.h),
                                8.width,
                                Text(
                                  'Search something here',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      color: const Color((0xff90A3BF))),
                                )
                              ],
                            ),
                          ),
                        ),
                        16.width,
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffC3D4E9).withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: SvgPicture.asset(Assets.iconsFilter,
                              height: 24.h, width: 24.w),
                        )
                      ],
                    ),
                  ),
                  32.height
                ],
              ),
            ),
            32.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Image.asset(Assets.imagesCar),
            ),
            24.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Image.asset(Assets.imagesCars),
            ),
            32.height,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nissan GT - R',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 20.sp,
                      color: const Color(0xff1A202C),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Assets.iconsStars, width: 76.w),
                      8.width,
                      Text(
                        "440+ Reviewer",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12.sp,
                          color: const Color(0xff90A3BF),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  16.height,
                  Text(
                    'NISMO has become the embodiment of Nissan\'s outstanding performance, inspired by the most unforgiving proving ground, the "race track".',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      color: const Color(0xff90A3BF),
                    ),
                  ),
                  16.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Text(
                          ['data', 'Sport', 'Capacity', '2 Person'][i],
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            color:
                                i.isOdd ? const Color(0xff1A202C) : const Color(0xff90A3BF),
                            fontWeight:
                                i.isOdd ? FontWeight.w600 : FontWeight.w500,
                          ),
                        )
                    ],
                  ),
                  16.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Text(
                          ['Steering', 'Manual', 'Gasoline', '70 L'][i],
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            color:
                                i.isOdd ? const Color(0xff1A202C) : const Color(0xff90A3BF),
                            fontWeight:
                                i.isOdd ? FontWeight.w600 : FontWeight.w500,
                          ),
                        )
                    ],
                  ),
                  32.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '\$80.00/',
                              style: TextStyle(
                                color: const Color(0xff1A202C),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text: 'day',
                                  style: TextStyle(
                                    color: const Color(0xff90A3Bf)
                                        .withOpacity(0.5),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          4.height,
                          Text(
                            '\$100.00',
                            style: TextStyle(
                                color: const Color(0xff90A3Bf).withOpacity(0.5),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff3563E9),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.w, vertical: 16.h),
                        alignment: Alignment.center,
                        child: Text(
                          'Rent Now',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            32.height,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          color: const Color(0xff1A202C),
                        ),
                      ),
                      12.width,
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 6.h),
                        decoration: BoxDecoration(
                            color: const Color(0xff3563E9),
                            borderRadius: BorderRadius.circular(4.r)),
                        child: const Text(
                          '13',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  24.height,

                  /// User 1
                  Row(
                    children: [
                      Image.asset(Assets.imagesAlex, width: 44.w, height: 44.h),
                      8.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Alex Stanton',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'CEO at Bukalapak',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12.sp,
                              color: const Color(0xff90A3BF),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '21 July 2022',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12.sp,
                              color: const Color(0xff90A3BF),
                            ),
                          ),
                          SvgPicture.asset(
                            Assets.iconsStars,
                            width: 76.w,
                          )
                        ],
                      )
                    ],
                  ),
                  16.height,
                  Padding(
                    padding: EdgeInsets.only(left: 52.w),
                    child: Text(
                      "We are very happy with the service from the MORENT App. Morent has a low price . . . ",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12.sp,
                        color: const Color(0xff90A3BF),
                      ),
                    ),
                  ),
                  20.height,

                  /// User 2
                  Row(
                    children: [
                      Image.asset(Assets.imagesSkylar,
                          width: 44.w, height: 44.h),
                      8.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Skylar Dias',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16.sp,
                              color: const Color(0xff1A202C),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'CEO at Amazon',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12.sp,
                              color: const Color(0xff90A3BF),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '21 July 2022',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12.sp,
                              color: const Color(0xff90A3BF),
                            ),
                          ),
                          SvgPicture.asset(
                            Assets.iconsStars,
                            width: 76.w,
                          )
                        ],
                      )
                    ],
                  ),
                  16.height,
                  Padding(
                    padding: EdgeInsets.only(left: 52.w),
                    child: Text(
                      "We are greatly helped by the services of the MORENT Application. Morent has a low . . .",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12.sp,
                        color: const Color(0xff90A3BF),
                      ),
                    ),
                  ),
                  34.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Show All",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12.sp,
                          color: const Color(0xff90A3BF),
                        ),
                      ),
                      8.width,
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff90A3BF),
                      )
                    ],
                  )
                ],
              ),
            ),
            32.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent cars',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      color: const Color(0xff90A3BF),
                    ),
                  ),
                  Text(
                    'View All',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      color: const Color(0xff90A3BF),
                    ),
                  ),
                ],
              ),
            ),
            20.height,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  12.width,
                  Image.asset(Assets.carsKoenigsegg,
                      width: 240.w, height: 286.h),
                  Image.asset(Assets.carsNissan, width: 240.w, height: 286.h),
                  Image.asset(Assets.carsRolls, width: 240.w, height: 286.h),
                  12.width,
                ],
              ),
            ),
            32.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommendation cars',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      color: const Color(0xff90A3BF),
                    ),
                  ),
                  Text(
                    'View All',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      color: const Color(0xff90A3BF),
                    ),
                  ),
                ],
              ),
            ),
            20.height,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  12.width,
                  Image.asset(Assets.carsRush, width: 240.w, height: 286.h),
                  Image.asset(Assets.carsCr, width: 240.w, height: 286.h),
                  Image.asset(Assets.carsTerios, width: 240.w, height: 286.h),
                  12.width,
                ],
              ),
            ),
            48.height,
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "MORENT",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 24.sp,
                  color: const Color(0xff3563E9),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            16.height,
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 135.w),
              child: Text(
                "Our vision is to provide convenience and help increase your sales business.",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12.sp,
                  color: const Color(0xff90A3BF),
                ),
              ),
            ),
            48.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              [
                                "About",
                                "How it works",
                                "Featured",
                                "Partnership",
                                "Bussiness Relation",
                              ][i],
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: i == 0
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                                  fontSize: i == 0 ? 20.sp : 16.sp,
                                  color: i == 0
                                      ? const Color(0xff1A202C)
                                      : const Color(0xff90A3BF)),
                            ),
                            16.height
                          ],
                        ),
                    ],
                  ),
                  SizedBox(
                    width: 120.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < 5; i++)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                [
                                  "Socials",
                                  "Discord",
                                  "Instagram",
                                  "Twitter",
                                  "Facebook",
                                ][i],
                                style: GoogleFonts.plusJakartaSans(
                                    fontWeight: i == 0
                                        ? FontWeight.w700
                                        : FontWeight.w400,
                                    fontSize: i == 0 ? 20.sp : 16.sp,
                                    color: i == 0
                                        ? const Color(0xff1A202C)
                                        : const Color(0xff90A3BF)),
                              ),
                              16.height
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            48.height,
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < 5; i++)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          [
                            "Community",
                            "Events",
                            "Blog",
                            "Podcast",
                            "Invite a friend",
                          ][i],
                          style: GoogleFonts.plusJakartaSans(
                              fontWeight:
                                  i == 0 ? FontWeight.w700 : FontWeight.w400,
                              fontSize: i == 0 ? 20.sp : 16.sp,
                              color: i == 0
                                  ? const Color(0xff1A202C)
                                  : const Color(0xff90A3BF)),
                        ),
                        16.height
                      ],
                    ),
                ],
              ),
            ),
            48.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy & Policy",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      color: const Color(0xff1A202C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("Terms & Condition", style: GoogleFonts.plusJakartaSans(
                    fontSize: 12.sp,
                    color: const Color(0xff1A202C),
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
            ),
            32.height,
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text("©2022 MORENT. All rights reserved", style: GoogleFonts.plusJakartaSans(
                fontSize: 12.sp,
                color: const Color(0xff1A202C),
                fontWeight: FontWeight.w600,
              ),),
            ),
            24.height,
          ],
        ),
      ),
    );
  }
}
