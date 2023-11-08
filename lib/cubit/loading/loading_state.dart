import 'package:equatable/equatable.dart';

class LoadingState extends Equatable {
  final bool isLoading;
  final bool isTransparent;

  const LoadingState({
    required this.isLoading,
    required this.isTransparent,
  });

  @override
  List<Object?> get props => [isLoading, isTransparent];
}
