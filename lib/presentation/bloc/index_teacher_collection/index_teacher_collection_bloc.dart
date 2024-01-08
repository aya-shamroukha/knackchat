import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uik/data/service/collection_service.dart';
import 'package:uik/domain/models/index_collection/indaex_collection.dart';

part 'index_teacher_collection_event.dart';
part 'index_teacher_collection_state.dart';

class IndexTeacherCollectionBloc extends Bloc<IndexTeacherCollectionEvent, IndexTeacherCollectionState> {
  IndexTeacherCollectionBloc() : super(IndexTeacherCollectionInitial()) {
    on<GetTeacherCollectionEvent>((event, emit) async{
      var getcollection=await CollectionServiceImplement().indexTeacherCollection(event.id);
 List<IndexTeacherCollectionModel> getcollectiondata=List.generate(getcollection['data'].length, (index) => IndexTeacherCollectionModel.fromMap(getcollection['data'][index]));
           emit(SuccessIndexTeacherCollection(indexCollection: getcollectiondata));

    });
  }
}
