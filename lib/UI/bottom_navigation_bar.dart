import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.active,
    this.homeTap,
    this.scheduleTap,
    this.chatTap,
    this.profileTap,
  });

  final GestureTapCallback? homeTap;
  final GestureTapCallback? scheduleTap;
  final GestureTapCallback? chatTap;
  final GestureTapCallback? profileTap;
  final int active;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width,
        height: height * .102,
        decoration: const BoxDecoration(
          color:Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: homeTap,
              child: itemView(
                  width: width,
                  context: context,
                  selected: 0,
                  activeIcon: 'assets/svgs/home.svg',
                  label: "Home"),
            ),
            InkWell(
              onTap: scheduleTap,
              child: itemView(
                  width: width,
                  context: context,
                  selected: 1,
                  activeIcon: 'assets/svgs/schedule.svg',
                  label: "Schedule"),
            ),

            InkWell(
              onTap: chatTap,
              child: itemView(
                  width: width,
                  context: context,
                  selected: 2,
                  activeIcon: 'assets/svgs/chat.svg',
                  label: "Chat"),
            ),
            InkWell(
                onTap: profileTap,
                child: itemView(
                    width: width,
                    context: context,
                    selected: 3,
                    activeIcon: 'assets/svgs/profile.svg',
                    label: "Profile")),
          ],
        ),
      ),
    );
  }

  Widget itemView(
      {required double width,
        required int selected,
        required BuildContext context,
        required String activeIcon,
        required String label}) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      constraints: const BoxConstraints(minWidth: 60),
      child: Container(
        decoration: BoxDecoration(
            color: active == selected
                ?Colors.green.withOpacity(.15)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12)),
        padding: active == selected
            ? const EdgeInsets.fromLTRB(10,10,10,10)
            : EdgeInsets.zero,
        child: Row(
          children: [
            SvgPicture.asset(
               activeIcon ,
              width:30,
              height: 30,
              colorFilter:
               ColorFilter.mode(active == selected?Colors.green:Colors.grey, BlendMode.srcIn),
            ),
            if (active == selected) ...[
              SizedBox(
                width:  width * 0.01,
              ),
              Text(
                 label,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  color:active==selected? Colors.green:Colors.grey
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
