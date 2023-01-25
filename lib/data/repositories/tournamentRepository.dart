import '../../core/entities/tournament.dart';

class TournamentRepository {
  static List<Tournament> getTournament() => List.generate(
        20,
        (index) => Tournament(
            id: index + 1,
            name: 'Torneo ${index + 1}',
            urlProfile:
                'https://cdn.pixabay.com/photo/2016/11/29/02/05/audience-1866738_960_720.jpg',
            matchDate: 'Saturday'),
      );
}
