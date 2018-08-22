//: Chapter 2 Types e Operations

import UIKit

// Tipo -> um tipo descreve um conjunto de valores e as operações que podem ser executadas neles.

// TIpos de Conversão - Ttpe conversation
var integer: Int = 100
var decimal: Double = 12.5
//integer = decimal -> error

// Conversão explicita - informar ao computador, que quer que a conversão aconteça! Cecimal para Inteiro
integer = Int(decimal) // tira a precisão de 12.5 -> 12

// Operadores com tipos mistos -> Operators With mixed types
let hourlyRate: Double =  19.5
let hoursWorked: Int = 10
//let totalCost: Double = hourlyRate * hoursWorked  --> Não compila. Tipos diferentes. Usar modo explicito

let totalCost: Double = hourlyRate * Double(hoursWorked) // O total é um double. logo, converter o Int para o Double, para a operação funcionar. hoursWorked(int) -> Double

// Inferëncia de tipos - Type inference -> Swift reconhece o tipo de dado, sem extar explicito.
let typeInferredInt = 42 // para ver o tipo implicito, pressionar o option e clicar em cima do nome da variavel

let typeInferredDouble = 3.14159 // tipo inferido do double

// Tipo inferido INT
let wantADouble = 3

// Mas, se quiser setar o tipa para Double
let actuallyDouble = Double(3)

// Não utilizando inferência
let actuallyDoubleTwo: Double = 3 // explicitar o tipo de dado

//terceira opção
let actuallyDoubleThree = 3 as Double // as -> realiza conversão de tipo

// Quarta opçnao
let actuallyDoubleFour = 3.0 // (.0) -> informa que o numero é decimal

// Mini Exercises
//1. Crie uma constante chamada age1 e defina-a como 42. Crie uma constante chamada age2 e defina-a como 21. Verifique usando Option-click que o tipo para ambos foi inferido corretamente como Int.
let age1 = 42
let age2 = 21 // Inferencia para ambas as constantes o TIPO INT


//2. Crie uma constante chamada avg1 e defina-a igual à média de age1 e age2 usando a operação ingênua (age1 + age2) / 2. Use Option-click para verificar o tipo e verificar o resultado de avg1. Por que isso está errado?

//let avg1 = (age1 + age2) /2 // está errado pois avg1 é do tipo int, e estå recebendo um valor double (média entre age1 & age2)

//3. Corrija o erro no exercício acima convertendo age1 e age2 para digitar Double na fórmula. Use Option-click para verificar o tipo e verificar o resultado do avg1. Por que agora está correto?

let avg1 = (Double(age1) + Double(age2)) / 2 // conversão de age1 e age2, ambos INT,  para Double

// Strings -> texto
// Os computadores definem strings como uma coleção de caracteres individuais
//Unicode define o mapeamento do conjunto de caracteres que quase todos os computadores usam atualmente. PONTO DE CODIGO => Numero que define um caractere. Ex:  Café -> C(99) a(97) f(102) é(233). Universal, para todos os idiomas.

// Emojis, também são rastreados por Unicode. Ex: :D (128512) -> Ponto de çódigo para o EMOJI do Sorriso

// Caracteres e Strings -> Characters and Strings

// Caractere armazena uma única palavra/caractere
let chacterA: Character = "a"
let characterDog: Character = "🐶"

// String armazena múltiplas palavras/caracteres
let StringDog: String = "Dog" // Se tirar o tipo String, o reconhece que a constante é String, graças ao seu valor atribuído - inferencia de tipo

// Concatenação - Concatenation -> juntar Strings
var message = "Hello" + " my name is "
let name = "Tony Stark"
message += name // message = message + name

let exclamationMark: Character = "!"
message += String(exclamationMark) // convertendo caractere para String

//Interpolation - Interpolação
message = "Helo my name is \(name)!"
let oneThird = 1.0 / 3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal"

// Linhas múltiplas Strings -> Multi-line strings
let bigString = """
You can have a string
that contains multiple
lines
by
doing this.
"""
print(bigString)

//1. Crie uma constante de string chamada firstName e inicialize-a em seu primeiro nome. Também crie uma constante de string chamada lastName e inicialize-a no seu sobrenome.
let firstName: String = "Vinnycius"
let lastName: String = "Amâncio"

//2. Crie uma constante de string chamada fullName, adicionando as constantes firstName e lastName juntas, separadas por um espaço.
let fullName = firstName + " " + lastName

//3. Usando a interpolação, crie uma constante de string chamada myDetails que use a constante fullName para criar uma string se apresentando. Por exemplo, minha string seria: "Olá, meu nome é Matt Galloway".
let myDetails = ("Olá mundo, meu nome é \(fullName)")
print(myDetails)

// Tuplas - Tuples -> é um tipo que representa dados compostos de mais de um valor de qualquer tipo. Você pode ter tantos valores em sua tupla quanto desejar. Por exemplo, você pode definir um par de coordenadas 2D em que cada valor de eixo é um inteiro, assim:

//let coordinates: (Int, Int) = (2, 3)

//inferencia de valores nas tuplas Int
let coordinates = (2, 3)

//inferencia de tipos Double
let coordinatesDoubles = (2.1, 3.5)

// tipos misturados
let coordinatesMixed = (2.1, 3)

// Acessando dados na tupla
let x1 = coordinates.0 // o acesso se começa pelo indice 0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

