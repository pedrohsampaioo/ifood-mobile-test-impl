import 'package:dartz/dartz.dart';

import '../failures/failure.dart';

abstract class UsecaseWithFailure<Params, F extends Failure, Type>
    extends Usecase<Params, Either<F, Type>> {
  const UsecaseWithFailure();
  Future<Either<F, Type>> call(Params params);
}

abstract class Usecase<Params, Type> {
  const Usecase();
  Future<Type> call(Params params);
}

class NoParams {
  const NoParams();
}
