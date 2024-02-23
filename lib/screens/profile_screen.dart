import 'package:educ8/screens/categories_screen.dart';
import 'package:educ8/screens/home_screen.dart';
import 'package:educ8/screens/lecture_screen.dart';
import 'package:educ8/screens/projects_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF547CAB), Color(0xFF8BC1FF)],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              leading: const Icon(Icons.arrow_back_ios_new_rounded),
              title: Text(
                'Raunak Jha',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              actions: [
                const Icon(Icons.star_outline_rounded),
                SizedBox(
                  width: 10.w,
                )
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 88,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF8F8F8),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFEDEDED)),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(Icons.boy),
                                      Text(
                                        '1,512',
                                        style: TextStyle(
                                          color: const Color(0xFF363636),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Students',
                                  style: TextStyle(
                                    color: const Color(0xFF838287),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 88,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF8F8F8),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFEDEDED)),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(Icons.star_border_rounded),
                                      Text(
                                        '4.5/5',
                                        style: TextStyle(
                                          color: const Color(0xFF363636),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Reviews',
                                  style: TextStyle(
                                    color: const Color(0xFF838287),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 120.h,
                ),
                Center(
                  child: Container(
                    width: 130.w,
                    height: 130.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        // side: BorderSide(
                        //   width: 3.25.w,
                        //   strokeAlign: BorderSide.strokeAlignOutside,
                        //   color: Colors.white,
                        // ),
                        borderRadius: BorderRadius.circular(75.r),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/raunakprofile.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Raunak Jha',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Product Designer/Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF78787A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialMediaTile(imgUrl: 'assets/images/facebookb.png'),
                    SocialMediaTile(imgUrl: 'assets/images/linkedin.png'),
                    SocialMediaTile(imgUrl: 'assets/images/dribble.png'),
                    SocialMediaTile(imgUrl: 'assets/images/insta.png'),
                    SocialMediaTile(imgUrl: 'assets/images/youtube.png'),
                    SocialMediaTile(imgUrl: 'assets/images/link.png'),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 122.w,
                      height: 40.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE8ECF9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFE3E3E3),
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'About me',
                          style: TextStyle(
                            color: const Color(0xFF547CAB),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 122.w,
                      height: 40.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE8ECF9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFE3E3E3),
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Content',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 122.w,
                      height: 40.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE8ECF9),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFE3E3E3),
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 366.w,
                  height: 115.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFE3E3E3)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  padding: EdgeInsets.all(5.h),
                  child: Text(
                    'Meet Raunak, a talented freelancer providing digital services to clients all over the world. With over 5 years of experience in the industry, John has developed a deep understanding of what it takes to help businesses succeed online.',
                    style: TextStyle(
                      color: const Color(0xFF373737),
                      fontSize: 15.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      // height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'I can help with',
                  style: TextStyle(
                    color: const Color(0xFF353539),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  child: const ProfileTile(title: 'Projects'),
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProjectsScreen();
                      }));
                    });
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  child: const ProfileTile(title: 'Services'),
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CategoriesScreen();
                      }));
                    });
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  child: const ProfileTile(title: 'Lectures'),
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LectureScreen();
                      }));
                    });
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity.w,
                  height: 48.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF547CAB), Color(0xFF8BC1FF)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Connect Creator',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String title;
  const ProfileTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 40.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFF9FAFC),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.w,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: const Color(0xFFE3E3E3),
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ));
  }
}

class SocialMediaTile extends StatelessWidget {
  final String imgUrl;
  const SocialMediaTile({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          color: const Color(0xFFF9FAFC),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.62.w,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: const Color(0xFFE3E3E3),
            ),
            borderRadius: BorderRadius.circular(2.50.r),
          ),
        ),
        child: Image.asset(imgUrl));
  }
}
