import 'package:clean_architecture_course_1/features/core/error/failures.dart';
import 'package:clean_architecture_course_1/features/core/usecases/usecase.dart';
import 'package:clean_architecture_course_1/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_course_1/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }

}
