int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calcPoints(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
           (team['2 pointers'] ?? 0) * 2 +
           (team['3 pointers'] ?? 0) * 3;
  }

  int a = calcPoints(teamA);
  int b = calcPoints(teamB);

  if (a > b) {
    return 1;
  } else if (a < b) {
    return 2;
  } else {
    return 0;
  }
}
