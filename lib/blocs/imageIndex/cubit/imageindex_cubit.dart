import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'imageindex_state.dart';

class ImageindexCubit extends Cubit<ImageindexState> {
  int activeIndex = 0;
  ImageindexCubit() : super(ImageindexInitial());
  static ImageindexCubit get(context) => BlocProvider.of(context);
  setIndex(int index) {
    activeIndex = index;
    emit(SetIndexState());
  }
}
