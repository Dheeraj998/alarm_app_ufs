// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmModelImpl _$$AlarmModelImplFromJson(Map<String, dynamic> json) =>
    _$AlarmModelImpl(
      dateTime: json['dateTime'] as String?,
      id: json['id'] as String?,
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$$AlarmModelImplToJson(_$AlarmModelImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'id': instance.id,
      'isSelected': instance.isSelected,
    };
