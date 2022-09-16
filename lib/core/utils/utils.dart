import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
    key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
    value: (item) => List.generate(
        item % 4 + 1, (index) => Event('Event $item | ${index + 1}')))
  ..addAll({
    kToday: [
      Event('Today\'s Event 1'),
      Event('Today\'s Event 2'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

List<Color> selectedColors = [
  Colors.white,
  Colors.red.shade200,
  Colors.pink.shade200,
  Colors.purple.shade200,
  Colors.deepPurple.shade200,
  Colors.indigo.shade200,
  Colors.blue.shade200,
  Colors.lightBlue.shade200,
  Colors.cyan.shade200,
  Colors.teal.shade200,
  Colors.green.shade200,
  Colors.lightGreen.shade200,
  Colors.lime.shade200,
  Colors.yellow.shade200,
  Colors.amber.shade200,
  Colors.orange.shade200,
  Colors.deepOrange.shade200,
  Colors.brown.shade200,
  Colors.grey.shade300,
  Colors.blueGrey.shade200,
  Colors.black45,
];
