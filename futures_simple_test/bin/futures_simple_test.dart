import "dart:async";

void main(List<String> arguments) async {
  Future<String> apiData() async {
    await Future.delayed(Duration(seconds: 2));
    return "Hello World";
  }

  print("Data Loading...");
  String data = await apiData();
  print("Api Data: $data");
  print("Data Loaded");
}
