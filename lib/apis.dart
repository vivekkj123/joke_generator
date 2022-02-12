import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:joker/joke_generator/joke_generator.dart';

Future<JokeGenerator> getJokes({required firstname, required lastname}) async {
  if (firstname == "" && lastname == "") {
    final _response =
        await http.get(Uri.parse("https://api.icndb.com/jokes/random"));
  }
  final _response = firstname.toString().isEmpty && lastname.toString().isEmpty
      ? await http.get(Uri.parse("https://api.icndb.com/jokes/random"))
      : await http.get(Uri.parse(
          "https://api.icndb.com/jokes/random?firstName=$firstname&lastName=$lastname"));
  final _responseAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = JokeGenerator.fromJson(_responseAsJson);
  return _data;
}
