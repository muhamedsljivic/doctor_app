class Patient {
  final String name;
  final String typeOfSickness;
  final DateTime? time;
  final String? id;
  final List<String> images;

  Patient({
    required this.name,
    required this.typeOfSickness,
    required this.time,
    required this.images,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'typeOfSickness': typeOfSickness,
      'time': time,
      'images': images,
      'id': id,
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      name: map['name'] ?? '',
      images: List<String>.from(map['images']),
      id: map['_id'],
      typeOfSickness: map['typeOfSickness'] ?? "",
      time: map['time'],
    );
  }
}
