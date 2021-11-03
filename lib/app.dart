// import 'package:flutter/material.dart';
// import 'package:transaction_bank_app/providers/provider.dart';
// // import 'package:transaction_bank_app/screens/forgot_password.dart';
// import 'package:transaction_bank_app/screens/home_screen.dart';
// import 'package:transaction_bank_app/screens/login/login_screen.dart';
// // import 'package:transaction_bank_app/screens/signup_screen.dart';
// import 'package:transaction_bank_app/services/auth_service.dart';

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Provider(
//       child: MaterialApp(
//         title: "Rest Auth",
//         home: FutureBuilder(
//           future: AuthService.getToken(),
//           builder: (_, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasData) {
//               return HomeScreen();
//             } else {
//               return LoginScreen();
//             }
//           },
//         ),
//         routes: {
//           '/home': (_) => HomeScreen(),
//           '/login': (_) => LoginScreen(),
//           // '/signup': (_) => new SignupScreen(),
//           // '/forgot_password': (_) => new ForgotPassword(),
//         },
//       ),
//     );
//   }
// }