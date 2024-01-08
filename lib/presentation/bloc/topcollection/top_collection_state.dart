part of 'top_collection_bloc.dart';

sealed class TopCollectionState extends Equatable {
  const TopCollectionState();

  @override
  List<Object> get props => [];
}

final class TopCollectionInitial extends TopCollectionState {}

 // ignore: must_be_immutable
 class SuccessTopCollection extends TopCollectionState {
  List<TopCollectionModel> topcollectionlist;
  SuccessTopCollection({required this.topcollectionlist});
  @override
  List<Object> get props => [topcollectionlist];
}
final class LoadingTopCollection extends TopCollectionState{}
final class ErrorTopCollection extends TopCollectionState{}
