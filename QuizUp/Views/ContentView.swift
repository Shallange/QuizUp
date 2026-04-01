//
//  ContentView.swift
//  QuizUp
//
// created by group 4

import SwiftUI

struct ContentView: View {

    @State private var currentIndex = 0
    @State private var selectedOption: String? = nil
    @State private var showScore = false
    @State private var score = 0
    @State private var questionList = QuizData.programmingQuestions

    var currentQuiz: Question { questionList[currentIndex] }

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                Text("Question \(currentIndex + 1) of \(questionList.count)")
                    .foregroundColor(.gray)

                // Question
                Text(currentQuiz.question)
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()

                // Options
                ForEach(currentQuiz.choices, id: \.self) { option in
                    Button(action: { answerTapped(option) }) {
                        Text(option)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(buttonColor(option))
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    .disabled(selectedOption != nil)  //It disables ALL buttons after user picks an answer
                }

                Spacer()

                if showScore {
                    Text(" Score: \(score)/\(questionList.count)")
                        .font(.title)
                        .bold()
                }
            }
            .padding()
            .navigationTitle("Quiz")
        }
    }

    func answerTapped(_ option: String) {
        selectedOption = option

        let correctOption = currentQuiz.choices[currentQuiz.correctAnswer]  // get string from index

        if option == correctOption { score += 1 }  // compare strings

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if currentIndex + 1 < questionList.count {
                currentIndex += 1
                selectedOption = nil
            } else {
                showScore = true
            }
        }
    }

    func buttonColor(_ option: String) -> Color {
        guard let selected = selectedOption else { return .blue }

        let correctOption = currentQuiz.choices[currentQuiz.correctAnswer]  // get string from index

        if option == correctOption { return .green }
        if option == selected { return .red }
        return .blue
    }

}

struct FirstView: View {
    enum Category: String, CaseIterable {
        case programming = "Programming"
        case general = "General"
        case math = "Math"
    }
    var body: some View {

        NavigationStack {
            VStack {
                List {
                    ForEach(Category.allCases, id: \.self) { category in
                        NavigationLink(
                            category.rawValue,
                            destination:
                                category == .programming
                                ? AnyView(ContentView())
                                : AnyView(Text("Other"))
                        )
                    }
                }
                .navigationTitle(Text("Categories"))

            }
        }
    }
}
#Preview {
    FirstView()
}
