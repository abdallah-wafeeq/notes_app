import 'package:flutter/material.dart';
import 'package:notes_app/core/Extention/num.dart';
import '../core/utils/colors.dart';
import 'app_text.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
     this.label,
    required this.hint,
    this.validator,
    this.secure = false,
    this.leading,
    this.maxLines = 1,

  }) : super(key: key);

  final String? label;
  final String hint;
  final String? Function(String? v)? validator;
  final bool secure;
  final Widget? leading;
  final int? maxLines;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool secure = false;

  @override
  void initState() {
    secure = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)...[
          AppText(
            title: widget.label!,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 8),
        ],
        TextFormField(
          cursorColor: AppColors.primary,
          validator: widget.validator,
          obscureText: secure,
          obscuringCharacter: '*',
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.leading,
            fillColor: AppColors.lightGrey,
            filled: true,
            suffixIcon: widget.secure ? InkWell(
              onTap: () => setState(() => secure = !secure),
            ) : SizedBox(),
            hintStyle: TextStyle(
              color: AppColors.darkGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: widget.maxLines == 1 ? 0 : 14.height,
            ),
            enabledBorder: getBorder(color: Colors.transparent),
            focusedBorder: getBorder(color: AppColors.grey),
            errorBorder: getBorder(color: AppColors.red),
            focusedErrorBorder: getBorder(color: AppColors.red),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder getBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}