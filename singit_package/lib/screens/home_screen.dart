import 'package:flutter/material.dart';
import 'package:singit_package/models/analytics_event.dart';
import 'package:singit_package/models/subscription_status.dart';
import 'package:singit_package/singit_package.dart';

class SingItHomeScreen extends StatefulWidget {
  const SingItHomeScreen({super.key});

  @override
  State<SingItHomeScreen> createState() => _SingItHomeScreenState();
}

class _SingItHomeScreenState extends State<SingItHomeScreen> {
  SubscriptionStatus _subscriptionStatus = SingItPackage.instance.subscriptionStatus;
  final SingItPackage _config = SingItPackage.instance;
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Singit Home page'),
        leading: IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: .center, mainAxisSize: .max,
        spacing: 20,
        children: [
          Text('current subscription status: ${_subscriptionStatus.name}'),
          ElevatedButton(onPressed: () async{
            setState(() {
              _isLoading = true;
            });
            final result = await SingItPackage.instance.onSubscribeRequested(_config.userInfo);
            setState(() {
              _subscriptionStatus = result;
              _isLoading = false;
            });
          },
          child: Text('Subscribe'),),
          ElevatedButton(onPressed: () async{
            // register analytics 
            _config.onAnalyticsEvent(AnalyticsEvent(eventName: 'SubscribedButtonPressed', params: {'user_id': _config.userInfo.userId}));
            setState(() {
              _isLoading = true;
            });
            final result = await SingItPackage.instance.onUnsubscribeRequested(_config.userInfo);
            setState(() {
              _subscriptionStatus = result;
              _isLoading = false;
            });
          },
          child: Text('Unsubscribe'),)      
        ],),
      ),
    );
  }
}