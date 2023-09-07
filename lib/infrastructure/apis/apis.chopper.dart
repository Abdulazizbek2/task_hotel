// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HotelService extends HotelService {
  _$HotelService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HotelService;

  @override
  Future<Response<HotelInfoModel>> hotelDetail() {
    final Uri $url = Uri.parse('/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HotelInfoModel, HotelInfoModel>($request);
  }

  @override
  Future<Response<RoomsInfoModel>> roomsDetail() {
    final Uri $url = Uri.parse('/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RoomsInfoModel, RoomsInfoModel>($request);
  }

  @override
  Future<Response<BookingHotelModel>> bookingHote() {
    final Uri $url = Uri.parse('/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingHotelModel, BookingHotelModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ImageUploadService extends ImageUploadService {
  _$ImageUploadService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ImageUploadService;

  @override
  Future<Response<ImageUploadResponseModel>> imageUpload(
    String objectType,
    String file,
  ) {
    final Uri $url = Uri.parse('/api/media/upload-file/');
    final Map<String, String> $headers = {
      'object-type': objectType,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<String>(
        'file',
        file,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      headers: $headers,
    );
    return client
        .send<ImageUploadResponseModel, ImageUploadResponseModel>($request);
  }
}
