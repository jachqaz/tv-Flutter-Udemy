// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Performer _$$_PerformerFromJson(Map<String, dynamic> json) => _$_Performer(
      id: json['id'] as int,
      name: json['name'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      originalName: json['original_name'] as String,
      profilePath: json['profile_path'] as String,
      knownFor: knowForFromJson(json['known_for'] as List),
    );

Map<String, dynamic> _$$_PerformerToJson(_$_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
      'known_for': instance.knownFor,
    };
