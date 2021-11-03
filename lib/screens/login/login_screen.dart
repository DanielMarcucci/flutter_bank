// import 'package:transaction_bank_app/screens/login/components/body.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Body(),
//     );
//   }
// }
import 'dart:convert';

import 'package:transaction_bank_app/screens/home_screen.dart';
import 'package:transaction_bank_app/screens/login/components/background.dart';
import 'package:transaction_bank_app/services/auth_service.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Login/components/background.dart';
// import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:transaction_bank_app/components/rounded_button.dart';
import 'package:transaction_bank_app/components/rounded_input_field.dart';
import 'package:transaction_bank_app/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  String identifier = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "INICIAR SESIÓN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset('assets/images/splash_1.jpg'),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Tu usuario",
                onChanged: (value) {
                  setState(() {
                    identifier = value;
                  });
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              RoundedButton(
                text: "Ingresar",
                press: () {
                  debugPrint("login");
                  login(context);
                },
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: size.height * 0.03),
              // AlreadyHaveAnAccountCheck(
              //   press: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           // return SignUpScreen();
              //           return HomeScreen();
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // _Body({
  //   Key? key,
  // }) : super(key: key);

  dynamic login(BuildContext context) async {
    AuthService authInfo = AuthService();

    final res = await authInfo.login(identifier, password);
    final data = jsonDecode(res) as Map<String, dynamic>;

    debugPrint(data['statusCode'].toString());

    if (data['statusCode'] == 400) {
      // addError(data['message']);
      debugPrint("error");
    } else {
      debugPrint(jsonEncode(data));
      // AuthService.setToken(data['token'], data['refreshToken']);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        debugPrint("pasa");
        return HomeScreen();
      }));
      return data;
    }
  }
}
