//
//  ResultView.swift
//  QuizUp
//
//  Created by robin on 2026-04-02.
//

import SwiftUI


struct ResultView: View {
    @Binding var score: Int
    var total: Int
    var questions: [Question]
    @Binding var answers: [String]
    @Binding var currentIndex: Int
    @Binding var showScore: Bool
    @Binding var selectedChoice: String?
    @Environment(\.dismiss) var dismiss

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
                Button(action: {
                    dismiss()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        currentIndex = 0
                        score = 0
                        showScore = false
                        answers.removeAll()
                        selectedChoice = nil
                    }
                })
                {
                    Text("play Again")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                    
                
            } // end Vstack
            .padding()
        } // end scroll
    }
}

#Preview{
    // need something within the paraminter.they change after so it is no problem(so far)
    ResultView(
         score: .constant(5),
         total: 10,
         questions: [],
         answers: .constant([]),
         currentIndex: .constant(0),
         showScore: .constant(true),  selectedChoice: .constant(nil) 
     )
}