// Abreviando as consultas nas tuplas
let coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D
/*O trecho acima, vale a mesma coisa:
 let coordinates3D = (x:2, y: 3, z: 1)
 let x3 = coordinats3D.x
 let y3 = coordinats3D.y
 let z3 = coordinats3D.z
*/

// Ignorando valores -> so colocar um _, no lugar da constante/valor
let (x4, y4, _) = coordinates3D // valor z4 foi ignorado

// Mini Exercises

//1. Declare uma tupla constante que contém três valores Int seguidos por um Double. Use isso para representar uma data (mês, dia, ano) seguida por uma temperatura média para essa data.

//let values = (8, 21,  2018, 22.5)

//2. Altere a tupla para nomear os componentes constituintes. Dê a eles nomes relacionados aos dados que eles contêm: mês, dia, ano e temperatura média.
let values = (month: 8, day: 21, year: 2018, temperature: 22.5)

//3. Em uma linha, leia o dia e os valores médios de temperatura em duas constantes. Você precisará empregar o sublinhado para ignorar o mês e o ano.
let (month, day, year, temperature) = values
print("Estamos no més \(month), no dia \(day), no ano \(year), com a temperatura de \(temperature) graus celsius")

// Outro exemplo -> Pokemon
let pokemons = (p1: "Pikachu", p2:"Charizard")
let (pokemon1, pokemon2) = pokemons
print("Estes são os pokemons: \(pokemon1) e \(pokemon2)")

// Múltiplos tipos de números - A whole lot of number types

// Diversas formas de representar um Int
//. Para números inteiros, você pode usar os tipos assinados explícitos Int8, Int16, Int32, Int64. Esses tipos consomem 1, 2, 4 e 8 bytes de armazenamento, respectivamente. Cada um desses tipos usa 1 bit para representar o sinal.
//Na maioria das vezes, você usará Int e Double para representar números, mas de vez em quando você pode encontrar os outros tipos.
//Por exemplo, suponha que você precisa adicionar um Int16 com um UInt8 e um Int32. Você pode fazer isso da seguinte maneira:

let a: Int16 = 12
let b: UInt8 = 255
let c: Int32 = -100000
let answer = Int(a) + Int(b) + Int(c) // resposta final em Int

// Resumo:
/*
• Conversão de tipo permite converter valores de um tipo em outro.
• A conversão de tipo é necessária ao usar um operador, como a aritmética básica
operadores (+, -, *, /), com tipos mistos.
• Inferência de tipo permite omitir o tipo quando o Swift já o conhece.
• Unicode é o padrão para mapear caracteres para números.
• Um mapeamento único no Unicode é chamado de ponto de código.
• O tipo de dados Character armazena caracteres únicos. Os armazenamentos de tipo de dados String
coleções de caracteres ou strings.
• Você pode combinar strings usando o operador de adição.
• Você pode usar a interpolação de strings para criar uma string no local.
• Você pode usar tuplas para agrupar dados em um único tipo de dados.
• As tuplas podem ser sem nome ou nomeadas. Seus elementos são acessados ​​com números de índice para tuplas não nomeadas, ou nomes dados pelo programador para tuplas nomeadas.
• Existem muitos tipos de tipos numéricos com diferentes capacidades de armazenamento e precisão.
• Protocolos são como os tipos são organizados no Swift.
*/

// Chalenges - Desafios:
//1. Crie uma constante chamada coordenadas e atribua uma tupla contendo dois e três para ela.
let coordinatess = (2, 3)

//2. Crie uma constante chamada namedCoordinate com um componente de linha e coluna.
let namedCoordinatess = (row:2, column:3)

/*
 3. Quais das seguintes afirmações são válidas?
 let character: Character = "Dog" ----> INVALIDO
 let character: Character = "🐶" ----> VALIDO
 let string: String = "Dog" ----> VALIDO
 let string: String = "🐶" ----> VALIDO
*/


/*
 4. Este código é válido?
 let tuple = (day: 15, month: 8, year: 2015)
 let day = tuple.Day
*/
let tuple = (day: 15, month:8, year: 2018)
//let day = tuple.Day // esta linha não compilará pois o day (parametro é minusculo, e o acesso foi feito por maiusculo)
let dayTeste = tuple.day // acessando o "day"
let (day1, month1, year1) = tuple // acessando todos os valores

/*
 5. O que há de errado com o código a seguir?
 let name = "Matt"
 name += " Galloway"
 
 let name = "matt"
 "name" é uma constante, e não pode ter seu valor alterado

*/


/*
 6. Qual é o tipo do valor nomeado constante?
 let tuple = (100, 1.5, 10)
 let value = tuple.1
 
 tuple.1 -> Double
 
*/

/*
 7. Qual é o valor da constante nomeada mês?
 let tuple = (day: 15, month: 8, year: 2015)
 let month = tuple.month
 
 valor de month = 8
 
*/

/*
 8. Qual é o valor da constante denominada summary?
 let number = 10
 let multiplier = 5
 let summary = "\(number) multiplied by \(multiplier) equals \(number *
 multiplier)"
 
 sumary = 50 -> 10 MULTIPLICADO POR 5 E IGUAL A 50 (10 * 5)
 
*/

/*
 9. Qual é a soma de a e b, menos c?
 let a = 4
 let b: Int32 = 100
 let c: UInt8 = 12
*/
let nA = 4
let nB: Int32 = 100
let nC: UInt8 = 12
let resposta = nA + Int(nB) - Int(nC) // conversão de nB e nC para INT

//10. Qual é a diferença numérica entre Double.pi e Float.pi?
let diference = Double.pi - Double(Float.pi)
print(diference)

