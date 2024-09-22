import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExtention on num{

  double get height {
    return this.h;
  }

  double get width {
    return this.w;
  }

  double get font {
    return this.sp;
  }

  double get radius {
    return this.r;
  }
}

