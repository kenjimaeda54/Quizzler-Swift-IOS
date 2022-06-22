## Quizzler
Aplicativo de perguntas e respostas,verdadeiro ou falso

## Motivação
Aprende o uso de MVC em swift, praticar novos conceitos e reforçar anteriores

## Feature
- Aprendi o uso de MVC separando em camadas
- Controller foi responsável apenas pela lógica que envolve diretamente a View, seja trocar a cor de um botão, label.
- Model foi responsável por armazenar nossa struct e toda manipulação de dados da struct, ou seja ,acessar, atualizar ou deletar  dados da struct
- View ficou responsável apenas para interface do usuário
- Toda estrutura de dados de um struct internamente recebe automaticamente o self, esta palavra reservada e imutável
- Para conseguir manipular um dado interno da struct precisa entao do uso mutating
- Normalmente quando usamos funções com argumentos precisamos nas chamadas das funções escrever o argumento, por exemplo, se espero userAnswer . Quem for usar a função precisa chamar userAnswer
- Para evitar esse comportamento usamos _ 
- Maneira de criar arrays de objetos dados comnuns em JSON e usar struct com array

```swift
  let allQuestion = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]



   mutating func checkAnswerUser(_ userAnswer:String) -> Bool {
        if  userAnswer == allQuestion[questionNumber].anwser {
            scoreNumber += 1
            return true
        }else {
            return false
        }
    }


```





