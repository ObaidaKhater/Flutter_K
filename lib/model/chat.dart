import 'package:flutter_k/model/message.dart';

class Chat {
  String idFirstPerson;
  String idSecondPerson;
  List<Message> messages;

  Chat(this.idFirstPerson, this.idSecondPerson, this.messages);
}
