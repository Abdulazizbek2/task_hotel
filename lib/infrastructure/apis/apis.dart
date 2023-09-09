import 'package:chopper/chopper.dart';
import 'package:task_hotel/infrastructure/models/booking_hotel_model/booking_hotel_model.dart';
import 'package:task_hotel/infrastructure/models/hotel_detail/hotel_info_model.dart';
import 'package:task_hotel/infrastructure/models/room_info_model/rooms_info_model.dart';

import '../../presentation/pages/core/app_widget.dart';
import '../core/built_value_converter.dart';
import '../core/interceptors.dart';
import '../models/image_upload/image_upload.dart';

part 'apis.chopper.dart';

const String baseUrl = "https://run.mocky.io";

/// hotel services
@ChopperApi(baseUrl: '/v3/')
abstract class HotelService extends ChopperService {
  @Get(path: '35e0d18e-2521-4f1b-a575-f0fe366f66e3')
  Future<Response<HotelInfoModel>> hotelDetail();

  @Get(path: 'f9a38183-6f95-43aa-853a-9c83cbb05ecd')
  Future<Response<RoomsInfoModel>> roomsDetail();

  @Get(path: 'e8868481-743f-4eb2-a0d7-2bc4012275c8')
  Future<Response<BookingHotelModel>> bookingHote();

  static HotelService create() => _$HotelService(_Client(baseUrl, true));
}

@ChopperApi(baseUrl: '/api/')
abstract class ImageUploadService extends ChopperService {
  @Post(path: 'media/upload-file/')
  @multipart
  Future<Response<ImageUploadResponseModel>> imageUpload(
    @Header('object-type') String objectType,
    @PartFile('file') String file,
  );

  static ImageUploadService create() =>
      _$ImageUploadService(_Client('http://', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: Uri.parse(baseUrl),
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                    ...alice.getChopperInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
