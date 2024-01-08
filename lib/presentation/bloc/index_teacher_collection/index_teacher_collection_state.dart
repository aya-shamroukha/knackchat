// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'index_teacher_collection_bloc.dart';

sealed class IndexTeacherCollectionState extends Equatable {
  const IndexTeacherCollectionState();
  
  @override
  List<Object> get props => [];
}

final class IndexTeacherCollectionInitial extends IndexTeacherCollectionState {}
// ignore: must_be_immutable
class SuccessIndexTeacherCollection extends IndexTeacherCollectionState {
  List<IndexTeacherCollectionModel> indexCollection;
  @override
  List<Object> get props => [indexCollection];
  SuccessIndexTeacherCollection({
    required this.indexCollection,
  });
}
