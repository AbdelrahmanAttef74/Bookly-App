import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../Data/models/book_model/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit() : super(SimilarBooksInitial());
}
