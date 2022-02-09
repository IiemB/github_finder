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
      owner: json['owner'] == null
          ? null
          : UserModel.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String? ?? '',
      node_id: json['node_id'] as String? ?? '',
      full_name: json['full_name'] as String? ?? '',
      url: json['url'] as String? ?? '',
      html_url: json['html_url'] as String? ?? '',
      private: json['private'] as bool? ?? false,
      descriptions: json['descriptions'] as String? ?? '',
    );

Map<String, dynamic> _$$_RepositoryModelToJson(_$_RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'name': instance.name,
      'node_id': instance.node_id,
      'full_name': instance.full_name,
      'url': instance.url,
      'html_url': instance.html_url,
      'private': instance.private,
      'descriptions': instance.descriptions,
    };
