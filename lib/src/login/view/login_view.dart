import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/src/home/view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/city_tour.png"),
                Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    labelText: "E-mail",
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      fixedSize: Size(double.infinity, 52.0)),
                  onPressed: () => Get.to(() => HomeView()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 22.0),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Icon(
                        Icons.arrow_forward,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Forgot password"),
                    SizedBox(
                      width: 8.0,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Get New",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account?"),
                    SizedBox(
                      width: 8.0,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Create New",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
