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
        parameters!.add(Parameters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['tags'] = tags;
    data['summary'] = summary;
    data['operationId'] = operationId;
    data['consumes'] = consumes;
    data['produces'] = produces;
    if (parameters != null) {
      data['parameters'] = parameters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parameters {
  String? name;
  String? description;
  bool? required;
  Map<String, dynamic>? schema;

  Parameters({this.name, this.description, this.required, this.schema});

  Parameters.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    required = json['required'];
    schema = json['schema'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['description'] = description;
    data['required'] = required;
    data['schema'] = schema;
    return data;
  }
}

// class Schema {
//   String? $ref;

//   Schema({this.$ref});

//   Schema.fromJson(Map<String, dynamic> json) {
//     $ref = json['r$ref'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['r$ref'] = this.ref;
//     return data;
//   }
// }
