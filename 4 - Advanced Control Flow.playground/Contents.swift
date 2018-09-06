//: 4 advanced control flow

import UIKit
import Foundation


// Intervalos contáveis - Countable Ranges
// Tipos de intervalos contáveis

// Intervalo contável fechado -  countable colsed range
let closedRange = 0...5 // Intervalo fechado que vai de zero a cinco (0, 1, 2, 3, 4, 5).

// Intervalo contavel semi-aberto - countable half-open range
let halfOpenRange = 0..<5 // Intervalo semi aberto que vai de zero a quatro, e não inclui o cinco (0, 1, 2, 3, 4)
// *-> Os intervalos crescem de forma crescente. o segundo numero sempre será maior que o primeiro, e assim, consecutivamente.

// For loops
/* Estrutura do loop for
 for <CONSTANT> in <COUNTABLE RANGE> {
    <LOOP CODE>
 }
*/
let count = 10
var sum = 0
for i in 1...count {
    sum += i
    // iteração 2 - sum = sum + i -> 0 = 0 + 1 => 1
    // iteração 3 - sum = sum + i -> 1 = 1 + 2 => 3
    // iteração 4 - sum = sum + i -> 3 = 3 + 3 => 6
    // iteração 5 - sum = sum + i -> 6 = 6 + 4 => 10
    // iteração 6 - sum = sum + i -> 10 = 10 + 5 => 15
}

sum = 1
var lastSum = 0

for _ in 0..<count { // ignorando a constante i
    let temp = sum
    sum = sum + lastSum
    lastSum = temp
}

// For condicionais - calculando a soma semelhante a dos numeros de triangulo, de numeros impares
sum = 0
for i in 1...count where 1 % 2 == 1{
    sum += 1
}

// Continue e rotule declarações - Continue and labeled statements
// continue -> termina imediatamente a iteração atual do loop e inicia a próxima iteração. Utilizamos quando quisermos pular uma iteração de loop para um caso específico.

sum = 0

for row in 0..<8 {
    if row  % 2 == 0 {
        continue // cancelar todas as operações pares (0, 2, 4 e 6)
    }
    
    for column in 0..<8 {
        sum += row * column // sum = sum + row * column -> 0 = 0 + 1 * 1 ==> 2
        // 2 = 2 + 2 * 2 -> 0 = 0 + 1 * 1 ==> 6
    }
}

// Mini Exercises
//1. Crie um intervalo nomeado range e configure-o igual a um intervalo começando em 1 e terminando em 10 inclusive. Escreva um loop for que percorra esse intervalo e imprima o quadrado de cada número.
let range = 1...10
for i in range {
    let square = i * i
    print("\(square)")
}

//2. Escreva um loop for para percorrer o mesmo intervalo do exercício acima e imprima a raiz quadrada de cada número. Você precisará digitar converter sua constante de loop.
for i in range{
    let squareRoot = sqrt(Double(i))
    print("\(squareRoot)")
}
/*
 
 3. Acima, você viu um loop for que iterava apenas as linhas pares da seguinte forma:
 sum = 0
 for row in 0..<8 {
    if row % 2 == 0 {
    continue
 }
    for column in 0..<8 {
        sum += row * column
    }
 }
 
 Altere isso para usar uma cláusula where no primeiro loop para pular linhas pares em vez de continuar. Verifique se a soma é 448, como no exemplo inicial.
*/

//sum = 0
//for row in 0..<8 where row % 2 == 1{
  //  sum += row * column
//}

// Switch -> controla fluxo, sem obter um bool
let number = 10

switch number{
case 0:
    print("Zero")
default:
    print("Non-Zero")
}

switch number{
case 10:
    print("It's ten")
default:
    break
}

let string = "Dog"
switch string {
case "Cat", "Dog":
    print("\(string) is a house pet")
default:
    print("\(string) is not a house pet")
}

// Switch avançado
let hourOfDay = 23
let timeOfDay: String

switch hourOfDay {
case 0...5:
    timeOfDay = "Early Morning"
case 6...11:
    timeOfDay = "Morning"
case 12...16:
    timeOfDay = "Afternoon"
case 17...19:
    timeOfDay = "Evening"
case 20..<24:
    timeOfDay = "Late Evening"
default:
    timeOfDay = "Invalid hour"
}
print(timeOfDay)

switch number {
case let x where x % 2 == 0:
    print("Par")
default:
    print("Impar")
}

// Correspondencia parcial - Partial matching
let coordinates = (x: 3, y: 2, z: 5)

switch coordinates{ // Para ignorar o valor _, _, _
case (0, 0, 0): //1
    print("Origin")
case (_, 0, 0): //2
    print("On the X-axis")
case (0, _, 0): //3
    print("On the Y-axis")
case (0, 0, _)://4
    print("On the Z-axis")
default: //5
    print("Somewhere in space")
}

