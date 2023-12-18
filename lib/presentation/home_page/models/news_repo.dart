// import 'dart:convert';

// import 'package:chirag_s_application/presentation/home_page/models/news_model.dart';
// import 'package:http/http.dart' as http;

// class NewsRepository {
//   Future<CategoriesNewsModel> FetchCategoriesNewsapi(String category) async {
//     String url =
//         "https://newsapi.org/v2/everything?q=${category}&apiKey=a2336f3f1da8428caeb7bad4fb3e1bc7";

//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       final body = jsonDecode(response.body);
//       return CategoriesNewsModel.fromJson(body);
//     }
//     throw Exception('Error');
//   }
// }
