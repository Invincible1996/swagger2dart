class RequestPostDTO {
  List<String>? tags;
  String? summary;
  String? operationId;
  List<String>? consumes;
  List<String>? produces;
  List<Parameters>? parameters;

  RequestPostDTO(
      {this.tags,
      this.summary,
      this.operationId,
      this.consumes,
      this.produces,
      this.parameters});

  RequestPostDTO.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tags'] = this.tags;
    data['summary'] = this.summary;
    data['operationId'] = this.operationId;
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
  String? description;
  bool? required;
  Schema? schema;

  Parameters({this.name, this.description, this.required, this.schema});

  Parameters.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    required = json['required'];
    schema =
        json['schema'] != null ? new Schema.fromJson(json['schema']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['required'] = this.required;
    if (this.schema != null) {
      data['schema'] = this.schema!.toJson();
    }
    return data;
  }
}

class Schema {
  String? ref;

  Schema({this.ref});

  Schema.fromJson(Map<String, dynamic> json) {
    ref = json['$ref'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$ref'] = this.ref;
    return data;
  }
}
