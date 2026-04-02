//
//  QuizData.swift
//  QuizUp
import Foundation

struct QuizData {

    static let questionList = [
        Question(
            question: "What shape is Earth1",
            choices: ["Flat", "Ball", "Can"],
            correctAnswer: 0
        ),
        Question(
            question: "What shape is Earth2",
            choices: ["Flat", "Ball", "Can"],
            correctAnswer: 2
        ),
        Question(
            question: "What shape is Earth3",
            choices: ["Flat", "Ball", "Can"],
            correctAnswer: 1
        ),
        Question(
            question: "What shape is Earth4",
            choices: ["Flat", "Ball", "Can"],
            correctAnswer: 1
        ),
    ]

    static let programmingQuestions = [
        Question(
            question: "1. What does let declare in Swift?",
            choices: ["0:constant", "1:variable", "2:function", "3:class"],
            correctAnswer: 0
        ),
        Question(
            question: "2. Which data structure uses LIFO (Last In, First Out)?",
            choices: ["0:Queue", "1:Array", "2:Stack", "3:Linked List"],
            correctAnswer: 2
        ),
        Question(
            question:
                "3. What is the time complexity of binary search on a sorted array?",
            choices: ["0:O(n)", "1:O(log n)", "2:O(n²)", "3:O(1)"],
            correctAnswer: 1
        ),
        Question(
            question: "4. What does === check in Swift?",
            choices: [
                "0: Value equality", "1:Reference equality (same instance)",
                " 2:Type equality", "3:String comparison",
            ],
            correctAnswer: 1
        ),
        Question(
            question: "5. Which keyword is used to handle errors in Swift?",
            choices: ["0:catch", "1:do", "2:try", "3:throw"],
            correctAnswer: 2
        ),
        Question(
            question: "6. What is an optional in Swift?",
            choices: [
                "0:A required value", "1:A value that can be nil",
                "2:A default parameter", "3:A computed property",
            ],
            correctAnswer: 1
        ),
        Question(
            question:
                "7. What protocol makes a Swift type iterable in a for-in loop?",
            choices: [
                "0:IteratorProtocol", "1:Collection", "2:Sequence",
                "3: Enumerable",
            ],
            correctAnswer: 2
        ),
        Question(
            question:
                "8. What is the output of print([1, 2, 3].map { $0 * 2 })?",
            choices: [
                "0:[2, 4, 6]", "1:[1, 2, 3, 1, 2, 3]", "2:[3, 6, 9]",
                "3: Error",
            ],
            correctAnswer: 0
        ),
        Question(
            question: "9. What does MVC stand for?",
            choices: [
                "0:Model View Component", "1: Model View Controller",
                "2: Module View Class", "3: Main View Controller",
            ],
            correctAnswer: 1
        ),
        Question(
            question: "10. What is a closure in Swift?",
            choices: [
                "0: A loop statement",
                "1: A self-contained block of functionality",
                "2: A class initializer", "3: A protocol method",
            ],
            correctAnswer: 1
        ),
        Question(
            question:
                "11. Which operator unwraps an optional with a default value?",
            choices: ["0:!", "1: ?", "2: ??", "3: ||"],
            correctAnswer: 2
        ),
        Question(
            question: "12. What is the main thread used for in iOS?",
            choices: [
                "0: Background calculations", "1: Network requests",
                "2: UI updates", "3: File I/O",
            ],
            correctAnswer: 2
        ),
        Question(
            question: "13. What does weak prevent in Swift?",
            choices: [
                "0: Memory leaks / retain cycles", "1: Thread conflicts",
                "2: Compile errors", "3: Runtime crashes",
            ],
            correctAnswer: 0
        ),
        Question(
            question: "14. What is Codable in Swift?",
            choices: [
                "0: A UI component", "1: A protocol for encoding/decoding",
                "2: A database library", "3: A network manager",
            ],
            correctAnswer: 1
        ),
        Question(
            question: "15. What does @State do in SwiftUI?",
            choices: [
                "0: Defines a constant",
                "1: Creates a mutable value owned by the view",
                "2: Shares data between views", "3: Observes external objects",
            ],
            correctAnswer: 1
        ),
    ]
}
