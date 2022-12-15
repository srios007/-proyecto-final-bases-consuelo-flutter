// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:proyecto_bases_final_consuelo/app/models/models.dart';

class GetResidentsService {
  Future<Resident?> getResident() async {
    try {
      print('Get Residents service');
      final headers = {
        'x-token': '',
        'system': '',
      };
      const url = '';
      print('Voy a hacer la petición');
      final response =
          await http.get(Uri.parse(url), headers: headers).catchError((e) {
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

GetResidentsService getResidentsService = GetResidentsService();
