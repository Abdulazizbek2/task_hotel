import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:task_hotel/infrastructure/models/hotel_detail/hotel_info_model.dart';
import 'package:task_hotel/infrastructure/models/room_info_model/rooms_info_model.dart';
import '../models/auth/auth.dart';
import '../models/booking_hotel_model/booking_hotel_model.dart';

import '../models/image_upload/image_upload.dart';

part 'serializer.g.dart';

@SerializersFor([
  HotelInfoModel,
  AboutTheHotel,
  RoomsInfoModel,
  BookingHotelModel,
  Rooms,
//
  BarberSignUpModel,
  SignUpResponseModel,
  SuccessResponseModel,
  ImageUploadResponseModel,
  ImageUploadModel,
  LoginModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
