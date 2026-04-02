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

    var body: some View {
        Text("Score: \(score)/\(total)")
        .font(.title)
        .bold()
    }
}

#Preview{
    // need something within the paraminter.they change after so it is no problem(so far)
    ResultView(score: 5, total: 10)
}
