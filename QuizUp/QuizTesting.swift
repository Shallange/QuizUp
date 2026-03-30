//
//  QuizTesting.swift
//  QuizUp
//
//  Created by robin on 2026-03-30.
//

import SwiftUI

struct Qustion: Identifiable {
    let id = UUID()
    let text: String
    let choices: [String]
    let correctAnswer: String
}

struct QuizTesting: View {
    let qustion1 = Qustion(
        text: "What shape is Earth",
        choices: ["Flat", "Ball", "Can"],
        correctAnswer: "Flat"
    )


    @State private var selected: String? = nil

    var body: some View {
        VStack(spacing: 24) {
            Text(qustion1.text)
            VStack(spacing: 12) {
                ForEach(qustion1.choices, id: \.self) { choice in
                    Button {
                        selected = choice
                    } label: {
                        Text(choice)
                    }
                }
            }

            if let selected {
                Text(selected == qustion1.correctAnswer ? "Correct!" : "Wrong!")
                // logic for go next question
            }
        }
        .padding()
    }

}



#Preview {
    QuizTesting()
}
