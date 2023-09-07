import 'package:dartz/dartz.dart';
import 'package:task_hotel/infrastructure/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:task_hotel/infrastructure/models/hotel_detail/hotel_info_model.dart';
import 'package:task_hotel/infrastructure/models/room_info_model/rooms_info_model.dart';

import '../common/failure.dart';

abstract class IHomeFacade {
  Future<Either<ResponseFailure, HotelInfoModel>> hotelDetail();

  Future<Either<ResponseFailure, RoomsInfoModel>> roomsDetail();

  Future<Either<ResponseFailure, BookingHotelModel>> bookingHotel();
}
