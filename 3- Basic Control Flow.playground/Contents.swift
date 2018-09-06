//: 3 - Basic Control Flow
//import UIKit
import Foundation

// Fluxo de controle básico - basic control flow

// Booleano - Bool (v ou f)
let yes: Bool = true // inferencia de tipo : let yes = true
let no: Bool = false // inferencia de tipo : let no = false

// Operadores Booleanos - Compara valores

// Operador de igualdade
let doesOneEqualTwo = (1 == 2) // false, pois 1 não é igual a 2

// Operador de diferença
let doesOneNotEqualTwo = (1 != 2) // true, pois 1 é diferente de 2

// ! -> inverte valores (v -> f) && (f -> v)
let alsoTrue = !(1 == 2) // força a mudar o valor bool

// Maior/igual que & Menor/igual que
let isOneGreaterThanTwo = (1 > 2) // >= maior ou igual
let isOneLessThanTwo = (1 < 2) // <= menor ou igual

// Lógica booleana - Boolean Logic

// Operador E (AND) && - testa mais uma proposição, dentro de uma expressão. Só retornará TRUE, se todas as proposições forem verdadeiras.
let and = true && true

// Operador OU (OR) || - Também testa mais de uma proposição. e retornará true, se ao menos uma proposição for verdadeira
let or = true || false

let andTrue = 1 < 2 && 4 > 3 // true && true = true
let adnFalse = 1 < 2 && 3 > 4 // true && false = false

let orTrue = 1 < 2 || 3 > 4 // true || false = true
let orFalse = 1 == 2 || 3 == 4 // false || false = false

let andOr = (1 < 2 && 3 > 4) || 1 < 4

// Comparando Strings - String equality ( == )

let guess = "dog"
let dogEqualsCat = guess == "cat"

let order = "cat" < "dog" // Esta sintaxe verifica se uma string vem antes de outra em ordem alfabética. C vem antes de D

// Mini exercises
//1. Crie uma constante chamada myAge e configure-a para a sua idade. Em seguida, crie uma constante denominada isTeenager que use a lógica booleana para determinar se a idade indica alguém na faixa etária de 13 a 19 anos.
let myAge = 25
let isTeennager = myAge >= 13 && myAge <= 19 // não sou adolescente

//2. Crie outra constante denominada theirAge e configure-a para a minha idade, que é 30. Em seguida, crie uma constante denominada bothTeenagers que use a lógica booleana para determinar se você e eu somos adolescentes.
let theirAge = 30
let bothTeenagers = myAge >= 13 && myAge <= 19 || theirAge >= 13 && theirAge <= 19



//3. Crie uma constante chamada de reader e configure-a para o seu nome como uma string. Crie um author com nome constante e configure-o para o meu nome, Matt Galloway. Crie uma constante denominada authorIsReader que use igualdade de cadeia para determinar se leitor e autor são iguais.
let reader = "Vinnycius"
let author = "Matt Galloway"
let authorIsReader = reader == author

//4. Crie uma constante denominada readerBeforeAuthor que use a comparação de string para determinar se o leitor vem antes do autor.
let readerBeforeAuthor = reader < author

// A declaração If - the if statement -> If permite ao programa fazer algo apenas se uma determinada condição for verdadeira
if 2 > 1 {
    print("Yes, 2 is greater than 1")
} // V -> executa. F -> não executa

let animal = "Fox"

if animal == "Cat" || animal == "Dog"{
    print("Animal is a house pet")
} else {
    print("Animal is not a house pet")
}

let hourOfDay = 12
let timeOfDay: String

if hourOfDay < 6 {
    timeOfDay = "Early moning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late evening"
} else{
    timeOfDay = "Invalid Hour"
}
print(timeOfDay)

let name1: String = "Matt Galoway"

if 1 > 2 && name1 == "Matt Galoway" {
    // false
}

if 1 < 2 || name1 == "Matt Galoway"{
    //true
}

