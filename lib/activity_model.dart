
class Activity {

  final String activity;
  final String type;
  Activity(
      {required this.activity,
      required this.type,
      });

  factory Activity.fromJson(Map<String, dynamic> json){
    return Activity(
    activity: json['activity'] as String, 
    type: json['type'] as String,
   );
  }
  @override 
  String toString() {
    // TODO: implement toString
    return 'activity: $activity\n'
           'type: $type\n';
  }
}
