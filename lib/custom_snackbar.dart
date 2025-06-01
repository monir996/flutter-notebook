import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//-------- Custom Stylish Flash Message (Stylish SnackBar) ----------
stylishSnackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomSnackBarContent(errorText: message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0
      )
  );
}


class CustomSnackBarContent extends StatelessWidget {
  const CustomSnackBarContent({super.key, required this.errorText});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            height: 90,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Color(0xFFC72C41),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Row(
              children: [
                const SizedBox(width: 48),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Oh snap!", style: TextStyle(fontSize: 18, color: Colors.white)),
                      const Spacer(),
                      Text(
                        errorText,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),

        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
            child: SvgPicture.asset(
              "assets/icons/bubbles.svg",
              height: 48,
              width: 40,
              colorFilter: ColorFilter.mode(Color(0xFF801336), BlendMode.srcIn),
            ),
          ),
        ),

        Positioned(
          top: -10,
          left: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset("assets/icons/fail.svg", height: 40),
                Positioned(
                    top: 10,
                    child: SvgPicture.asset("assets/icons/close.svg", height: 16)
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