// Variáveis de encapsulamento - Encapsulating variables
// Você ganha US $ 25 por hora até 40 horas e US $ 50 por hora a partir de então.
var hoursWorked = 45

var price = 0
if hoursWorked > 40{
    // variavel local. não funciona fora do if. dentro do scopo
    let hoursOver40 = hoursWorked - 40 // obtendo as horas extras
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}
price +=  hoursWorked * 25
print(price)

//Esse código usa o número de horas e verifica se ele é maior que 40. Nesse caso, o código calcula o número de horas acima de 40 e multiplica esse valor por $ 50, depois adiciona o resultado ao preço. O código subtrai o número de horas acima de 40 das horas trabalhadas. Multiplica as horas restantes trabalhadas por US $ 25 e acrescenta isso ao preço total.

// Operador condicional ternário - the ternary conditional operator
//let a = 5
//let b = 10

//let min: Int

//if a < b {
  //  min = a
//} else {
  //  min = b
//}

//let max: Int
//if a > b {
  //  max = a
//} else {
  //  max = b
//}

// (<CONDITION>) ? <TRUE VALUE> : <FALSE VALUE>
let a = 5
let b = 10
let min = a < b ? a : b // se a for menor que b, vai receber a, senao b
let max = a > b ? a : b

// Mini exercises

//1. Crie uma constante chamada myAge e inicialize-a com a sua idade. Escreva uma declaração if para imprimir Adolescente se sua idade for entre 13 e 19 anos, e Não um adolescente se sua idade não estiver entre 13 e 19 anos.
let myAge2 = 25

if myAge2 >= 13 && myAge2 <= 19 {
    print("Adolescente")
} else {
    print("Não Adolescente")
}

//2. Crie uma answer com nome constante e use uma condição ternária para configurá-la igual ao resultado que você imprime para os mesmos casos no exercício acima. Em seguida, imprima a resposta.
let answer = myAge2 >= 13 && myAge2 <= 19 ? "Adolescente" : "Não adolescente"
print(answer)

// LOOP -> executa o código várias vezes
// While Loops - um loop while repete um bloco de código enquanto uma condição é verdadeira

/* SINTAXE
 while <CONDITION> {
    <LOOP CODE>
 }
 O loop verifica a condição de cada iteração. Se a condição for verdadeira, o loop será executado e passará para outra iteração. Se a condição for falsa, o loop será interrompido. Assim como se declarações, enquanto loops introduzem um escopo.
 O loop while mais simples assume este formato:
  while true {
 
 }
*/
var sum = 1

while sum < 1000 {
    sum = sum + (sum + 1)
    // ou: sum += 1
    // ou: sum ++
}

// repeat while (do while) -  a condição é testada apenas no final da aplicação.
/*
 repeat {
 <LOOP CODE>
 } while <CONDITION>
*/

sum = 1
repeat{
    sum + (sum + 1)
} while sum < 1000

sum = 1

while sum < 1 {
    sum = sum + (sum + 1)
} // não sera executado pois dara false

sum = 1

repeat {
    sum = sum + (sum + 1)
    // como a verificação é feita apenas no final, este trecho de codigo inicial sera executado. 3
} while sum < 1

// Break - interrompe um loop
sum = 1

while true{
    sum = sum + (sum + 1)
    if sum >= 1000{
        break // para a execução quando chegar a 1000
    }
}

// Mini exercises
//1. Crie uma variável chamada counter e configure-a igual a 0. Crie um loop while com o counter de condições <20 que imprime o contador é X (onde X é substituído pelo valor do contador) e, em seguida, incrementa o contador em 1.
var counter = 0
while counter < 20{
    print("Counter is \(counter)")
    counter += 1
}
//2. Crie uma variável chamada counter e configure-a igual a 0. Crie outra variável chamada roll e configure-a igual a 0. Crie um loop repeat-while. Dentro do loop, defina roll igual a Int (arc4 random_uniform (6)) que significa escolher um número aleatório entre 0 e 5. Então incremente o contador por 1. Finalmente, print Depois de X rola, roll é Y onde X é o valor de counter e Y é o valor do rolo. Defina a condição de loop de forma que o loop seja concluído quando o primeiro 0 for finalizado.

