import '../constant/link_api.dart';
import '../class/crud.dart';

class WeatherData {
  Crud crud;
  WeatherData(this.crud);
  getData(String cityName) async {
    var response = await crud.postData(AppLinkApi(cityName).server);

    return response.fold((l) => l, (r) => r);
  }
}
