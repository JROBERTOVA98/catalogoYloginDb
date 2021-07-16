class Usuario {
  String correo;
  String password;
  

  Usuario(this.correo, this.password);
  Usuario.fromMap(Map map) {
    correo = map[correo];
    password = map[password];
  
  }
}