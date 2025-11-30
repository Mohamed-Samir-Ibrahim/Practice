class ActivityModel {
  final String activity;
  final num availability;
  final String type;
  final num participants;
  final num price;
  final String accessibility;
  final String duration;
  final bool kidFriendly;
  final String link;
  final String key;

  ActivityModel({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      activity: json['activity'],
      availability: json['availability'],
      type: json['type'],
      participants: json['participants'],
      price: json['price'],
      accessibility: json['accessibility'],
      duration: json['duration'],
      kidFriendly: json['kidFriendly'],
      link: json['link'],
      key: json['key'],
    );
  }
}
