import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uik/data/service/collection_service.dart';
import 'package:uik/domain/models/top_collection.dart';

part 'top_collection_event.dart';
part 'top_collection_state.dart';

class TopCollectionBloc extends Bloc<TopCollectionEvent, TopCollectionState> {
  final CollectionServiceImplement collectionservice;
  TopCollectionBloc(this.collectionservice) : super(LoadingTopCollection()) {
    on<GetTopCollection>((event, emit) async {
      var topcollectionlist = await collectionservice.getTopCollection();
      List<TopCollectionModel> finaldata = List.generate(
          topcollectionlist.length,
          (index) =>
              TopCollectionModel.fromMap(topcollectionlist[index]));
      emit(SuccessTopCollection(topcollectionlist: finaldata));
    });
  }
}
