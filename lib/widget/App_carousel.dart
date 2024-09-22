// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:notes_app/core/Extention/num.dart';
// import 'package:notes_app/core/Extention/string.dart';
// import 'package:notes_app/core/utils/colors.dart';
//
// class AppCarousel extends StatefulWidget {
//   const AppCarousel({super.key, required this.images});
//
//   final List<String> images;
//
//   @override
//   State<AppCarousel> createState() => _AppCarouselState();
// }
//
// class _AppCarouselState extends State<AppCarousel> {
//
//   int currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20,left: 14,right: 14),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(16.radius),
//         child: Stack(
//           children: [
//             CarouselSlider(
//               items: [
//                 ...widget.images.map((e) {
//                  final isSelected = widget.images.indexOf(e) == currentIndex;
//                   return Image.network(e,
//             fit: BoxFit.fill,
//             width: double.infinity,
//                   );
//
//                 }).toList()
//                   ],
//               options: CarouselOptions(
//                 height: 130.height,
//                 viewportFraction: 1,
//                 enableInfiniteScroll: false,
//                 onPageChanged: (index, _) => setState( () => currentIndex = index),
//               ),
//             ),
//             Positioned(
//               bottom: 8,
//               left: 0,
//               right: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: widget.images.map((e) {
//                   final isSelected = widget.images.indexOf(e) == currentIndex;
//                   return Container(
//                     width: (isSelected ? 30 : 10).width,
//                     height: 10.height,
//                     margin: EdgeInsets.symmetric(horizontal: 3.width),
//                     decoration: BoxDecoration(
//                         color: isSelected ?  AppColors.primary : AppColors.grey,
//                         shape: isSelected ? BoxShape.rectangle : BoxShape.circle,
//                       borderRadius: isSelected ? BorderRadius.circular(12) : null,
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
