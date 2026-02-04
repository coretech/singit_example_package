
import 'package:flutter/material.dart';
import 'package:singit_package/screens/home_screen.dart';

import 'models/analytics_event.dart';
import 'models/subscription_status.dart';
import 'models/user_info.dart';

class SingItPackage {
  final UserInfo userInfo;
  /// user's subscription status at the time of initialization
  final SubscriptionStatus subscriptionStatus;
  /// Future that can be awaited to get subscription result once the user presses on Subscribe inside of singit
  final Future<SubscriptionStatus> Function(UserInfo userInfo) onSubscribeRequested;
  /// Future that can be awaited to get subscription result once the user presses on Unsubscribe inside of singit
  final Future<SubscriptionStatus> Function(UserInfo userInfo) onUnsubscribeRequested;
  /// Callback for analytics
  final void Function(AnalyticsEvent event) onAnalyticsEvent;

  SingItPackage({required this.userInfo, required this.subscriptionStatus, required this.onSubscribeRequested, required this.onUnsubscribeRequested, required this.onAnalyticsEvent});

  
  // Private singleton to be used internally in the package for config access
  static SingItPackage? _instance;

  //  public static getter to access the instance globally
  static SingItPackage get instance {
    if (_instance == null) {
      throw Exception(
        'SingItPackage has not been initialized. '
        'Make sure to call SingItPackage.launch() before accessing the instance.'
      );
    }
    return _instance!;
  }


  static void launchSingIt(BuildContext context, SingItPackage config){
    _instance = config;
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SingItHomeScreen()));
  }
}
