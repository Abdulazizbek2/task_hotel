import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Option<AuthFailure> checkUser();
}
