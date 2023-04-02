import 'package:app_keyboard_shop_tutorial/screens/forgotpass_screen.dart';
import 'package:app_keyboard_shop_tutorial/screens/products_overview_screen.dart';
import 'package:app_keyboard_shop_tutorial/screens/signup_screen.dart';
import 'package:app_keyboard_shop_tutorial/widgets/input_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen() : super();
  static const routeName = '/login';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<LoginScreen> {
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const double r = (120 / 200);
    final coverHeight = screenWidth * r;
    bool _pinned = false;
    bool _snap = false;
    bool _floating = false;

    final widgetList = [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
              // textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 30.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            margin: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('images/bookstore.png',
                  width: 200, height: 200, fit: BoxFit.fill),
            ),
          ),
          const Text(
            'Color Store',
            style: TextStyle(
              fontFamily: 'MyFont',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 10.0),
              color: Color(0xffFFFBFB),
              child: Center(
                  child: Wrap(
                children: [
                  Text(
                    "If you need any support  ",
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Click here",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              )))
        ],
      ),
      const SizedBox(
        height: 30.0,
      ),
      Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(0,50,0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(25),
                    labelText: "Enter Username Or Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Email',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(25),
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, top: 30.0, bottom: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(ForgotScreen.routeName);
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 70.0,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      print("Sign up tapping");
                      Navigator.of(context).pushReplacementNamed(
                          ProductsOverviewScreen.routeName);
                    }
                    Get.to(const ProductsOverviewScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 0.0,
                    minimumSize: Size(screenWidth, 150),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                  ),
                  child: Ink(
                    // padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    decoration: BoxDecoration(
                        color: const Color(0xff42C83C), // Color(0xffF05945),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(0 ,20,0,20),
                      // height: 200,

                      alignment: Alignment.center,

                      child: const Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
            ],
          )),
      const SizedBox(
        height: 30.0,
      )
    ];
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(),
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xffFFFBFB), Color(0xffFFFBFB)])),
              width: screenWidth,
              height: 50,
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return widgetList[index];
          }, childCount: widgetList.length))
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 50.0,
            color: Color(0xffFFFBFB),
            child: Center(
                child: Wrap(
              children: [
                Text(
                  "Don't have an account?  ",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
                Material(
                    child: InkWell(
                  onTap: () {
                    print("sign up tapped");
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )),
              ],
            )),
          ),
        ],
      ),
    ));
  }
}
