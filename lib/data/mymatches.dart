import 'package:crick11/data/contests.dart';

import 'events.dart';

final cricketmatches =
    events.where((element) => (element['event_type'] == 'Cricket'));
final kabaddimatches =
    events.where((element) => (element['event_type'] == 'Kabaddi'));
final footballmatches =
    events.where((element) => (element['event_type'] == 'Football'));
final bgmimatches =
    events.where((element) => (element['event_type'] == 'BGMI'));
final codmatches = events.where((element) => (element['event_type'] == 'COD'));
final freefirematches =
    events.where((element) => (element['event_type'] == 'FreeFire'));

final mymatches = {
  'cricket': func(cricketmatches),
  'kabaddi': func(kabaddimatches),
  'football': func(footballmatches),
  'bgmi': func(bgmimatches),
  'cod': func(codmatches),
  'freefire': func(freefirematches)
};

func(x) {
  final matches = [<Map>[], <Map>[], <Map>[]];
  for (var i in x) {
    final id = i['event_id'];
    for (var j in contests) {
      if (id == j['event_id'] && j['participation'] == true) {
        if (calculateDifference(i['date&time']) == 0) {
          matches[0].add(j);
        } else if (calculateDifference(i['date&time']) < 1) {
          matches[1].add(j);
        } else if (calculateDifference(i['date&time']) == 1) {
          matches[2].add(j);
        }
      }
    }
  }
  return matches;
}

int calculateDifference(DateTime date) {
  DateTime now = DateTime.now();
  return DateTime(date.year, date.month, date.day)
      .difference(DateTime(now.year, now.month, now.day))
      .inDays;
}
