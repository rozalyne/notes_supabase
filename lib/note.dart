class Note {
  // Note properties
  final int? id;
  String content;
  String? status; // Status can be 'important', 'completed', or null

  // Constructor with named parameters
  Note({
    this.id,
    required this.content,
    this.status, // Add status parameter
  });

  // Factory method to create a Note instance from JSON
  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'] as int, // Convert 'id' from JSON to int
      content: json['body'] as String, // Convert 'body' from JSON to String
      status: json['status'] as String?, // Convert 'status' from JSON to String
    );
  }

  // Method to convert Note instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'body': content, // Only content is serialized to JSON
      'status': status, // Include status in JSON serialization
    };
  }
}
