import 'package:flutter/material.dart';
import 'package:flutter_profile_page_ui_design/custom_widgets.dart';
import 'package:flutter_profile_page_ui_design/profile_card.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: sHeight * 0.02,
            horizontal: sWidth * 0.01,
          ),
          child: CFlex(
            direction: Axis.vertical,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: CFlex(
                  direction: Axis.vertical,
                  spacing: 15,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildProfile(sWidth, sHeight),
                    buildNotifications(sHeight),
                    const CFlexSizedBox(
                      width: double.infinity,
                      height: null,
                      child: ProfileCard(
                        profileCardText: 'Language',
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      height: null,
                      child: ProfileCard(
                        profileCardText: 'Change Password',
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      height: null,
                      child: ProfileCard(
                        profileCardText: 'Privacy',
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      height: null,
                      child: ProfileCard(
                        profileCardText: 'Terms & Conditions',
                      ),
                    ),
                    buildSignOut(sHeight, sWidth)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              child: greyIcon(sHeight, 58136),
            ),
            label: '',
            activeIcon: blueIcon(sHeight, 58137),
          ),
          BottomNavigationBarItem(
            icon: greyIcon(sHeight, 61056),
            label: '',
            activeIcon: blueIcon(sHeight, 62829),
          ),
          BottomNavigationBarItem(
            icon: greyIcon(sHeight, 61154),
            label: '',
            activeIcon: blueIcon(sHeight, 62927),
          ),
          BottomNavigationBarItem(
            icon: greyIcon(sHeight, 60285),
            label: '',
            activeIcon: blueIcon(sHeight, 58502),
            backgroundColor: const Color(0xffffffff),
          )
        ],
        selectedItemColor: const Color(0xff475ad7),
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xff000000),
        showUnselectedLabels: false,
        backgroundColor: null,
        elevation: 0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: pageIndex,
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
      ),
    );
  }

  CFlexSizedBox buildNotifications(double sHeight) {
    return CFlexSizedBox(
      width: double.infinity,
      height: sHeight * 0.06,
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
                  left: sHeight * 0.02,
                  right: sHeight * 0.02,
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
                    const CFlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                          color: Color(0xff666c8e),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CFlexSizedBox(
                      width: null,
                      height: null,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  CFlexSizedBox buildSignOut(double sHeight, double sWidth) {
    return CFlexSizedBox(
      width: double.infinity,
      height: sHeight * 0.06,
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
                child: const CFlex(
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
                        'Sign Out',
                        style: TextStyle(
                          color: Color(0xff666c8e),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CFlexSizedBox(
                      width: null,
                      child: Icon(
                        IconData(61849, fontFamily: 'MaterialIcons'),
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
    );
  }

  CFlexSizedBox buildProfile(double sWidth, double sHeight) {
    return CFlexSizedBox(
      width: double.infinity,
      height: null,
      child: CFlex(
        direction: Axis.vertical,
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CFlexSizedBox(
            width: double.infinity,
            height: null,
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff333647),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CFlexSizedBox(
            height: null,
            width: double.infinity,
            child: CFlex(
              direction: Axis.horizontal,
              spacing: 67,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CFlexSizedBox(
                  width: sWidth * 0.24,
                  height: sHeight * 0.12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                      image: NetworkImage(
                          'https://avatars.githubusercontent.com/u/149434617?s=400&u=540ab3d75247932b474182bb411945ee63a111ca&v=4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CFlexSizedBox(
                  width: null,
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: sWidth * 0.12,
                      right: 0,
                      top: 0,
                      bottom: 0,
                    ),
                    child: const CFlex(
                      direction: Axis.vertical,
                      spacing: 10,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CFlexSizedBox(
                          width: null,
                          height: null,
                          child: Text(
                            'önder özduyucu',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff333647),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        CFlexSizedBox(
                          width: null,
                          height: null,
                          child: Text(
                            'dasbey@hotmail.com',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7c82a1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Icon blueIcon(double sHeight, int changeIcon) {
    return Icon(
      IconData(changeIcon, fontFamily: 'MaterialIcons'),
      color: const Color(0xff475ad7),
      size: sHeight * 0.04,
    );
  }

  Icon greyIcon(double sHeight, int changeIcon) {
    return Icon(
      IconData(changeIcon, fontFamily: 'MaterialIcons'),
      color: const Color(0xffacafc3),
      size: sHeight * 0.04,
    );
  }
}
