// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      author: json['author'] as String,
      content: json['content'] as String,
      deeplinkUrl: json['deeplinkUrl'] as String,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'author': instance.author,
      'content': instance.content,
      'deeplinkUrl': instance.deeplinkUrl,
    };
