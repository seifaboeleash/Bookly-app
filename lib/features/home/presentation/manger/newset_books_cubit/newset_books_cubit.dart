import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());

  HomeRepo homeRepo  = HomeRepoImpl();

 Future<void> fetchNewsetBooks() async{
  emit(NewsetBooksLoading());
  var result = await homeRepo.fetchNewsetBooks();
   result.fold((Failure){
      emit(NewsetBooksFailure(errMessage: Failure.errMessage));
    }, (books){
      emit(NewsetBooksSuccess(Books: books));
    });
 }
}
