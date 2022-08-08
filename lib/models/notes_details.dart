class Note {
  String _image, _title, _description, _time, _solution, _code, _output;
  int _id;

  Note(
    this._id,
    this._title,
    this._description,
    this._time,
    this._solution,
    this._code,
    this._output,
    this._image,
  );

  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get time => _time;
  String get solution => _solution;
  String get code => _code;
  String get output => _output;
  String get image => _image;

  set title(String newTitle) {
    if (newTitle.length <= 200) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 200) {
      this._description = newDescription;
    }
  }

  set time(String newTime) {
    if (newTime.length <= 200) {
      this._time = newTime;
    }
  }

  set solution(String newSolution) {
    if (newSolution.length <= 200) {
      this._solution = newSolution;
    }
  }

  set code(String newCode) {
    if (newCode.length <= 200) {
      this._code = newCode;
    }
  }

  set output(String newOutput) {
    if (newOutput.length <= 200) {
      this._output = newOutput;
    }
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map["id"] = _id;
    }
    map["title"] = _title;
    map["description"] = _description;
    map["time"] = _time;
    map["solution"] = _solution;
    map["code"] = _code;
    map["output"] = _output;
    map["image"] = _image;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map["id"];
    this._title = map["title"];
    this._description = map["description"];
    this._time = map["time"];
    this._solution = map["solution"];
    this._code = map["code"];
    this._output = map["output"];
    this._image = map["image"];
  }
}
