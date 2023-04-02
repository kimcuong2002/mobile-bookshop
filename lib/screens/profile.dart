import 'package:app_keyboard_shop_tutorial/widgets/bottom_menu_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProFile extends StatefulWidget {
  const ProFile({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  _ProFileState createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomMenuBar(),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 30, 10, 15),
                // height: 200,
                child: Container(
                  alignment: const Alignment(0.0, 5.0),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg"),
                    radius: 65.0,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 60.0,
              // ),
              const Text(
                "Admin",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),

              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProfileItem(
                        "Recommend to friends", "../assets/images/hand.png"),
                    ProfileItem(
                        "Feedback comments", "../assets/images/mess.png"),
                    ProfileItem("Membership registration",
                        "../assets/images/registration.png"),
                    ProfileItem("Introduce us", "../assets/images/contact.png"),
                    ProfileItem("Sign out", "../assets/images/signout.png")
                  ])
            ],
          ),
        ));
  }
}

class ProfileItem extends StatelessWidget {
  final String title;
  final String url;

  const ProfileItem(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(24),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(255, 14, 86, 145),
            ),
          ),
        ),
        child: Container(
          width: 400,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(url),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 14, 86, 145),
              ),
            ],
          ),
        ));
  }
}
