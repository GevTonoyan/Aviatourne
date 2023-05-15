import 'package:flutter/foundation.dart';

enum FlightBody { flightInfo, flightServices }

class AirlineViewModel extends ChangeNotifier {
  var _flightBody = FlightBody.flightInfo;

  FlightBody get flightBody => _flightBody;

  set flightBody(FlightBody value) {
    _flightBody = value;
    notifyListeners();
  }
}
