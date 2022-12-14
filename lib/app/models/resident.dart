class Resident {
  Resident({
    this.identificacionPersona,
    this.tipoIdentificacion,
    this.nombreCompleto,
    this.generoPersona,
    this.codApartamento,
    this.codBloque,
  });

  Resident.fromJson(Map<String, dynamic> json) {
    identificacionPersona = json['IDENTIFICACION_PERSONA'];
    tipoIdentificacion = json['TIPO_IDENTIFICACION'];
    nombreCompleto = json['NOMBRE_COMPLETO'];
    generoPersona = json['GENERO_PERSONA'];
    codApartamento = json['COD_APARTAMENTO'];
    codBloque = json['COD_BLOQUE'];
  }
  String? identificacionPersona;
  String? tipoIdentificacion;
  String? nombreCompleto;
  String? generoPersona;
  int? codApartamento;
  String? codBloque;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['IDENTIFICACION_PERSONA'] = identificacionPersona;
    data['TIPO_IDENTIFICACION'] = tipoIdentificacion;
    data['NOMBRE_COMPLETO'] = nombreCompleto;
    data['GENERO_PERSONA'] = generoPersona;
    data['COD_APARTAMENTO'] = codApartamento;
    data['COD_BLOQUE'] = codBloque;
    return data;
  }
}
