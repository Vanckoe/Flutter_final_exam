// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoImpl _$$ProfileInfoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileInfoImpl(
      phoneNumber: json['phoneNumber'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$$ProfileInfoImplToJson(_$ProfileInfoImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'age': instance.age,
    };
