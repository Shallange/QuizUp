//  QuizTesting.swift
//  QuizUp
//
//  Created by robin on 2026-03-30.
//

import SwiftUI

struct QuizView: View {

    @State private var questionList = QuizData.questionList
    @State private var index = 0
    @State private var selected: Int? = nil

    var current: Question { questionList[index] }

    var body: some View {
        VStack(spacing: 24) {
            Text(current.question)
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
    QuizView()
}
