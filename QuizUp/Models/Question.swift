//  Question.swift
//  QuizUp

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let text: String
    let choices: [String]
    let correctAnswer: Int
}
