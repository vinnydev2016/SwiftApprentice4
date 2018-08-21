//: Playground - noun: a place where people can play

import UIKit

// Tipo 1 de comentário - Linha única (single line)

// Comentário por parágrafo 1
// Comentário por parágrafo 2

/*
 Comentários de múltiplas linhas
 Comentários de múltiplas linhas
 Comentários de múltiplas linhas
 */

// Imprimindo valores - Printig
print("Olá mundo")

/*  Operações aritméticas - Arithmetic operations
     /* Operações simples
        Adição +   2 + 6
        Subtração -  10 - 2
        Multiplicação *   2 * 4
 ``     Divisão /  24 / 3
     */
 */
2 + 6
10 - 2
2 * 4
24 / 3
// todas as expressões têm o valor único de 8

//2+6 //ok
//2 + 6 //ok -> mais utilizada
//2+ 6 // erro
//2 +6 // erro

// Numeros Decimais - Decimal numbers
22 / 7 // arredonda o valor para um INTEIRO
22.0 / 7.0 // não arredonda o valor

// O resto da operação - The remainder operation
// Modulo da operação % -> pega o resto da divisão
28 % 10

// Módulo de números decimais
(28.0).truncatingRemainder(dividingBy: 10.0)

/* Operações Shift
    /*
        As operações shift left e shift right tomam a forma binária de um número decimal e deslocam os dígitos para a esquerda ou para a direita, respectivamente. Então eles retornam a forma decimal do novo número binário.
 
        EX: 00001110
            00  001110
            00 111 000
 
         • Deslocar para a esquerda: <<
         • Deslocar para a direita: >>
    */
*/
1 << 3
32 >> 2

// Orderm das operações
 ((8000 / (5 * 10)) - 32) >> (29 % 5)
// Ordem de precedência
350 / 5 + 2
350 / (5+2) // Parenteses indica, o que deve ser feito primeiro. depois * e / e logo após - e +

// Funcões matemáticas

sin(45 * Double.pi / 180) // seno de 45 * pi dividido por 180
cos(135 * Double.pi / 180) // cosseno de 135 multiplicado por pi dividido por 180
//Double.pi = Constante de 3.14 (maior precisão)
Double.pi
(2.0).squareRoot() // raíz quadrada de 2
(25.0).squareRoot() // raiz quadrada de 5
max(5, 10) //seleciona o maior número
min(-5, -10) // seleciona o menor número
max((2.0).squareRoot(), Double.pi / 2) // seleciona o maior. Raiz quadrada de 2 ou PI dividido por 2
// Nomeando dados -> Naming Data
//Constantes
let number: Int = 10 // constante nome Numero do tipo Int que vale 10 // = sinal de atribuição
let pi: Double = 3.14159 // Constante nome Pi do tipo decimal que vale 3.14159
//valor da constante não pode ser alterado
//number = 2 -> erro pois number ja foi setado com 10, e não pode ser alterado - Erro:   Cannot assign to value: 'number' is a 'let' constant
//ex de uso de constantes: modelagem de avião -> numero total de assentos disponiveis - o numero de assentos não sera mudado

// Variáveis -> Variables
//Utiliza-se quando o número varia = Por exemplo, se você estiver acompanhando o saldo de sua conta bancária com depósitos e retiradas, poderá usar uma variável em vez de uma constante.

var variableNumber: Int = 42 // variavel nome Numero Variavel do tipo int que vale 42
variableNumber = 80 // o numero pode ser alterado sem problemas

/*  Usando nomes significativos -> Using Meaningful names
 Um bom nome descreve especificamente o papel de variável ou constante.
    /* Bons nomes:
        idadeDePessoa
        numeroDePessoas
        médiaDePontos
     */
 
    /* Nomes ruins:
        um
        média
     */
     • Comece com uma letra minúscula.
 
     • Se o nome for composto de várias palavras, junte-as e inicie todas as outras palavras com uma letra maiúscula.
 
     • Se uma dessas palavras for uma abreviação, escreva a abreviação inteira no mesmo caso (por exemplo, sourceURL e urlDescription)
 */

// Swif aceita codigos UNICODE - emojis (nome da variavel)

// Incremento e decremento
var counter: Int = 0

counter += 1 // counter = counter + 1 -> 0 +1 == 1

counter -= 1 // counter = counter - 1 -> 1 - 1 == 0

counter = 10

counter *= 3 // counter = counter * 3 -> 10 * 3 = 30

counter /= 2 // counter = counter / 2 -> 30 / 2 = 15

/* Resumo

 Pontos chave
 
 • Computadores, no seu nível mais fundamental, realizam matemática simples.
 
 • Uma linguagem de programação permite escrever código, que o compilador converte em instruções que a CPU pode executar.
 
 • Os computadores operam com números na forma da base 2, também conhecidos como binários.
 
 • O IDE que você usa para escrever o código Swift é chamado Xcode.
 
 • Ao fornecer feedback imediato sobre como o código está sendo executado, os playgrounds permitem que você escreva e teste o código Swift de maneira rápida e eficiente.
 
 • Os comentários de código são denotados por uma linha que começa com // ou várias linhas reservadas com / * e * /.
 
 • Comentários de código podem ser usados ​​para documentar seu código.
 
 • Você pode usar a impressão para gravar coisas na área de depuração.
 
 • Os operadores aritméticos são:
 Adicionar: +
 Subtrair: -
 Multiplique: *
 Divide: /
 Restante:%
 
 • Constantes e variáveis ​​dão nomes aos dados.
 
 • Depois de declarar uma constante, você não pode alterar seus dados, mas pode alterar os dados de uma variável a qualquer momento.
 
 
 • Sempre dê variáveis ​​e constantes nomes significativos para salvar você e seu
 colegas dores de cabeça mais tarde.
 
 • Operadores para realizar aritmética e, em seguida, atribuir de volta à variável:
 
 Adicione e atribua: + =
 Subtrair e atribuir: - =
 Multiplique e atribua: * =
 Dividir e atribuir: / =
 
*/

