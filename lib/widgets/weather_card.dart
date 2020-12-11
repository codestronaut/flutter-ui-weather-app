part of 'widgets.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var todayWeather = Weather(
      name: 'Sunny',
      temperature: '39 °C',
      location: 'Jakarta',
      weatherIcon: 'assets/sunny.png',
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todayWeather.location,
                  style: mediumFontStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      todayWeather.name,
                      style: normalFontStyle,
                    ),
                    Image(
                      height: 42.0,
                      width: 42.0,
                      image: AssetImage(todayWeather.weatherIcon),
                    ),
                  ],
                ),
                Text(
                  todayWeather.temperature,
                  style: bigBoldFontStyle,
                ),
                Container(
                  margin: EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/sunrise.png'),
                              height: 46.0,
                              width: 46.0,
                            ),
                            Text(
                              'Sunrise',
                              style: normalBoldFontStyle,
                            ),
                            Text(
                              '05:04',
                              style: smallFontStyle,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/windy.png'),
                              height: 46.0,
                              width: 46.0,
                            ),
                            Text(
                              'Wind',
                              style: normalBoldFontStyle,
                            ),
                            Text(
                              '10:32',
                              style: smallFontStyle,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/sunset.png'),
                              height: 46.0,
                              width: 46.0,
                            ),
                            Text(
                              'Sunset',
                              style: normalBoldFontStyle,
                            ),
                            Text(
                              '18:30',
                              style: smallFontStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/pattern.png'),
        ],
      ),
    );
  }
}
