class HomepageEventsCardModel {
  final int eventid;
  final String eventtype;
  final String team_1;
  final String team_2;
  final String eventname;
  final DateTime date;
  final String prizepool;

  HomepageEventsCardModel(this.eventid, this.eventtype, this.team_1,
      this.team_2, this.eventname, this.date, this.prizepool);
}

class HomepageEventsModel {
  final List<HomepageEventsCardModel> today_cricket;
  final List<HomepageEventsCardModel> today_kabaddi;
  final List<HomepageEventsCardModel> today_football;
  final List<HomepageEventsCardModel> today_bgmi;
  final List<HomepageEventsCardModel> today_cod;
  final List<HomepageEventsCardModel> today_freefire;
  final List<HomepageEventsCardModel> tomorrow_cricket;
  final List<HomepageEventsCardModel> tomorrow_kabaddi;
  final List<HomepageEventsCardModel> tomorrow_football;
  final List<HomepageEventsCardModel> tomorrow_bgmi;
  final List<HomepageEventsCardModel> tomorrow_cod;
  final List<HomepageEventsCardModel> tomorrow_freefire;

  HomepageEventsModel(
      this.today_cricket,
      this.today_kabaddi,
      this.today_football,
      this.today_bgmi,
      this.today_cod,
      this.today_freefire,
      this.tomorrow_cricket,
      this.tomorrow_kabaddi,
      this.tomorrow_football,
      this.tomorrow_bgmi,
      this.tomorrow_cod,
      this.tomorrow_freefire);
}