//Mini-exercises
// 1. Declare uma constante do tipo Int chamada myAge e configure para a sua idade.

let myAge: Int = 25

// 2. Declare uma variável do tipo Double chamada averageAge. Inicialmente, defina-o para a sua idade. Depois, defina-o para a média da sua idade e da minha idade de 30 anos.

var averageAge: Double = 25
averageAge = (averageAge + 30) / 2

// 3. Crie uma constante chamada testNumber e inicialize-a com qualquer número inteiro que você desejar. Em seguida, crie outra constante chamada evenOdd e configure-a igual ao testNumber módulo 2. Agora, altere testNumber para vários números. O que você percebe sobre o evenOdd?
let testNumber: Int = 45
let evenOdd: Int = testNumber % 2 // evenOdd é 1 quando testNumber é 1. evenOdd é 0 quando testNumber é par.

//4. Crie uma variável chamada answer e inicialize-a com o valor 0. Incremente-a por 1. Adicione 10 a ela. Multiplique por 10. Depois, desloque-o para a direita por 3. Depois de todas essas operações, qual é a resposta?
var answer: Int = 0
answer += 1
answer += 10
answer *= 10
answer >>= 3
answer

// Challenges
// 1. Declare exercícios constantes com valor 9 e uma variável exercisesSolved com valor 0. Incremente esta variável toda vez que você resolver um exercício (incluindo este).
let exercises : Int = 9
var exercisesSolved : Int = 0
exercisesSolved += 1

/*
 2. Dado o seguinte código:
 
 age = 16
 print(age)
 age = 30
 print(age)
 
 Declare a idade para que ela compile. Você usou var ou let?
*/
var age: Int = 16
print(age)
age = 30
print(age)
exercisesSolved += 1

/*
 3. Considere o seguinte código:
 
 let a: Int = 46
 let b: Int = 10
 
 Descobrir qual resposta é igual quando você substitui a linha final do código acima por cada uma dessas opções:
 
 // 1
 let answer1: Int = (a * 100) + b
 
 // 2
 let answer2: Int = (a * 100) + (b * 100)
 
 // 3
 let answer3: Int = (a * 100) + (b / 10)
 
*/
let a : Int = 46
let b: Int = 10

let answer1: Int = (a * 100) + b
let answer2: Int = (a * 100) + (b * 100)
let answer3: Int = (a * 100) + (b / 10)

exercisesSolved += 1

/*
 4. Adicione parênteses ao seguinte cálculo. Os parênteses devem mostrar a ordem em que as operações são realizadas e não devem alterar o resultado do cálculo.
 
 5*3-4/2*2
*/
5*3-4/2*2

(5 * 3) - ((4 / 2) * 2)

exercisesSolved += 1

/*
 5. Declare duas constantes a e b do tipo Double e atribua um valor a ambos. Calcule a média de aeb e armazene o resultado em uma constante denominada média.
*/
let n1 : Double = 2.8
let n2 : Double = 4.8
let average : Double = (n1 + n2) / 2

exercisesSolved += 1

/*
 6. Uma temperatura expressa em ° C pode ser convertida para ° F pela multiplicação por 1,8 e, em seguida, incrementada por 32. Neste desafio, faça o inverso: converta uma temperatura de ° F para ° C. Declare uma constante chamada fahrenheit do tipo Double e atribua a ela um valor. Calcule a temperatura correspondente em ° C e armazene o resultado em uma constante chamada celcius.
*/
let fahrenheit : Double = 70

let celsius : Double = (fahrenheit - 32) / 1.8 // ordem de precedencia

exercisesSolved += 1

/*
 7. Suponha que os quadrados em um tabuleiro de xadrez sejam numerados da esquerda para a direita, de cima para baixo, com 0 sendo o quadrado superior esquerdo e 63 sendo o quadrado inferior direito. As linhas são numeradas de cima para baixo, de 0 a 7. As colunas são numeradas da esquerda para a direita, de 0 a 7. Declare uma posição constante e atribua a ela um valor entre 0 e 63. Calcule os números de linha e coluna correspondentes e armazene os resultados em constantes nomeadas linha e coluna.
*/
let position: Int = 54
let row: Int = position / 8
let column: Int = position % 8
exercisesSolved += 1

/*
 8. Um círculo é composto por 2! radianos, correspondendo a 360 graus. Declare um grau constante do tipo Double e atribua a ele um valor inicial. Calcule o ângulo correspondente em radianos e armazene o resultado em uma constante denominada radianos.
*/
let degrees: Double = 360.0
let radians: Double = (degrees / 180) * Double.pi
exercisesSolved += 1

/*
 9. Declarar quatro constantes denominadas x1, y1, x2 e y2 do tipo duplo. Essas constantes representam as coordenadas bidimensionais de dois pontos. Calcule a distância entre esses dois pontos e armazene o resultado em uma distância constante nomeada.
*/
let x1: Double = 1.0
let y1: Double = 1.0
let x2: Double = 3.0
let y2: Double = 3.0

let dx: Double = x2 - x1
let dy: Double = y2 - y1

let distance: Double = (dx * dx + dy * dy).squareRoot()

exercisesSolved += 1
