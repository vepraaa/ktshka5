// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarDataImpl _$$CarDataImplFromJson(Map<String, dynamic> json) =>
    _$CarDataImpl(
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CarDataImplToJson(_$CarDataImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
