import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';

class HomeRepoImpl implements HomeRepo{
  ApiServices apiServices = ApiServices();
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
  var data = await apiServices.get(
  endPoint: '/volumes?Filtering=free-ebooks&q=computer science',
);
  print(data);
  List <BookModel> Books = [];
  for (var item in data['items']) {
    print(item['volumeInfo']['imageLinks']);

    Books.add(BookModel.fromJson(item));
  }

  return right(Books);
}   catch (e) {
  if(e is DioError){
    return left(ServerFailure.fromDioError(e));
  } else {
    return left(ServerFailure('Opps There was an Error, Please try again'));
  }
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBooks() async {
  try {
 var data = await apiServices.get(
  endPoint: '/volumes?Filtering=free-ebooks&q=subject:programming',
);
  print(data);
  List <BookModel> Books = [];
  for (var item in data['items']) {
    print(item['volumeInfo']['imageLinks']);

    Books.add(BookModel.fromJson(item));
  }

  return right(Books);
}   catch (e) {
  if(e is DioError){
   return left(ServerFailure.fromDioError(e));
  } else {
    return left(ServerFailure('Opps There was an Error, Please try again'));
  }
}
}

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async {
     try {
 var data = await apiServices.get(
  endPoint: '/volumes?Filtering=free-ebooks&q=subject:programming&Sorting=relevance',
);
  print(data);
  List <BookModel> Books = [];
  for (var item in data['items']) {
    print('item : $item');
    Books.add(BookModel.fromJson(item));
  }

  return right(Books);
}   catch (e) {
  if(e is DioError){
   return left(ServerFailure.fromDioError(e));
  } else {
    return left(ServerFailure('Opps There was an Error, Please try again'));
  }
}
  }
}

// import 'package:bookly_app/core/errors/failure.dart';
// import 'package:bookly_app/core/utils/api_services.dart';
// import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
// import 'package:bookly_app/features/home/data/repos/home_repo.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';

// class HomeRepoImpl implements HomeRepo {
//    ApiServices apiServices = ApiServices();

//   HomeRepoImpl();
//   @override
//   Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
//     try {
//       var data = await apiServices.get(
//           endPoint:
//               'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
//                print('data : $data');
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         try {
//           print('item : $item');
//           books.add(BookModel.fromJson(item));
//         } catch (e) {
//           books.add(BookModel.fromJson(item));
//         }
//       }

//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }

//   @override
//   Future<Either<Failure, List<BookModel>>> fetshFeaturedBooks() async {
//     try {
//       var data = await apiServices.get(
//           endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');

//           print('data : $data');
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         print('item : $item');
//         books.add(BookModel.fromJson(item));
//       }
//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }

//   @override
//   Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
//       {required String category}) async {
//     try {
//       var data = await apiServices.get(
//           endPoint:
//               'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
//                print('data : $data');
//       List<BookModel> books = [];
//       for (var item in data['items']) {
//         print('item : $item');
//         books.add(BookModel.fromJson(item));
//       }

//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }
  
// }