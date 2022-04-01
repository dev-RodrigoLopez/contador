import 'package:bloc/bloc.dart';
import 'package:counter/data/provider/network/rest_api.dart';
import 'package:equatable/equatable.dart';

part 'global_event.dart';
part 'global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {


  GlobalBloc({
    required this.restApi,
  }) : super(const GlobalState()) {

    on<AddListaPokemonEvent>((event, emit) 
      => emit( state.copyWith( lpokemon: event.lpokemon  ) ),);

  }
  
  RestApi restApi;

  Future getPokemon() async{

    final newPokemones = await restApi.getPokemones();
    add( AddListaPokemonEvent( newPokemones ) );

  }
}
