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
    @State var questionList = [
        Qustion(text: "What shape is Earth1", choices: ["Flat", "Ball", "Can"], correctAnswer: "Flat"),
        Qustion(text: "What shape is Earth2", choices: ["Flat", "Ball", "Can"], correctAnswer: "Can"),
        Qustion(text: "What shape is Earth3", choices: ["Flat", "Ball", "Can"], correctAnswer: "Ball")
    ]

    @State private var index = 0
    @State private var selected: String? = nil
    
    var current: Qustion { questionList[index] }

    var body: some View {
        VStack(spacing: 24) {
            Text(current.text)
            VStack(spacing: 12) {
                ForEach(current.choices, id: \.self) { choice in
                    Button {
                        selected = choice
                        if index + 1 < questionList.count {
                            index += 1
                        }
                    } label: {
                        Text(choice)
                    }
                }
            }

            if let selected {
                Text(selected == current.correctAnswer ? "Correct!" : "Wrong!")
            }
        }
        .padding()
    }

}

#Preview {
    QuizTesting()
}
