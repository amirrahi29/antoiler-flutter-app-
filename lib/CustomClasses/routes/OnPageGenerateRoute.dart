import 'package:antoiler/view/AuthPages/SignUpPage.dart';
import 'package:antoiler/view/ChargesDetailsPage.dart';
import 'package:antoiler/view/DashboardPage.dart';
import 'package:antoiler/view/ErrorPage.dart';
import 'package:antoiler/view/AuthPages/AuthDetailsPage.dart';
import 'package:antoiler/view/FeedbackPage.dart';
import 'package:antoiler/view/SearchPage.dart';
import 'package:antoiler/view/SingleProfilePage.dart';
import 'package:antoiler/view/SplashPage.dart';
import 'package:antoiler/view/ViewProfilePage.dart';
import 'package:flutter/material.dart';
import 'PageConstants.dart';

class OnPageGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case PageConstants.splashPage:
        {
          return materialPageRoute(widget: SplashPage());
        }
      case PageConstants.dashboardPage:
        {
          return materialPageRoute(widget: DashboardPage());
        }
      case PageConstants.signInPage:
        {
          return materialPageRoute(widget: SignInPage());
        }
      case PageConstants.signUpPage:
        {
          return materialPageRoute(widget: SignUpPage());
        }
      case PageConstants.searchPage:
        {
          return materialPageRoute(widget: SearchPage());
        }
      case PageConstants.chargeDetailsPage:
        {
          return materialPageRoute(widget: ChargesDetailsPage());
        }
      case PageConstants.singleProfilePage:
        {
          return materialPageRoute(widget: SingleProfilePage());
        }
      case PageConstants.viewProfilePage:
        {
          return materialPageRoute(widget: ViewProfilePage());
        }
        case PageConstants.feedbackPage:
        {
          return materialPageRoute(widget: FeedbackPage());
        }
      default:
        {
          return materialPageRoute(widget: ErrorPage());
        }
    }
  }
}

MaterialPageRoute materialPageRoute({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
