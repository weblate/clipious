import 'package:invidious/models/videoThumbnail.dart';

import 'package:json_annotation/json_annotation.dart';
part 'recommendedVideo.g.dart';
@JsonSerializable()
class RecommendedVideo {
  String videoId;
  String title;
  List<VideoThumbnail> videoThumbnails;
  String author;
  int lengthSeconds;
  String viewCountText;

  RecommendedVideo(this.videoId, this.title, this.videoThumbnails, this.author, this.lengthSeconds, this.viewCountText);
  factory RecommendedVideo.fromJson(Map<String, dynamic> json) => _$RecommendedVideoFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedVideoToJson(this);
}
