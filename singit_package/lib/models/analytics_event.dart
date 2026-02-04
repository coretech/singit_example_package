class AnalyticsEvent {
  final String eventName;
  final Map<String, dynamic> params;

  AnalyticsEvent({required this.eventName, required this.params});
}