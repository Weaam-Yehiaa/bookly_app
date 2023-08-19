import 'package:bookly_app/shared/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';

abstract class  HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}