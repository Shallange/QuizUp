//
//  ResultView.swift
//  QuizUp
//
//  Created by robin on 2026-04-02.
//

import SwiftUI


struct ResultView: View {
    var score: Int
    var total: Int
    var questions: [Question]
    var answers: [String]
    @Binding var showScore: Bool

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                Text("Score: \(score)/\(total)")
                    .font(.title).bold()

                ForEach(questions.indices, id: \.self) { i in
                    let correct = questions[i].choices[questions[i].correctAnswer]
                    let wasCorrect = answers[i] == correct

                    VStack(alignment: .leading, spacing: 4) {
                        Text(questions[i].question).bold()
                        Text("Your answer: \(answers[i])")
                            .foregroundColor(wasCorrect ? .green : .red)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
                Button(action: {
                    showScore = false
                }) {
                    Text("Play Again")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ResultView(
        score: 5,
        total: 10,
        questions: [],
        answers: [],
        showScore: .constant(true)
    )
}
