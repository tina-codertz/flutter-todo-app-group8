class Task{
  final String id;
  String title;
  bool isCompleted;

  Task ({
    required this.id,
    required this.title,
     this.isCompleted=false});

  //For json serialization we use shared_preferences to store strings
  Map<String,dynamic> toJson() =>{
    
      "id":id,
      "title":title,
      "isCompleted":isCompleted,

    };
   
  

  factory Task.fromJson(Map<String,dynamic> json) => Task(
        id:json['id'],
        title:json['title'],
        isCompleted:json['isCompleted']

  );
}