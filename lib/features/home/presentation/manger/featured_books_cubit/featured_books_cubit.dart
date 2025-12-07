import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

   HomeRepo homeRepo = HomeRepoImpl();
   Future <void> fetchFeaturedBooks () async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetshFeaturedBooks();
    result.fold((Failure){
      emit(FeaturedBooksFailure(errMessage: Failure.errMessage));
    }, (books){
      emit(FeaturedBooksSuccess(Books: books));
    });
   }
}
