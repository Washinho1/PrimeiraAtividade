Algoritmo "Cliente Cadastro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Descrição   : programa cria um usuario, adiciona destino e faz consulta dos usuarios
// Autor(a)    : Nome do(a) aluno(a) washingotn william pereira da silva junior
// Data atual  : 22/06/2022
Var
// Seção de Declarações das variáveis 
nome : vetor [1..5] de caractere
email : vetor [1..5] de caractere
cpf : vetor [1..5] de caractere
origem: vetor [1..5] de caractere
destino : vetor [1..5] de caractere
opcao, voltarmenu: inteiro
quantidade: inteiro
adiciona: inteiro

procedimento criadestino()
inicio
limpatela
    escreval ("escreva o ID do usuario")
    leia (quantidade)
    escreval("escreva o destino")
    leia (destino[quantidade])
    escreval (" ")
    escreval (destino[quantidade]+ " foi adcionado ao destino do cliente " + nome[quantidade])
    adiciona <- 1
     escreval(" ")
     escreval(" ")
             escreval("Deseja cadastrar mais um destino?")
             escreval("Digite 1 para sim e 2 para não")
        leia (adiciona)
       se adiciona = 1 entao
       criadestino()
       fimse
       se adiciona = 2 entao
       escreval("voltando ao menu")
       fimse
fimprocedimento

procedimento chamaMenu()
             inicio
                escreval("-------Menu Principal-------")
                escreval("Digite o numero da função")
                escreval("1 - Cadastrar um usuario")
                escreval("2 - Cadastrar um destino")
                escreval("3 - Consultar todos os usuarios")
                escreval("0 - Sair")
                escreval("------- escreva o numero da escolha------")
                leia(opcao)
fimprocedimento

procedimento criaCliente()
inicio

  se (quantidade <= 5) entao        // cria limitador de usuarios
     limpatela
       escreval ("Nome: ")
     leia (nome[quantidade])

       escreval("Email:")
     leia (email[quantidade])

       escreval("Cpf: ")
     leia (cpf[quantidade])

       escreval("Origem: ")
     leia (origem[quantidade])
     escreval("usuario cadastrado com sucesso com o ID: " , quantidade)
     quantidade <- quantidade+1
     
     escreval(" ")
     escreval(" ")
     
     escreval("Deseja cadastrar mais um usuario?")
     escreval("Digite 1 para sim e 2 para não")
        leia (adiciona)
       se adiciona = 1 entao
       CriaCliente()                           // se desejar volta a função novamente
       fimse
       se adiciona = 2 entao
       escreval("voltando ao menu")
       fimse

senao
escreval ("numero de cadastro indisponivel")
     fimse

fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
quantidade <- 1

enquanto verdadeiro faca                            // repetição para voltaro ao menu
                   limpatela
                escreval("-------Menu Principal-------")
                escreval("Digite o numero da função")
                escreval("1 - Cadastrar um usuario")
                escreval("2 - Cadastrar um destino (necessario id do usuario)")
                escreval("3 - Consultar todos os usuarios e/ou pegar ID")
                escreval("ESC - Sair")
                escreval("------- escreva o numero da escolha------")
                leia(opcao)


               escolha opcao
                caso 1
                     criaCliente()


                caso 2
                     criadestino()

                caso 3
                      quantidade <- 1
                      limpatela
                      para quantidade de 1 ate 5 faca
                         escreva("ID: ")
                         escreval (quantidade)
                         escreva ("Nome ")
                         escreval (nome[quantidade])
                         escreva ("Email: ")
                         escreval (Email[quantidade])
                         escreva ("Cpf: ")
                         escreval (Cpf[quantidade])
                         escreva ("Origem: ")
                         escreval (origem[quantidade])
                         escreva ("Destino: ")
                         escreval (destino[quantidade])
                         escreval (" ")
                      fimpara
                     adiciona <- 1
                              escreval("Aperte enter para voltar ao menu")
                              leia (adiciona)
                            escreval("voltando ao menu")
                fimescolha
 fimenquanto
Fimalgoritmo
