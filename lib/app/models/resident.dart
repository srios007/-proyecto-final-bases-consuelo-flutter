// To parse this JSON data, do
//
//     final resident = residentFromJson(jsonString);

import 'dart:convert';

Resident residentFromJson(String str) => Resident.fromJson(json.decode(str));

String residentToJson(Resident data) => json.encode(data.toJson());

class Resident {

    factory Resident.fromJson(Map<String, dynamic> json) => Resident(
        metadata: List<Metadatum>.from(json['metadata'].map((x) => Metadatum.fromJson(x))),
        rows: List<List<String>>.from(json['rows'].map((x) => List<String>.from(x.map((x) => x)))),
    );
    Resident({
        this.metadata,
        this.rows,
    });

    List<Metadatum>? metadata;
    List<List<String>>? rows;

    Map<String, dynamic> toJson() => {
        'metadata': List<dynamic>.from(metadata!.map((x) => x.toJson())),
        'rows': List<dynamic>.from(rows!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    };
}

class Metadatum {

    factory Metadatum.fromJson(Map<String, dynamic> json) => Metadatum(
        name: json['name'],
    );
    Metadatum({
        this.name,
    });

    String? name;

    Map<String, dynamic> toJson() => {
        'name': name,
    };
}
