import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedButton extends StatefulWidget {
  final Widget Function(BuildContext) pageBuilder;

  final Color bgColor;
  final Color txtColor;
  final String text;
  final double f_size;

  const AnimatedButton({
    super.key,
    required this.pageBuilder,
    this.bgColor = const Color.fromARGB(255, 125, 50, 245),
    this.txtColor = Colors.white,
    this.text = 'Button',
    this.f_size = 20,
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _ispressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _ispressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _ispressed = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: widget.pageBuilder));
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: double.infinity,
        height: 53.h,
        decoration: BoxDecoration(
          color: _ispressed ? Colors.white : widget.bgColor,
          boxShadow: [
            if (_ispressed)
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
          ],
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: widget.f_size.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              color: _ispressed ? Colors.black : widget.txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
