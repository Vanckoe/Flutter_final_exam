import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';

part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required String title,
    required String imageUrl,
    required String author,
    required String content,
    required String deeplinkUrl,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