switch coordinates{ // let extrai os valores, quando nao se deseja ignoralos
case (0, 0, 0):
     print("Origin")
case (let x, 0, 0):
     print("On the x-axis at x = \(x)")
case (0, let y, 0):
     print("On the y-axis at y = \(y)")
case (0, 0, let z):
     print("On the z-axis at z = \(z)")
case let (x, y, z):
     print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

switch coordinates{
case let (x, y, _) where y == x:
     print("Along the y = x line.")
case let (x, y, _) where y == x * x:
     print("Along the y = x^2 line.")
default:
    break
}

// Mini exercises
// 1. Escreva uma instrução switch que tenha uma idade como um inteiro e imprima o estágio de vida relacionado a essa idade. Você pode fazer as etapas da vida, ou usar minha categorização da seguinte forma: 0-2 anos, infantil; 3-12 anos, criança; 13-19 anos, adolescente; 20-39, Adulto; 40-60, meio envelhecido; 61+, idosos.
let idade: Int = 0
let estagioDaVida: String

switch idade {
case 0...2:
    estagioDaVida = "Infantil"
case 3...12:
    estagioDaVida = "Criança"
case 13...19:
    estagioDaVida = "Adolescente"
case 20...39:
    estagioDaVida = "Adulto"
case 40...60:
    estagioDaVida = "Meio envelhecido"
case _ where idade >= 61:
    estagioDaVida = "Idoso"
default:
    estagioDaVida = "Idade inválida"
}
print(estagioDaVida)

// 2. Escreva uma instrução switch que use uma tupla contendo uma string e um inteiro. A string é um nome e o inteiro é uma idade. Use os mesmos casos que você usou no exercício anterior e deixe a sintaxe imprimir o nome seguido pelo estágio de vida. Por exemplo, para mim, seria impresso "Matt é um adulto".
let tupla = ("Tony", 40)
switch tupla {
case (let nome, 0...2):
    print("\(nome) é infantil")
case (let nome, 3...12):
    print("\(nome) é criança")
case (let nome, 13...19):
    print("\(nome) é adolescente")
case (let nome, 20...39):
    print("\(nome) é adulto")
case (let nome, 40...60):
    print("\(nome) é muito envelhecido")
case (let nome, idade) where idade >= 61:
    print("\(nome) é idoso")
default:
    print("Invalid age")
}

// Resumo
//• Você pode usar intervalos para criar uma sequência de números, incrementando para passar de um valor para outro.

//• Intervalos fechados incluem os valores inicial e final.

//• Intervalos semiabertos incluem o valor inicial e param um antes do valor final.

//• For loops permite iterar em um intervalo.

//• A instrução de continuação permite concluir a iteração atual de um loop e iniciar a próxima iteração.

//• Instruções rotuladas e você usa quebra e continua em um loop externo.

//• Você usa instruções switch para decidir qual código executar, dependendo do valor de
//variável ou constante.

//• O poder de uma instrução switch vem da alavancagem de correspondência de padrões para comparar valores usando regras complexas.

// Challenges

/*
 1. No loop a seguir, qual será o valor da soma e quantas iterações ocorrerão?
 var sum = 0
 for i in 0...5 {
    sum += i
    1 - 0 = 0 + 1
    2 - 1 = 1 + 2
    3 - 3 = 3 + 3
    4 - 6 = 6 + 4
    5 - 6 = 6 + 5
 
 }
sum = 15 -> 5 iterações
*/
var s = 0
for _ in 0...5{ // 0, 1, 2, 3, 4, 5 => 6 iterações
    s += 1
}
s
/*
 2. No loop while abaixo, quantas instâncias de “a” haverá em aLotOfAs? Dica: aLotOfAs.count informa quantos caracteres estão na string aLotOfAs.
 
 var aLotOfAs = ""
 while aLotOfAs.count < 10 {
    aLotOfAs += "a"
 }
 
*/
var aLotOfAs = ""
while aLotOfAs.count < 10 { // 0...9 = 10 vezes, que aLotOfAs, será iterado
    aLotOfAs += "a"
}
aLotOfAs
aLotOfAs.count

/*
 3. Considere a seguinte declaração de mudança:
 
 switch coordinates {
     case let (x, y, z) where x == y && y == z:
        print("x = y = z")
     case (_, _, 0):
        print("On the x/y plane")
     case (_, 0, _):
        print("On the x/z plane")
     case (0, _, _):
        print("On the y/z plane")
     default:
        print("Nothing special")
 }
 
 O que esse código imprimirá quando as coordenadas forem as seguintes?
 
 let coordinates = (1, 5, 0)
 let coordinates = (2, 2, 2)
 let coordinates = (3, 0, 1)
 let coordinates = (3, 2, 5)
 let coordinates = (0, 2, 4)
 
*/
switch coordinates {
case let (x, y, z) where x == y && y == z:
    print("x = y = z")
case (_, _, 0):
    print("On the x/y plane")
case (_, 0, _):
    print("On the x/z plane")
case (0, _, _):
    print("On the y/z plane")
default:
    print("Nothing special")
}


// 4. Um intervalo fechado nunca pode estar vazio. Por quê?
// RESPOSTA: Pois os intervalos devem sempre aumentar, com um alcance fechado, o segundo número é sempre incluido no intervalo
let halfOpenRange2 = 100..<100 //empty
let closedRange2 = 100...100 // contem o número 100
halfOpenRange2.isEmpty
closedRange2.isEmpty

//5. Imprima uma contagem regressiva de 10 a 0. (Nota: não use o método invertido (), que será introduzido posteriormente.)
for i in 0...10 {
    print(10 - i)
}
//6.Imprime 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0. (Nota: não use a função stride (de: by: to :), que será introduzida mais tarde).
var value = 0.0

for _ in 0...10{
    print(value)
    value += 0.1
}

//Forma alternativa
for counter in 0...10 {
    print(Double(counter) * 0.1)
}
