class RequestGetDTO {
  List<String>? tags;
  String? summary;
  String? operationId;
  List<String>? consumes;
  List<String>? produces;
  List<Parameters>? parameters;

  RequestGetDTO(
      {this.tags,
      this.summary,
      this.operationId,
      this.consumes,
      this.produces,
      this.parameters});

  RequestGetDTO.fromJson(Map<String, dynamic> json) {
    tags = json['tags'].cast<String>();
    summary = json['summary'];
    operationId = json['operationId'];
    consumes = json['consumes'].cast<String>();
    produces = json['produces'].cast<String>();
    if (json['parameters'] != null) {
      parameters = <Parameters>[];
      json['parameters'].forEach((v) {
        parameters!.add(new Parameters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['tags'] = this.tags;
    data['summary'] = this.summary;
    data['operationId'] = operationId;
    data['consumes'] = this.consumes;
    data['produces'] = this.produces;
    if (this.parameters != null) {
      data['parameters'] = this.parameters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parameters {
  String? name;
  bool? required;
  String? type;
  String? format;
  String? description;

  Parameters(
      {this.name, this.required, this.type, this.format, this.description});

  Parameters.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    required = json['required'];
    type = json['type'];
    format = json['format'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['required'] = this.required;
    data['type'] = this.type;
    data['format'] = this.format;
    data['description'] = this.description;
    return data;
  }
}
