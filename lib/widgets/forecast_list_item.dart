part of 'widgets.dart';

class ForecastListItem extends StatelessWidget {
  final Weather forecast;
  const ForecastListItem({Key key, this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 36.0,
            width: 36.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500.0),
              color: forecast.isToday == true ? primaryColor : Colors.white,
            ),
            child: Image(
              image: AssetImage(
                forecast.isToday == true
                    ? 'assets/sunny_light.png'
                    : forecast.weatherIcon,
              ),
              height: 24.0,
              width: 24.0,
            ),
          ),
          Container(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  forecast.name,
                  style: normalBoldFontStyle,
                ),
                Text(
                  forecast.date,
                ),
              ],
            ),
          ),
          Text(
            forecast.temperature,
          ),
        ],
      ),
    );
  }
}
