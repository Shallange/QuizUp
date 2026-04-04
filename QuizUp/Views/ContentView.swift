//
//  ContentView.swift
//  QuizUp
//
// created by group 4

import SwiftUI

struct ContentView: View {

    @State private var currentIndex = 0
    @State private var selectedChoice: String? = nil
    @State private var showScore = false
    @State private var score = 0
    @State private var answers: [String] = []
    
    let category: Category

    var questionList: [Question] {
        switch category {
        case .programming:
            return QuizData.programmingQuestions
        case .general:
            return QuizData.generalQuestions
        case .math:
            return QuizData.mathQuestions
        }
    }
    
    var currentQuiz: Question { questionList[currentIndex] }

    var body: some View {
        
            VStack(spacing: 20) {

                Text("Question \(currentIndex + 1) of \(questionList.count)")
                    .foregroundColor(.gray)

                // Question
                Text(currentQuiz.question)
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()

                // choices
                ForEach(currentQuiz.choices, id: \.self) { choice in
                    Button(action: { answerTapped(choice) }) {
                        Text(choice)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(buttonColor(choice))
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    .disabled(selectedChoice != nil)  //It disables ALL buttons after user picks an answer
                }

                Spacer()

                if showScore {
                    Text(" Score: \(score)/\(questionList.count)")
                        .font(.title)
                        .bold()
                }
            }

            .navigationDestination(isPresented: $showScore) {
                ResultView(score: score, total: questionList.count, questions: questionList, answers: answers, showScore: $showScore)
            }
            .onChange(of: showScore) { _, newValue in
                if !newValue {
                    currentIndex = 0
                    score = 0
                    answers = []
                    selectedChoice = nil
                }
            }
            .padding()
            .navigationTitle("Quiz")
        
    }

    func answerTapped(_ choice: String) {
        selectedChoice = choice

        let correctChoice = currentQuiz.choices[currentQuiz.correctAnswer]  // get string from index

        if choice == correctChoice { score += 1 }  // compare strings

        answers.append(choice)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if currentIndex + 1 < questionList.count {
                currentIndex += 1
                selectedChoice = nil
            } else {
                showScore = true
            }
        }
    }

    func buttonColor(_ choice: String) -> Color {
        guard let selected = selectedChoice else { return .blue }

        let correctChoice = currentQuiz.choices[currentQuiz.correctAnswer]  // get string from index

        if choice == correctChoice { return .green }
        if choice == selected { return .red }
        return .blue
    }

}

#Preview {

    NavigationStack{
        ContentView(category: .general)
    }
}
