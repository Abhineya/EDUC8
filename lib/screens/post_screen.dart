import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyFeedCard(
                title: 'Raunak Jha',
                imageUrl: 'assets/images/raunakpost.png',
                profileimageUrl: 'assets/images/raunak.png',
              ),
              SizedBox(
                height: 20.h,
              ),
              const MyFeedCard(
                title: 'Apurva Ambulkar',
                imageUrl: 'assets/images/apurvapost.png',
                profileimageUrl: 'assets/images/apurva.png',
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFeedCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String profileimageUrl;

  const MyFeedCard(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.profileimageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 345,
      decoration: ShapeDecoration(
        color: const Color(0xFFEBEBEB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 22.5.r,
                  child: Image.asset(profileimageUrl),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xFF363636),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.view_array_rounded)
              ],
            ),
          ),
          SizedBox(
            width: 382.w,
            height: 233.h,
            child: Image.asset(imageUrl),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.thumb_up_outlined,
                      color: const Color(0xff557DAB),
                      size: 24.h,
                    ),
                    Text(
                      'Like',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF547CAB),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.comment_outlined,
                      color: const Color(0xff557DAB),
                      size: 24.h,
                    ),
                    Text(
                      'Comment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF547CAB),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      color: const Color(0xff557DAB),
                      size: 24.h,
                    ),
                    Text(
                      'Review',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF547CAB),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.share,
                      color: const Color(0xff557DAB),
                      size: 24.h,
                    ),
                    Text(
                      'Share',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF547CAB),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
