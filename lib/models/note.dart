class Note {
  int? _id;
  String? _title;
  String? _description;
  String? _date;
  int? _priority;

  Note(this._title, this._date, this._priority, [this._description]);

  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  get id => _id;

  set id(value) => _id = value;

  get title => _title;

  set title(value) => _title = value;

  get description => _description;

  set description(value) => _description = value;

  get date => _date;

  set date(value) => _date = value;

  get priority => _priority;

  set priority(value) => _priority = value;

  //Convert note object into map object

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _date;
    map['date'] = _date;

    return map;
  }

  //Extract a note object from the map object

  Note.fromMapObject(Map<String, dynamic> map) {
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _priority = map['priority'];
    _date = map['date'];
  }
}
