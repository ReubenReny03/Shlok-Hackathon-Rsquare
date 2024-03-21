import 'package:cloud_firestore/cloud_firestore.dart';

class pointSystem {
  int avgInspectionRating;
  String email;
  int inspections;
  String jobTitle;
  int lastInspectionRating;
  String name;
  String password;
  int points;

  pointSystem({
    required this.points,
    required this.avgInspectionRating,
    required this.email,
    required this.inspections,
    required this.jobTitle,
    required this.lastInspectionRating,
    required this.name,
    required this.password,
  });

  pointSystem.fromJson(Map<String, Object?> json)
      : this(
          points: json['points']! as int,
          avgInspectionRating: json['avgInspectionRating']! as int,
          email: json['email']! as String,
          inspections: json['inspections']! as int,
          jobTitle: json['jobTitle']! as String,
          lastInspectionRating: json['lastInspectionRating']! as int,
          name: json['name']! as String,
          password: json['password']! as String,
        );
  pointSystem copyWith({
    int? points,
    int? avgInspectionRating,
    String? email,
    int? inspections,
    String? jobTitle,
    int? lastInspectionRating,
    String? name,
    String? password,
  }) {
    return pointSystem(
        points: points ?? this.points,
        avgInspectionRating: avgInspectionRating ?? this.avgInspectionRating,
        email: email ?? this.email,
        inspections: inspections ?? this.inspections,
        jobTitle: jobTitle ?? this.jobTitle,
        lastInspectionRating: lastInspectionRating ?? this.lastInspectionRating,
        name: name ?? this.name,
        password: password ?? this.password);
  }

  Map<String, Object?> toJson() {
    return {
      'points': points,
      'avgInspectionRating': avgInspectionRating,
      'email': email,
      'inspections': inspections,
      'jobTitle': jobTitle,
      'lastInspectionRating': lastInspectionRating,
      'name': name,
      'password': password,
    };
  }
}
