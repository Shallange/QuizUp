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
    let correctAnswer: Int
}

struct QuizTesting: View {
    @State var questionList = [
        Qustion(text: "What shape is Earth1", choices: ["Flat", "Ball", "Can"], correctAnswer: 0),
        Qustion(text: "What shape is Earth2", choices: ["Flat", "Ball", "Can"], correctAnswer: 2),
        Qustion(text: "What shape is Earth3", choices: ["Flat", "Ball", "Can"], correctAnswer: 1),
        Qustion(text: "What shape is Earth4", choices: ["Flat", "Ball", "Can"], correctAnswer: 1)
    ]

    @State private var index = 0
    @State private var selected: Int? = nil
    
    var current: Qustion { questionList[index] }

    var body: some View {
        VStack(spacing: 24) {
            Text(current.text)
            VStack(spacing: 12) {
                ForEach(current.choices.indices, id: \.self) { i in
                    Button {
                        selected = i
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            if index + 1 < questionList.count {
                                index += 1
                            }
                            selected = nil
                        }
                    } label: {
                        Text(current.choices[i])
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
