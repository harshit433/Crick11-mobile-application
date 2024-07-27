class ContestCardModel {
  final String contest_type;
  final int entry_fee;
  final String prize_pool;
  final int left_slots;
  final int total_slots;
  final String first_prize;
  final int percentage;
  final int number_of_teams;
  final bool participating;

  ContestCardModel(
      this.contest_type,
      this.entry_fee,
      this.prize_pool,
      this.left_slots,
      this.total_slots,
      this.first_prize,
      this.percentage,
      this.number_of_teams,
      this.participating);
}

class MyTeamsCardModel {
  final String team_name;
  final int team_1;
  final int team_2;
  final String team1_name;
  final String team2_name;
  final String team_captain;
  final String team_vicecaptain;
  final int WK;
  final int AR;
  final int Bats;
  final int Bowls;

  MyTeamsCardModel(
      this.team_name,
      this.team1_name,
      this.team2_name,
      this.team_captain,
      this.team_vicecaptain,
      this.team_1,
      this.team_2,
      this.WK,
      this.AR,
      this.Bats,
      this.Bowls);
}

class ContestsModel {
  final List<ContestCardModel> contestcards;
  final List<ContestCardModel> mycontestcards;
  final List<MyTeamsCardModel> myteamscards;

  ContestsModel(
    this.contestcards,
    this.mycontestcards,
    this.myteamscards,
  );
}
