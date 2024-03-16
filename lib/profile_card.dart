import 'package:flutter/material.dart';
import 'package:flutter_profile_page_ui_design/custom_widgets.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({this.profileCardText = 'Notifications', Key? key})
      : super(key: key);

  final String profileCardText;

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return CFlex(
      direction: Axis.horizontal,
      spacing: 0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CFlexSizedBox(
          height: sHeight * 0.06,
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xfff3f4f6),
                borderRadius: BorderRadius.circular(20)),
            child: CFlex(
              direction: Axis.horizontal,
              spacing: 90.65625,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CFlexSizedBox(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: sWidth * 0.05,
                      right: sWidth * 0.05,
                      top: 0,
                      bottom: 0,
                    ),
                    child: CFlex(
                      direction: Axis.horizontal,
                      spacing: 90.65625,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CFlexSizedBox(
                          width: null,
                          height: null,
                          child: Text(
                            profileCardText,
                            style: const TextStyle(
                              color: Color(0xff666c8e),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const CFlexSizedBox(
                          width: null,
                          height: null,
                          child: Icon(
                            IconData(
                              61262,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true,
                            ),
                            color: Color(0xff000000),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
