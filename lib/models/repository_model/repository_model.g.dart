// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseRepositoryModel _$$_ResponseRepositoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseRepositoryModel(
      total_count: json['total_count'] as int? ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => RepositoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResponseRepositoryModelToJson(
        _$_ResponseRepositoryModel instance) =>
    <String, dynamic>{
      'total_count': instance.total_count,
      'items': instance.items,
    };

_$_RepositoryModel _$$_RepositoryModelFromJson(Map<String, dynamic> json) =>
    _$_RepositoryModel(
      id: json['id'] as int? ?? 0,
      login: json['login'] as String? ?? '',
      node_id: json['node_id'] as String? ?? '',
      avatar_url: json['avatar_url'] as String? ?? '',
      url: json['url'] as String? ?? '',
      html_url: json['html_url'] as String? ?? '',
      type: json['type'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_RepositoryModelToJson(_$_RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'node_id': instance.node_id,
      'avatar_url': instance.avatar_url,
      'url': instance.url,
      'html_url': instance.html_url,
      'type': instance.type,
      'score': instance.score,
    };
