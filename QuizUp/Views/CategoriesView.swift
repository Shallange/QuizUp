//
//  CategoriesView.swift
//  QuizUp
//
//  Created by Jimmy kroneld on 2026-04-04.
//
import SwiftUI

struct CategoriesView: View {

    var body: some View {

        NavigationStack {
            VStack {
                List {
                    ForEach(Category.allCases, id: \.self) { category in
                        NavigationLink(category.rawValue){
                            ContentView(category: category)
                        }
                    }
                }
                .navigationTitle(Text("Categories"))

            }

        }

    }

}
#Preview {
    CategoriesView()
}