/*var */counter = 0
var roll = 0
repeat {
    roll = Int(arc4random_uniform(6))
    counter += 1
    print("After \(counter) roll(s), roll is \(roll)")
} while roll != 0

// resumo
/*
 Pontos chave
 • Você usa o tipo de dados booleano Bool para representar verdadeiro e falso.
 • Você pode usar a lógica booleana para combinar condições de comparação.
 • Você usa instruções if para tomar decisões simples com base em uma condição.
 • Você usa else e else-if dentro de uma declaração if para estender a tomada de decisão além de uma única condição.
 • Curto-circuito garante que apenas as partes mínimas necessárias de uma expressão booleana sejam avaliadas.
 • Você pode usar o operador ternário no lugar de instruções if simples.
 • Variáveis e constantes pertencem a um determinado escopo, além do qual você não pode
 eles. Um escopo herda variáveis e constantes visíveis de seu pai.
 • loops while permitem que você execute uma determinada tarefa várias vezes até que uma condição seja atendida.
 • A instrução break permite que você saia de um loop.
*/

// Chalenges

/*
 1. O que há de errado com o código a seguir?
 
 let firstName = "Matt"
 
 if firstName == "Matt" {
 let lastName = "Galloway"
 } else if firstName == "Ray" {
 let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 
 --> Resposta: Variável lastName, usada fora do seu escopo.
*/

/*
2. Em cada uma das seguintes afirmações, qual é o valor da constante de answer booleana?
 let answer = true && true  ---> TRUE
 let answer = false || false  ---> FALSE
 let answer = (true && 1 != 2) || (4 > 3 && 100 < 1)  ---> TRUE
 let answer = ((10 / 2) > 3) && ((10 % 2) == 0)  --->  TRUE
*/

/*
 ?
3. Suponha que os quadrados em um tabuleiro de xadrez sejam numerados da esquerda para a direita, de cima para baixo, com 0 sendo o quadrado superior esquerdo e 63 sendo o quadrado inferior direito. As linhas são numeradas de cima para baixo, de 0 a 7. As colunas são numeradas da esquerda para a direita, de 0 a 7. Dada uma posição atual no tabuleiro de xadrez, expressa como um número de linha e coluna, calcule a próxima posição no tabuleiro, novamente expressa como um número de linha e coluna. A ordem é determinada pela numeração de 0 a 63. A posição após 63 é novamente 0.
*/
let row = 7
let column = 7

var nextRow = row
var nextColumn = column + 1
if nextColumn > 7{
    nextColumn = 0
    nextRow += 1
}

if nextRow > 7 {
    nextRow = 0
}
print("The position after (\(row), \(column)) is (\(nextRow), \(nextColumn))")

/*
 4. Dados os coeficientes a, b e c, calcule as soluções para uma equação quadrática com esses coeficientes. Leve em conta o número diferente de soluções (0, 1 ou 2). Se você precisar de uma atualização de matemática, este artigo da Wikipédia sobre a equação quadrática ajudará https://en.wikipedia.org/wiki/Quadratic_formula.
*/

let valA = 1.0
let valB = -5.0
let valC = 6.0

let d = valB * valB - 4 * valA * valC

if d > 0 {
    let x1 = (-valB + sqrt(d)) / (2 * valA)
    let x2 = (-valB - sqrt(d)) / (2 * valA)
    print("The solutions are \(x1) and \(x2)")
} else if d == 0 {
    let x = -valB / (2 * valA)
    print("Both solutions are \(x)")
} else {
    print("This equation has no solutions")
}

