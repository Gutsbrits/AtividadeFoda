// Importa a biblioteca necessária para entrada de dados pelo terminal.
import 'dart:io';

void main() {
  // A Lista de tipos de arquivos sugeridos que são aceitos.
  List<String> tiposPermitidos = ['pdf', 'jpg', 'png', 'docx'];
  String tipoArquivo;

  // O "do" icia um loop que garante que o usuário insira um tipo de arquivo válido
  do {
  // Por que o "do" invés do while? porque precisa pedir ao usuário para digitar um tipo de arquivo, independentemente de qual tipo de arquivo ele digite primeiro. O loop só termina quando o usuário fornece um valor válido, ou seja, um valor que está na lista "tiposPermitidos".

    // Solicita que o usuário digite um tipo de arquivo
    stdout.write("Digite o tipo de arquivo (${tiposPermitidos.join(', ')}): ");
    
    // Lê a entrada, remove espaços extras e converte para minúsculas
    tipoArquivo = stdin.readLineSync()?.trim().toLowerCase() ?? '';
    
    // Verifica se o tipo digitado não está na lista de permitidos
    if (!tiposPermitidos.contains(tipoArquivo)) {
      print("Tipo de arquivo inválido. Tente novamente.");
    }
    // Repete até que o usuário forneça um tipo válido
  } while (!tiposPermitidos.contains(tipoArquivo));

  // Exibe a confirmação do tipo de arquivo aceito
  print("Tipo de arquivo permitido: $tipoArquivo");
}
