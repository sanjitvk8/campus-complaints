class Complaint {
  final int? id;
  final int userId;
  final String title;
  final String category;
  final String description;
  final String timestamp;
  final String status;

  Complaint({
    this.id,
    required this.userId,
    required this.title,
    required this.category,
    required this.description,
    required this.timestamp,
    this.status = 'Open',
  });

  Map<String, dynamic> toMap() {
    return {
      'complaint_id': id,
      'user_id': userId,
      'title': title,
      'category': category,
      'description': description,
      'timestamp': timestamp,
      'status': status,
    };
  }

  factory Complaint.fromMap(Map<String, dynamic> map) {
    return Complaint(
      id: map['complaint_id'],
      userId: map['user_id'],
      title: map['title'],
      category: map['category'],
      description: map['description'],
      timestamp: map['timestamp'],
      status: map['status'],
    );
  }
}
