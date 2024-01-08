part of 'index_teacher_collection_bloc.dart';

sealed class IndexTeacherCollectionEvent extends Equatable {
  const IndexTeacherCollectionEvent();

  @override
  List<Object> get props => [];
}
class GetTeacherCollectionEvent extends IndexTeacherCollectionEvent{
     final dynamic id;

  GetTeacherCollectionEvent({required this.id});
@override
  List<Object> get props => [id];
}