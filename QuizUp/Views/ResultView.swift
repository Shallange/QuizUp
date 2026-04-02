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
                } // eac
            } // end Vstack
            .padding()
        } // end scroll
    }
}

#Preview{
    // need something within the paraminter.they change after so it is no problem(so far)
    ResultView(score: 3, total: 5, questions: [], answers: [])
}
