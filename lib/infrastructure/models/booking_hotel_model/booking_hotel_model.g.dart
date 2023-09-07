// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_hotel_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookingHotelModel> _$bookingHotelModelSerializer =
    new _$BookingHotelModelSerializer();

class _$BookingHotelModelSerializer
    implements StructuredSerializer<BookingHotelModel> {
  @override
  final Iterable<Type> types = const [BookingHotelModel, _$BookingHotelModel];
  @override
  final String wireName = 'BookingHotelModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, BookingHotelModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'hotel_name',
      serializers.serialize(object.hotelName,
          specifiedType: const FullType(String)),
      'hotel_adress',
      serializers.serialize(object.hotelAdress,
          specifiedType: const FullType(String)),
      'horating',
      serializers.serialize(object.horating,
          specifiedType: const FullType(int)),
      'rating_name',
      serializers.serialize(object.ratingName,
          specifiedType: const FullType(String)),
      'departure',
      serializers.serialize(object.departure,
          specifiedType: const FullType(String)),
      'arrival_country',
      serializers.serialize(object.arrivalCountry,
          specifiedType: const FullType(String)),
      'tour_date_start',
      serializers.serialize(object.tourDateStart,
          specifiedType: const FullType(String)),
      'tour_date_stop',
      serializers.serialize(object.tourDateStop,
          specifiedType: const FullType(String)),
      'number_of_nights',
      serializers.serialize(object.numberOfNights,
          specifiedType: const FullType(int)),
      'room',
      serializers.serialize(object.room, specifiedType: const FullType(String)),
      'nutrition',
      serializers.serialize(object.nutrition,
          specifiedType: const FullType(String)),
      'tour_price',
      serializers.serialize(object.tourPrice,
          specifiedType: const FullType(int)),
      'fuel_charge',
      serializers.serialize(object.fuelCharge,
          specifiedType: const FullType(int)),
      'service_charge',
      serializers.serialize(object.serviceCharge,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BookingHotelModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookingHotelModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hotel_name':
          result.hotelName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hotel_adress':
          result.hotelAdress = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'horating':
          result.horating = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rating_name':
          result.ratingName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'departure':
          result.departure = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'arrival_country':
          result.arrivalCountry = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tour_date_start':
          result.tourDateStart = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tour_date_stop':
          result.tourDateStop = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'number_of_nights':
          result.numberOfNights = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nutrition':
          result.nutrition = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tour_price':
          result.tourPrice = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'fuel_charge':
          result.fuelCharge = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'service_charge':
          result.serviceCharge = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BookingHotelModel extends BookingHotelModel {
  @override
  final int id;
  @override
  final String hotelName;
  @override
  final String hotelAdress;
  @override
  final int horating;
  @override
  final String ratingName;
  @override
  final String departure;
  @override
  final String arrivalCountry;
  @override
  final String tourDateStart;
  @override
  final String tourDateStop;
  @override
  final int numberOfNights;
  @override
  final String room;
  @override
  final String nutrition;
  @override
  final int tourPrice;
  @override
  final int fuelCharge;
  @override
  final int serviceCharge;

  factory _$BookingHotelModel(
          [void Function(BookingHotelModelBuilder)? updates]) =>
      (new BookingHotelModelBuilder()..update(updates))._build();

  _$BookingHotelModel._(
      {required this.id,
      required this.hotelName,
      required this.hotelAdress,
      required this.horating,
      required this.ratingName,
      required this.departure,
      required this.arrivalCountry,
      required this.tourDateStart,
      required this.tourDateStop,
      required this.numberOfNights,
      required this.room,
      required this.nutrition,
      required this.tourPrice,
      required this.fuelCharge,
      required this.serviceCharge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'BookingHotelModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        hotelName, r'BookingHotelModel', 'hotelName');
    BuiltValueNullFieldError.checkNotNull(
        hotelAdress, r'BookingHotelModel', 'hotelAdress');
    BuiltValueNullFieldError.checkNotNull(
        horating, r'BookingHotelModel', 'horating');
    BuiltValueNullFieldError.checkNotNull(
        ratingName, r'BookingHotelModel', 'ratingName');
    BuiltValueNullFieldError.checkNotNull(
        departure, r'BookingHotelModel', 'departure');
    BuiltValueNullFieldError.checkNotNull(
        arrivalCountry, r'BookingHotelModel', 'arrivalCountry');
    BuiltValueNullFieldError.checkNotNull(
        tourDateStart, r'BookingHotelModel', 'tourDateStart');
    BuiltValueNullFieldError.checkNotNull(
        tourDateStop, r'BookingHotelModel', 'tourDateStop');
    BuiltValueNullFieldError.checkNotNull(
        numberOfNights, r'BookingHotelModel', 'numberOfNights');
    BuiltValueNullFieldError.checkNotNull(room, r'BookingHotelModel', 'room');
    BuiltValueNullFieldError.checkNotNull(
        nutrition, r'BookingHotelModel', 'nutrition');
    BuiltValueNullFieldError.checkNotNull(
        tourPrice, r'BookingHotelModel', 'tourPrice');
    BuiltValueNullFieldError.checkNotNull(
        fuelCharge, r'BookingHotelModel', 'fuelCharge');
    BuiltValueNullFieldError.checkNotNull(
        serviceCharge, r'BookingHotelModel', 'serviceCharge');
  }

  @override
  BookingHotelModel rebuild(void Function(BookingHotelModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingHotelModelBuilder toBuilder() =>
      new BookingHotelModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingHotelModel &&
        id == other.id &&
        hotelName == other.hotelName &&
        hotelAdress == other.hotelAdress &&
        horating == other.horating &&
        ratingName == other.ratingName &&
        departure == other.departure &&
        arrivalCountry == other.arrivalCountry &&
        tourDateStart == other.tourDateStart &&
        tourDateStop == other.tourDateStop &&
        numberOfNights == other.numberOfNights &&
        room == other.room &&
        nutrition == other.nutrition &&
        tourPrice == other.tourPrice &&
        fuelCharge == other.fuelCharge &&
        serviceCharge == other.serviceCharge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, hotelName.hashCode);
    _$hash = $jc(_$hash, hotelAdress.hashCode);
    _$hash = $jc(_$hash, horating.hashCode);
    _$hash = $jc(_$hash, ratingName.hashCode);
    _$hash = $jc(_$hash, departure.hashCode);
    _$hash = $jc(_$hash, arrivalCountry.hashCode);
    _$hash = $jc(_$hash, tourDateStart.hashCode);
    _$hash = $jc(_$hash, tourDateStop.hashCode);
    _$hash = $jc(_$hash, numberOfNights.hashCode);
    _$hash = $jc(_$hash, room.hashCode);
    _$hash = $jc(_$hash, nutrition.hashCode);
    _$hash = $jc(_$hash, tourPrice.hashCode);
    _$hash = $jc(_$hash, fuelCharge.hashCode);
    _$hash = $jc(_$hash, serviceCharge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingHotelModel')
          ..add('id', id)
          ..add('hotelName', hotelName)
          ..add('hotelAdress', hotelAdress)
          ..add('horating', horating)
          ..add('ratingName', ratingName)
          ..add('departure', departure)
          ..add('arrivalCountry', arrivalCountry)
          ..add('tourDateStart', tourDateStart)
          ..add('tourDateStop', tourDateStop)
          ..add('numberOfNights', numberOfNights)
          ..add('room', room)
          ..add('nutrition', nutrition)
          ..add('tourPrice', tourPrice)
          ..add('fuelCharge', fuelCharge)
          ..add('serviceCharge', serviceCharge))
        .toString();
  }
}

class BookingHotelModelBuilder
    implements Builder<BookingHotelModel, BookingHotelModelBuilder> {
  _$BookingHotelModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _hotelName;
  String? get hotelName => _$this._hotelName;
  set hotelName(String? hotelName) => _$this._hotelName = hotelName;

  String? _hotelAdress;
  String? get hotelAdress => _$this._hotelAdress;
  set hotelAdress(String? hotelAdress) => _$this._hotelAdress = hotelAdress;

  int? _horating;
  int? get horating => _$this._horating;
  set horating(int? horating) => _$this._horating = horating;

  String? _ratingName;
  String? get ratingName => _$this._ratingName;
  set ratingName(String? ratingName) => _$this._ratingName = ratingName;

  String? _departure;
  String? get departure => _$this._departure;
  set departure(String? departure) => _$this._departure = departure;

  String? _arrivalCountry;
  String? get arrivalCountry => _$this._arrivalCountry;
  set arrivalCountry(String? arrivalCountry) =>
      _$this._arrivalCountry = arrivalCountry;

  String? _tourDateStart;
  String? get tourDateStart => _$this._tourDateStart;
  set tourDateStart(String? tourDateStart) =>
      _$this._tourDateStart = tourDateStart;

  String? _tourDateStop;
  String? get tourDateStop => _$this._tourDateStop;
  set tourDateStop(String? tourDateStop) => _$this._tourDateStop = tourDateStop;

  int? _numberOfNights;
  int? get numberOfNights => _$this._numberOfNights;
  set numberOfNights(int? numberOfNights) =>
      _$this._numberOfNights = numberOfNights;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  String? _nutrition;
  String? get nutrition => _$this._nutrition;
  set nutrition(String? nutrition) => _$this._nutrition = nutrition;

  int? _tourPrice;
  int? get tourPrice => _$this._tourPrice;
  set tourPrice(int? tourPrice) => _$this._tourPrice = tourPrice;

  int? _fuelCharge;
  int? get fuelCharge => _$this._fuelCharge;
  set fuelCharge(int? fuelCharge) => _$this._fuelCharge = fuelCharge;

  int? _serviceCharge;
  int? get serviceCharge => _$this._serviceCharge;
  set serviceCharge(int? serviceCharge) =>
      _$this._serviceCharge = serviceCharge;

  BookingHotelModelBuilder();

  BookingHotelModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _hotelName = $v.hotelName;
      _hotelAdress = $v.hotelAdress;
      _horating = $v.horating;
      _ratingName = $v.ratingName;
      _departure = $v.departure;
      _arrivalCountry = $v.arrivalCountry;
      _tourDateStart = $v.tourDateStart;
      _tourDateStop = $v.tourDateStop;
      _numberOfNights = $v.numberOfNights;
      _room = $v.room;
      _nutrition = $v.nutrition;
      _tourPrice = $v.tourPrice;
      _fuelCharge = $v.fuelCharge;
      _serviceCharge = $v.serviceCharge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingHotelModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookingHotelModel;
  }

  @override
  void update(void Function(BookingHotelModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingHotelModel build() => _build();

  _$BookingHotelModel _build() {
    final _$result = _$v ??
        new _$BookingHotelModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'BookingHotelModel', 'id'),
            hotelName: BuiltValueNullFieldError.checkNotNull(
                hotelName, r'BookingHotelModel', 'hotelName'),
            hotelAdress: BuiltValueNullFieldError.checkNotNull(
                hotelAdress, r'BookingHotelModel', 'hotelAdress'),
            horating: BuiltValueNullFieldError.checkNotNull(
                horating, r'BookingHotelModel', 'horating'),
            ratingName: BuiltValueNullFieldError.checkNotNull(
                ratingName, r'BookingHotelModel', 'ratingName'),
            departure: BuiltValueNullFieldError.checkNotNull(
                departure, r'BookingHotelModel', 'departure'),
            arrivalCountry: BuiltValueNullFieldError.checkNotNull(
                arrivalCountry, r'BookingHotelModel', 'arrivalCountry'),
            tourDateStart: BuiltValueNullFieldError.checkNotNull(
                tourDateStart, r'BookingHotelModel', 'tourDateStart'),
            tourDateStop:
                BuiltValueNullFieldError.checkNotNull(tourDateStop, r'BookingHotelModel', 'tourDateStop'),
            numberOfNights: BuiltValueNullFieldError.checkNotNull(numberOfNights, r'BookingHotelModel', 'numberOfNights'),
            room: BuiltValueNullFieldError.checkNotNull(room, r'BookingHotelModel', 'room'),
            nutrition: BuiltValueNullFieldError.checkNotNull(nutrition, r'BookingHotelModel', 'nutrition'),
            tourPrice: BuiltValueNullFieldError.checkNotNull(tourPrice, r'BookingHotelModel', 'tourPrice'),
            fuelCharge: BuiltValueNullFieldError.checkNotNull(fuelCharge, r'BookingHotelModel', 'fuelCharge'),
            serviceCharge: BuiltValueNullFieldError.checkNotNull(serviceCharge, r'BookingHotelModel', 'serviceCharge'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
