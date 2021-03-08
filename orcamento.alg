Algoritmo "Gráfica"

Var
   // INPUTS
   aproveitamento_folha: inteiro
   tipo_papel: inteiro
   tipo_impressao: inteiro
   quantidade_desejada: inteiro
   NomeCliente: caracter

   //SOMAS
   folhas_necessarias: real
   valor_papel: real
   valor_total: real
   valor_impressao: real
   numero_impressoes: real
   valor_final: real
   valor_desconto: real

Inicio
   ESCREVAL ("************ORÇAMENTO************")
   ESCREVAL ("Digite o nome do cliente")
   leia (NomeCliente)

      //Tipo de Papel
      ESCREVAL ("Digite o tipo de papel desejado")
      ESCREVAL ("(1) Sulfite 75g")
      ESCREVAL ("(2) Couchê 180g")
      ESCREVAL ("(3) Couchê 250g")
      LEIA (tipo_papel)

      //Impressão só frente ou FV
      ESCREVAL ("Tipo de impressão")
      ESCREVAL ("(1) Só frente")
      ESCREVAL ("(2) Frente e Verso")
      LEIA (tipo_impressao)

      //Quantidade desejada
      ESCREVAL ("Quantidade desejada")
      LEIA (quantidade_desejada)

      //Aproveitamento por folha
      ESCREVAL ("Digite o aproveitamento por folha")
      LEIA (aproveitamento_folha)

      folhas_necessarias <- quantidade_desejada \ aproveitamento_folha

      SE (quantidade_desejada % aproveitamento_folha) >= 1 ENTAO
         folhas_necessarias <- folhas_necessarias + 1
      FIMSE

      //VALORES
      //VALOR PAPEL
      SE tipo_papel = 1 ENTAO
         valor_papel <- 0
      FIMSE
      SE tipo_papel = 2 ENTAO
         valor_papel <- 0.3
      FIMSE
      SE tipo_papel = 3 ENTAO
         valor_papel <- 0.5
      FIMSE

      //VALORES
      //VALOR IMPRESSÃO
      SE tipo_papel = 1 ENTAO
         valor_papel <- 0
      FIMSE
      SE tipo_papel = 2 ENTAO
         valor_papel <- 0.3
      FIMSE
      SE tipo_papel = 3 ENTAO
         valor_papel <- 0.5
      FIMSE

      SE tipo_impressao = 1 ENTAO
         numero_impressoes <- folhas_necessarias
      FIMSE

      SE tipo_impressao = 2 ENTAO
         numero_impressoes <- folhas_necessarias * 2
      FIMSE


      SE numero_impressoes <= 10 ENTAO
         valor_impressao <- 1.5
      FIMSE
      SE numero_impressoes >= 11 ENTAO
         valor_impressao <- 1.3
      FIMSE
      SE numero_impressoes >= 51 ENTAO
         valor_impressao <- 1.2
      FIMSE
      SE numero_impressoes >= 101 ENTAO
         valor_impressao <- 1.1
      FIMSE

      SE numero_impressoes >= 201 ENTAO
         valor_impressao <- 1
      FIMSE


      SE tipo_impressao = 1 ENTAO
         valor_total <- valor_papel + valor_impressao
      FIMSE
      SE tipo_impressao = 2 ENTAO
         valor_total <- valor_papel + valor_impressao + valor_impressao
      FIMSE
      valor_final <- valor_total * folhas_necessarias

      ESCREVAL("------- ORÇAMENTO -------")
      ESCREVAL("Cliente: ", NomeCliente)

      SE tipo_papel = 1 ENTAO
         escreval ("O papel escolhido é sulfite 75g.")
      FIMSE
      SE tipo_papel = 2 ENTAO
         escreval ("O papel escolhido é couchê 180g.")
      FIMSE
      SE tipo_papel = 3 ENTAO
         escreval ("O papel escolhido é couchê 250g.")
      FIMSE

      ESCREVAl ("Serão necessárias ", folhas_necessarias," folhas.")
      ESCREVAL ("O número de impressões será: ", numero_impressoes)
      ESCREVAL ("O valor de cada impressão ficou: R$ ",valor_impressao:2:2)
      ESCREVAL ("O valor do papel escolhido é: R$ ", valor_papel:2:2," por folha.")
      ESCREVAL ("O valor de cada folha ficou: R$ ", valor_total:2:2)
      ESCREVAL ("--------------------------------------------------------")
      ESCREVAL ("O Valor final R$ ", valor_final:2:2)
      valor_desconto <- valor_final - (valor_final * 0.05)
      ESCREVAL ("5% de desconto R$ ", valor_desconto:2:2)
      ESCREVAL ("--------------------------------------------------------")


Fimalgoritmo