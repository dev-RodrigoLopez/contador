part of 'global_bloc.dart';

abstract class GlobalEvent extends Equatable{

  const GlobalEvent();

  @override
  List<Object> get props => [];

}



class AddListaPokemonEvent extends GlobalEvent{

  final List<String> lpokemon;

  const AddListaPokemonEvent(this.lpokemon);

}