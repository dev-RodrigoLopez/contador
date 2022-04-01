import 'dart:convert';
import 'package:http/http.dart' as http;

class RestApi{
  
  final List<String> lpokemones = [];
  Uri url = Uri.parse( 'https://pokeapi.co/api/v2/pokemon/1' );

  Future<List<String>> getPokemones() async{


    for( var i = 1; i <= 10; i++ ){

      try{

        // final url = '$_basePokemonURL/$i';
        // print( url );

        url = Uri.parse( 'https://pokeapi.co/api/v2/pokemon/$i' );
        final resp = await http.get( url );
        final respData = json.decode( resp.body ) as Map<String, dynamic>;
        lpokemones.add( respData['name'].toString() );

      }catch(error){
        print( error );
        return lpokemones;
      }
    }
    return lpokemones;
  }
}
