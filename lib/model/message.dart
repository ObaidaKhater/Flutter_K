import 'package:flutter/material.dart';

class Message {
  String id;
  DateTime date;
  TimeOfDay time;
  String descriptionMessage;
  String idSendPerson;

  Message(this.id, this.descriptionMessage, this.idSendPerson, this.date,
      this.time);
}
