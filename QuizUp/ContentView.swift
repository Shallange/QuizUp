//
//  ContentView.swift
//  QuizUp
//
// created by group 4

import SwiftUI


struct Qustion :Identifiable{
    let id = UUID()
    let question: String
    let options: [String]
    let correctAnswer: Int
}

struct ContentView: View {
    
    private let quizList: [Qustion] = [
        Qustion(question: "1. What does let declare in Swift?", options: ["0:constant", "1:variable", "2:function", "3:class"], correctAnswer: 0),
        Qustion(question: "2. Which data structure uses LIFO (Last In, First Out)?", options: ["0:Queue","1:Array","2:Stack","3:Linked List"], correctAnswer: 2),
        Qustion(question: "3. What is the time complexity of binary search on a sorted array?", options: ["0:O(n)","1:O(log n)","2:O(n²)","3:O(1)"], correctAnswer: 1),
        Qustion(question: "4. What does === check in Swift?", options: ["0: Value equality","1:Reference equality (same instance)"," 2:Type equality","3:String comparison"], correctAnswer: 1),
        Qustion(question: "5. Which keyword is used to handle errors in Swift?", options: ["0:catch","1:do","2:try","3:throw"], correctAnswer: 2),
        Qustion(question: "6. What is an optional in Swift?", options: ["0:A required value","1:A value that can be nil","2:A default parameter","3:A computed property"], correctAnswer: 1),
        Qustion(question: "7. What protocol makes a Swift type iterable in a for-in loop?", options: ["0:IteratorProtocol","1:Collection","2:Sequence","3: Enumerable"], correctAnswer: 2),
        Qustion(question: "8. What is the output of print([1, 2, 3].map { $0 * 2 })?", options: ["0:[2, 4, 6]","1:[1, 2, 3, 1, 2, 3]","2:[3, 6, 9]","3: Error"], correctAnswer: 0),
        Qustion(question: "9. What does MVC stand for?", options: ["0:Model View Component","1: Model View Controller","2: Module View Class","3: Main View Controller"], correctAnswer: 1),
        Qustion(question: "10. What is a closure in Swift?", options: ["0: A loop statement","1: A self-contained block of functionality","2: A class initializer","3: A protocol method"], correctAnswer: 1),
        Qustion(question: "11. Which operator unwraps an optional with a default value?", options: ["0:!","1: ?","2: ??","3: ||"], correctAnswer: 2),
        Qustion(question: "12. What is the main thread used for in iOS?", options: ["0: Background calculations","1: Network requests","2: UI updates","3: File I/O"], correctAnswer: 2),
        Qustion(question: "13. What does weak prevent in Swift?", options: ["0: Memory leaks / retain cycles","1: Thread conflicts","2: Compile errors","3: Runtime crashes"], correctAnswer: 0),
        Qustion(question: "14. What is Codable in Swift?", options: ["0: A UI component","1: A protocol for encoding/decoding","2: A database library","3: A network manager"], correctAnswer: 1),
        Qustion(question: "15. What does @State do in SwiftUI?", options: ["0: Defines a constant","1: Creates a mutable value owned by the view","2: Shares data between views","3: Observes external objects"], correctAnswer: 1)
    ]
    
    var body: some View {
        NavigationStack{
            VStack {
                List {
                    ForEach(quizList) { quiz in
                        NavigationLink(quiz.question, destination:
                         QuestionDetailView(quiz: quiz)
                        )
                    }
                }
                .navigationTitle("testing time")
            }
        }
        
        
        .padding()
    }
}

struct QuestionDetailView: View {
    
    let quiz: Qustion
    @State var selected : Int? = nil
    @State var showResult = false
    
    var body: some View {
        VStack {
            Text("Correct answer index: \(quiz.correctAnswer)") // debug
            ForEach(quiz.options.indices, id: \.self){i in
                Button(quiz.options[i]){
                    selected = i
                }
            }
            
            
            if let sel = selected{
                Text(sel == quiz.correctAnswer ? "Correct" : "Wrong")
                    .padding()
                    .background(sel == quiz.correctAnswer ? Color.green : Color.red)
            }
            
        }
        .sheet(isPresented: $showResult) {
                   
                }

    }
}




struct FirstView: View {
    enum Category: String, CaseIterable {
        case programming = "Programming"
        case     general = "General"
        case    math = "Math"
    }
    var body: some View {
        
        VStack {
            NavigationStack {
                List {
                    ForEach(Category.allCases, id: \.self) { category in
                        NavigationLink(category.rawValue, destination:
                                        category == .programming ?AnyView(ContentView()) : AnyView(Text("Other")))
                    }
                }
                .navigationTitle(Text("Categories"))
                
            }
        }
    }
}
#Preview {
    FirstView()
}
