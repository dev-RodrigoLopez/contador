part of 'global_bloc.dart';


class GlobalState extends Equatable {
  
  const GlobalState({
    this.lpokemon = const [],
  });
  
  final List<String> lpokemon;


 GlobalState copyWith({
    List<String>? lpokemon,

  }) => GlobalState(
    lpokemon: lpokemon ?? this.lpokemon,
  );

  @override
  List<Object> get props => [ lpokemon ];

}
