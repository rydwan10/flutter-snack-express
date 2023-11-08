import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snack_express/cubit/loading/loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit()
      : super(
          const LoadingState(
            isTransparent: false,
            isLoading: false,
          ),
        );

  void onLoadingShow({bool isTransparent = false}) => emit(
        LoadingState(
          isTransparent: isTransparent,
          isLoading: true,
        ),
      );

  void onLoadingDismiss({bool isTransparent = false}) => emit(
        LoadingState(
          isTransparent: isTransparent,
          isLoading: false,
        ),
      );
}
