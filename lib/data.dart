
class CricketMatch {
  final String id;
  final String dateTimeGMT;
  final String matchType;
  final String status;
  final String team1;
  final String team2;
  final String team1Image;
  final String team2Image;
  final String t1s;
  final String t2s;

  CricketMatch({
    required this.id,
    required this.dateTimeGMT,
    required this.matchType,
    required this.status,
    required this.team1,
    required this.team2,
    required this.team1Image,
    required this.team2Image,
    required this.t1s,
    required this. t2s
  });

  factory CricketMatch.fromJson(Map<String, dynamic> json) {
    return CricketMatch(
        id: json['id']  ?? "",
        dateTimeGMT: json['dateTimeGMT'] ?? "",
        matchType: json['matchType'] ?? "",
        status: json['status'] ?? "",
        team1: json['t1'] ?? "",
        team2: json['t2'] ?? "" ,
        team1Image: json['t1img'] ?? 'https://images.unsplash.com/photo-1618022325802-7e5e732d97a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1948&q=80',
        team2Image: json['t2img'] ?? 'https://images.unsplash.com/photo-1618022325802-7e5e732d97a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1948&q=80',
        t1s: json['t1s'] ?? "",
        t2s: json['t2s'] ?? ""

    );
  }
}