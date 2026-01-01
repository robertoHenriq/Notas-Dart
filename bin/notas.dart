import 'dart:io';
void main() {
  List<String> notas = <String>[];
  print("   (\_/)");
  print("  =(°w°)=");
  print("   )   (  ");
  print("  (__ __)");

  // Corpo
  print(" /------\\");
  print("* / |    ||  ");
  print("  ~~   ~~");
  menu( notas);

  
}

String getComando(){
  print("Selecione uma opção: /1 - Adicionar nota /2 - Listar notas /3 - Sair");
  List<String>? comandos = <String>["1", "2", "3"];
  String? comando = "";

  comando = stdin.readLineSync();
  if(comando == null || !comandos.contains(comando)){
    print("Comando inválido");
    return getComando();
  }
  return comando;
}

List<String> adicionarNota(List<String> notas){
  print("Digite uma nota que deseja adicionar:");
  String? nota = "";
  nota = stdin.readLineSync();

  if(nota == null || nota.isEmpty){
    print("Nota inválida");
    adicionarNota(notas);
  }
  notas.add(nota!);
  return notas;
}

void listarNotas(List<String> notas){
  for(var i = 0; i< notas.length; i++){
    print(notas[i]);
  }
}

void menu(List<String> notas){
  String comando = getComando();

  if(comando == "1"){
    adicionarNota(notas);
    menu(notas);
  } else if(comando == "2"){
    listarNotas(notas);
    menu(notas);
  } else if(comando == "3"){
    print("Saindo...");
    exit(0);
  }
}

                                                          
                                                          

                                                          