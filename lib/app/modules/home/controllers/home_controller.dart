import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  getTasks() async {
    try {
      print('voy a hacer la petición');
      // final headers = {};
      const url = 'http://localhost:4000/tasksGet';
      // print('Voy a hacer la petición');
      final response = await http
          .get(
        Uri.parse(url),
        // headers: headers,
      )
          .catchError((e) {
        print('ERROR: $e');
      });
      print('Hice la petición');

      final responseData = response.body;
      print(responseData);
    } catch (e) {
      print(e);
    }
  }
}
