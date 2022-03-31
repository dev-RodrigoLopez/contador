part of 'global_bloc.dart';


class GlobalState extends Equatable {
  
  final List<String> lpokemon;

  const GlobalState({
    this.lpokemon = const [],
  });

 GlobalState copyWith({
    List<String>? lpokemon,

  }) => GlobalState(
    lpokemon: lpokemon ?? this.lpokemon,
  );

  @override
  List<Object> get props => [ lpokemon ];

}
