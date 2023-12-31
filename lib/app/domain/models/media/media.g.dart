// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: json['id'] as int,
      title: readTitleValue(json, 'title') as String,
      overview: json['overview'] as String,
      originalTitle: readOriginalTitleValue(json, 'original_title') as String,
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String?,
      type: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'media_type': _$MediaTypeEnumMap[instance.type]!,
      'vote_average': instance.voteAverage,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};
