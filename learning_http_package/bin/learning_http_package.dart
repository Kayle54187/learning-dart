import "package:http/http.dart" as http;
import "dart:convert";

void main(List<String> arguments) async {
  var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
  var response = await http.get(uri);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print('Title: ${data['title']}');
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }
}
