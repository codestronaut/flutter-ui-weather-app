part of 'pages.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WeatherCard(),
          Text(
            fiveForecast,
            style: normalFontStyle,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 265.0,
            child: ListView(
              children: fiveDaysForecast.map((forecast) {
                return ForecastListItem(
                  forecast: forecast,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
