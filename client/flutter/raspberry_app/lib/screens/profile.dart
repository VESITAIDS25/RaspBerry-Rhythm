import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raspberry_app/styles.dart';
import 'package:raspberry_app/widgets/profilemenu.dart';
import 'package:raspberry_app/widgets/text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLight,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text('RHYTHM',
            style: AppTextStyles.heading5Bold.copyWith(
              color: Colors.white,
              letterSpacing: 3,
              fontFamily: 'Poppins',
            )),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                size: 20,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.withOpacity(0.1)),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text("Victor Smith",
                  style:
                      AppTextStyles.heading5Bold.copyWith(color: Colors.white)),
              Text("joined 2w ago",
                  style: AppTextStyles.bodySmall
                      .copyWith(color: Styles.primaryColor)),
              const SizedBox(height: 18),

              /// -- BUTTON
              SizedBox(
                width: 200,
                height: 45.0,
                child: ElevatedButton(
                  onPressed: () => {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return const UpdateProfileScreen();
                    // })),
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.primaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text("Edit Profile",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),

              /// -- MENU
              Column(
                children: [
                  ProfileMenuWidget(
                      title: "Settings", icon: Icons.settings, onPress: () {}),
                  ProfileMenuWidget(
                      title: "Billing Details",
                      icon: Icons.wallet,
                      onPress: () {}),
                  ProfileMenuWidget(
                      title: "User Management",
                      icon: Icons.verified_user,
                      onPress: () {}),
                  const Divider(),
                  const SizedBox(height: 10),
                  ProfileMenuWidget(
                      title: "Information", icon: Icons.info, onPress: () {}),
                  ProfileMenuWidget(
                      title: "Logout",
                      icon: Icons.logout,
                      textColor: Colors.red,
                      endIcon: false,
                      onPress: () {
                        // UserDb.removeUserInfo();
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const AuthPage();
                        // }));
                        // Authentication.signOut(context: context);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
