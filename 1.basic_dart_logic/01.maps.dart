void main() {
  final Map<String, dynamic> people = {
    'name': 'Adilson',
    'age': 21,
    'isDev': true,
    'skills': <String>['mobile'],
    'moreSkills': {
      1: 'excell',
      2: 'ict',
    }
  };

  print(people);
  print('Name: ${people['name']}');
  print('More Skills: ${people['moreSkills']}');
  print('More Skills: ${people['moreSkills'][1]}');
  print('More Skills: ${people['moreSkills'][2]}');
}
