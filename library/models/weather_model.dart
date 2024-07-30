class WeatherModel{
  final String name, region, condition, iconUrl;
  final int humidity;
  WeatherModel(
  {
    required this.name,
    required this.region,
    required this.condition,
    required this.humidity,
    required this.iconUrl

}

      );
  factory WeatherModel.fromJson(Map<String,dynamic> data){
    return WeatherModel(name: data['location']['name'],
    region: data['location']['region'],
  condition: data['current']['condition']['text'],
  humidity: data['current']['humidity'],
    iconUrl: data['current']['condition']['icon']
    );
  }

}