/*
5. Dado um mês (representado com uma String em todas as letras minúsculas) e o ano atual (representado por um Int), calcule o número de dias no mês. Lembre-se que por causa dos anos bissextos, "fevereiro" tem 29 dias quando o ano é um múltiplo de 4 mas não um múltiplo de 100. Fevereiro também tem 29 dias quando o ano é um múltiplo de 400.
*/
let month = "June"
let year = 2018

if month == "january" || month == "march" || month == "may" || month == "july" || month == "august" || month == "octuber" || month == "december" {
    print("This month has 31 days")
} else if month == "april" || month == "june" || month == "september" || month == "november" {
    print("This month has 30 days")
} else if month == "february" && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0){
    print("This month has 29 days")
} else if month == "february" {
    print("This month has 28 days")
} else {
    print("This is a not valid month")
}

/*
 6. Dado um número, determine se esse número é uma potência de 2. (Dica: você pode usar log2 (número) para encontrar o logaritmo de número de base 2. log2 (número) retornará um número inteiro se o número for uma potência de Você também pode resolver o problema usando um loop e nenhum logaritmo.)
*/
let number = 1024.0

let log = log2(number)

if log == Double(Int(log)) {
    print("\(number) is a power of 2")
} else {
    print("\(number) is not a power of 2")
}

// whith loops
var dividend = number

while dividend.truncatingRemainder(dividingBy: 2) == 0 {
    dividend /= 2 // dividend = dividend / 2
}

if dividend == 1 {
    print("\(number) os a power of 2")
} else {
    print("\(number) is a not a power of 2")
}

//7. Imprima uma tabela das primeiras 10 potências de 2.
var expoent = 0
var power = 1

while expoent <= 10 {
    print("\(expoent)/t\(power)")
    expoent += 1
    power *= 2
    
    /*
     expoent = 0
     power = 1
     - while
     expoent = 1
     power= 2
     - while
     expoent = 2
     power = 4
     - while
     expoent = 3
     powe = 8
     
    */
}

/*
 8. Dado um número n, calcule o n-ésimo número de Fibonacci. (Lembre Fibonacci é 1, 1, 2, 3, 5, 8, 13, ... Comece com 1 e 1 e adicione esses valores juntos para obter o próximo valor. O próximo valor é a soma dos dois anteriores. O próximo valor neste caso é 8 + 13 = 21.)
*/
var goal = 10 // objetivo
var current = 1 // atual
var previous = 1 // anterior
var done = 2 // feito
while done < goal { // enquanto feito for menor que objetivo, faça
    let next = current + previous // proximo = atual + anterior
    previous = current // anterior = atual
    current = next // atual = proximo
    done += 1 // feito ganha 1
}
print("Fibonacci number \(goal) is \(current)")

/*
 9. Dado um número n, calcule o fatorial de n. (Exemplo: 4 fatorial é igual a 1 * 2 * 3 * 4.)
*/
let numberX = 5

var accumulator = 1
var doneX = 1

while doneX < numberX{
    done += 1
    accumulator *= done // aculumulator = acumulator * done
}

/*
 10. Dado um número entre 2 e 12, calcule as probabilidades de rolar este número usando dois dados de seis lados. Calcule-o fazendo o looping exaustivo de todas as combinações e contando a fração de resultados que lhe dão esse valor. Não use uma fórmula.
*/

let targetValue = 7 // valor alvo

var combinationsFound = 0 // combinações encontradas
var valueOnFirstDice = 1 // valor no primeiro dado

while valueOnFirstDice <= 6{
    var valueOnSecondDice = 1 // valor no segundo dado
    while valueOnSecondDice <= 6 {
        if valueOnFirstDice + valueOnSecondDice == targetValue {
            combinationsFound += 1
        }
        valueOnSecondDice += 1
    }
    valueOnFirstDice += 1
}
let percentage = Int(Double(combinationsFound) / 36 * 100)
print("The odds of rolling a \(targetValue) are \(combinationsFound) in 36 or \(percentage)%")

