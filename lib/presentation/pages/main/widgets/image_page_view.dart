import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/theme.dart';

class ImagePageBuilder extends StatefulWidget {
  const ImagePageBuilder({
    super.key,
    required this.colors,
    required this.imageList,
  });

  final CustomColorSet colors;
  final List<String?> imageList;

  @override
  State<ImagePageBuilder> createState() => _ImagePageBuilderState();
}

class _ImagePageBuilderState extends State<ImagePageBuilder> {
  PageController pageController = PageController(initialPage: 0);
  late int pageIndex;
  @override
  void initState() {
    pageIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 257.h,
      width: double.infinity.w,
      margin: EdgeInsets.only(top: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: widget.imageList.length,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: widget.imageList[index] ?? "",
                    imageBuilder: (context, imageProvider) => Container(
                      height: 257.h,
                      width: double.infinity.w,
                      margin: EdgeInsets.only(bottom: 15.h, top: 5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.h),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: imageProvider,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Container(
                        height: 257.h,
                        width: double.infinity.w,
                        margin: EdgeInsets.only(bottom: 15.h, top: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.h),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  );
                }),
          ),
          Positioned.fill(
            bottom: 22.h,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: BoxDecoration(
                      color: widget.colors.white,
                      borderRadius: BorderRadius.circular(5.h)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < widget.imageList.length; i++)
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: EdgeInsets.only(right: 5.w),
                          height: 7.h,
                          width: 7.h,
                          decoration: BoxDecoration(
                              color: pageIndex == i
                                  ? widget.colors.black
                                  : widget.colors.grey,
                              borderRadius: BorderRadius.circular(3.5.h)),
                        )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class PolygonIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  const PolygonIcon({super.key, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 10.h,
      width: height ?? 10.w,
      decoration: ShapeDecoration(
        shape: const StarBorder.polygon(sides: 6),
        color: color ?? Colors.black,
      ),
      // color: colors.lightGrey
    );
  }
}
