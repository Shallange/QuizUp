//  Question.swift
//  QuizUp

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let question: String
    let choices: [String]
    let correctAnswer: Int
}
