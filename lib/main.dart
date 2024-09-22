import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/views/add_note/view.dart';
import 'core/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     designSize: Size(414, 896),
     minTextAdapt: true,
     splitScreenMode: true,
     child: MaterialApp(
      home: AddNoteView(),
     theme: ThemeData(
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
        color: AppColors.white,
        elevation: 0.0,
        shadowColor: AppColors.white,
        scrolledUnderElevation: 0,
      )
     ),
     debugShowCheckedModeBanner: false,
       builder: (context, child) => GestureDetector(
         onTap: FocusManager.instance.primaryFocus?.unfocus,
             child: child!,
       ),
     ),
    );
  }
}
