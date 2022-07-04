import 'package:flutter_app/resources/pages/login_page.dart';
import 'package:flutter_app/resources/pages/home_page.dart';
import '../resources/pages/forgot_password_page.dart';
import '../resources/pages/register_page.dart';

import 'package:nylo_framework/nylo_framework.dart';
import 'package:page_transition/page_transition.dart';

/*
|--------------------------------------------------------------------------
| App Router
|
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "flutter pub run nylo_framework:main make:page my_page"
| Learn more https://nylo.dev/docs/3.x/router
|--------------------------------------------------------------------------
*/

appRouter() => nyRoutes((router) {
      router.route("/", (context) => LoginPage(title: ""));

      // Add your routes here

      router.route("/home_page", (context) => HomePage(),
          transition: PageTransitionType.fade);

      router.route("/register_page", (context) => RegisterPage(),
          transition: PageTransitionType.fade);

      router.route("/forgot_password_page", (context) => ForgotPasswordPage(),
          transition: PageTransitionType.fade);

      // router.route("/new-page", (context) => NewPage(), transition: PageTransitionType.fade);
    });
