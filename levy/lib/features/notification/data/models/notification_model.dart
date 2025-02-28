import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/notification/notification.dart';

part 'notification_model.g.dart';

@JsonSerializable(createToJson: false)
final class NotificationModel extends NotificationEntity {
  const NotificationModel({
    this.image = '',
    this.title = '',
    this.titleSemantics,
    this.subtitle = '',
    this.subtitleSemantics,
    this.datetime = '',
  });

  @override
  final String image;

  @override
  final String title;

  @override
  final String? titleSemantics;

  @override
  final String subtitle;

  @override
  final String? subtitleSemantics;

  @override
  final String datetime;

  factory NotificationModel.fromJson(Map<String, dynamic> data) => _$NotificationModelFromJson(data);
}
