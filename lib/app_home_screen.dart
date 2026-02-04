import 'package:flutter/material.dart';

import 'package:singit_package/models/analytics_event.dart';
import 'package:singit_package/models/user_info.dart';
import 'package:singit_package/singit_package.dart';

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IDT app'),),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final config = SingItPackage(
                userInfo: UserInfo(language: 'en', userId: 'ey71dB103x'),
                subscriptionStatus: .newUser,
                onSubscribeRequested: (userInfo) async {
                  // make backend request to subscribe

                  print('subscription requested for user: ${userInfo.userId}');
                  return .subscribed;
                },
                onUnsubscribeRequested: (userInfo) async {
                  // make backend request to subscribe
                  print(
                    'unsubscription requested for user: ${userInfo.userId}',
                  );
                  return .unsubscribed;
                },
                onAnalyticsEvent: (AnalyticsEvent event) {
                  // register analytics here
                  print(
                    'Singit analytics: ${event.eventName} ${event.params} ',
                  );
                },
              );
              SingItPackage.launchSingIt(context, config);
            },
            child: Text('launch Singit'),
          ),
        ),
      );
  }
}