// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:intl/intl.dart';
//
// class WeeklyLoadingIndicator extends StatefulWidget {
//   @override
//   _WeeklyLoadingIndicatorState createState() => _WeeklyLoadingIndicatorState();
// }
//
// class _WeeklyLoadingIndicatorState extends State<WeeklyLoadingIndicator> {
//   int _currentWeek = 0;
//   double _progress = 0.0;
//   final int _totalDaysInWeek = DateTime.saturday - DateTime.sunday + 1;
//
//   @override
//   void initState() {
//     super.initState();
//     _updateProgress();
//   }
//
//   // Utility function to calculate the week of the year
//   int _calculateWeekOfYear(DateTime date) {
//     int dayOfYear = int.parse(DateFormat('D').format(date));
//     int firstDayOfYear = int.parse(DateFormat('D').format(DateTime(date.year, 1, 1)));
//     return ((dayOfYear - firstDayOfYear) / 7).ceil() + 1;
//   }
//
//   void _updateProgress() {
//     DateTime currentDate = DateTime.now();
//     int currentWeek = _calculateWeekOfYear(currentDate);
//
//     // If the current week has changed, update the progress for the new week
//     if (_currentWeek != currentWeek) {
//       _currentWeek = currentWeek;
//       _progress = 0.0;
//     } else {
//       // Calculate the progress percentage based on the remaining days in the week
//       int daysRemaining = DateTime.saturday - currentDate.weekday;
//       double progressPercentage = 1.0 - (daysRemaining / _totalDaysInWeek);
//       _progress = progressPercentage.clamp(0.0, 1.0);
//     }
//
//     setState(() {});
//
//     // Schedule the next update for the start of the next week
//     DateTime nextWeekStartDate = currentDate.add(Duration(days: 1));
//     Duration timeUntilNextUpdate = nextWeekStartDate.difference(DateTime.now());
//     Future.delayed(timeUntilNextUpdate, _updateProgress);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Padding(
//           padding: EdgeInsets.all(15.0),
//           child: LinearPercentIndicator(
//             width: MediaQuery.of(context).size.width * .75,
//             animation: true,
//             lineHeight: 25.0,
//             animationDuration: 2500,
//             percent: _progress,
//             center: Text("Week $_currentWeek"),
//             barRadius: Radius.circular(10),
//             progressColor: Colors.blueAccent,
//           ),
//         ),
//         // Add the row with week1, week2, etc., as per your requirement
//         // You can customize this row as needed.
//         // For example, you can use a ListView.builder to create this row dynamically.
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

class WeeklyLoadingIndicator extends StatefulWidget {
  @override
  _WeeklyLoadingIndicatorState createState() => _WeeklyLoadingIndicatorState();
}

class _WeeklyLoadingIndicatorState extends State<WeeklyLoadingIndicator> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _updateProgress();
  }

  void _updateProgress() {
    // Get the current date
    DateTime currentDate = DateTime.now();

    // Calculate the target date (end of the week - Sunday)
    DateTime targetDate = currentDate.add(Duration(days: DateTime.sunday - currentDate.weekday));

    // Calculate the progress percentage
    int totalDaysInWeek = DateTime.saturday - DateTime.sunday + 1;
    int daysRemaining = targetDate.difference(currentDate).inDays;
    double progressPercentage = (totalDaysInWeek - daysRemaining) / totalDaysInWeek;

    setState(() {
      // Set _progress to 1.0 if the week is already complete (progressPercentage < 0)
      _progress = progressPercentage.clamp(0.0, 1.0);
    });

    // Schedule the next update for the start of the next week
    DateTime nextWeekStartDate = targetDate.add(Duration(days: 1));
    Duration timeUntilNextUpdate = nextWeekStartDate.difference(DateTime.now());
    Future.delayed(timeUntilNextUpdate, _updateProgress);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width * .7,
        animation: true,
        lineHeight: 25.0,
        animationDuration: 2500,
        percent: _progress,
        center: Text((_progress * 100).toStringAsFixed(1) + "%"),
        barRadius: Radius.circular(10),
        progressColor: Colors.blueAccent,
      ),
    );
  }
}
