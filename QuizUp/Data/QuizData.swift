//
//  QuizData.swift
//  QuizUp
import Foundation

struct QuizData {

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
    static let generalQuestions = [
        Question(
            question: "1. What is the capital of France?",
            choices: ["0:Berlin", "1:Paris", "2:Rome", "3:Madrid"],
            correctAnswer: 1
        ),
        Question(
            question: "2. Which planet is known as the Red Planet?",
            choices: ["0:Earth", "1:Mars", "2:Jupiter", "3:Venus"],
            correctAnswer: 1
        ),
        Question(
            question: "3. How many continents are there?",
            choices: ["0:5", "1:6", "2:7", "3:8"],
            correctAnswer: 2
        ),
        Question(
            question: "4. What is the largest ocean?",
            choices: ["0:Atlantic", "1:Indian", "2:Arctic", "3:Pacific"],
            correctAnswer: 3
        ),
        Question(
            question: "5. Who wrote 'Romeo and Juliet'?",
            choices: [
                "0:Shakespeare", "1:Hemingway", "2:Tolkien", "3:Rowling",
            ],
            correctAnswer: 0
        ),

        Question(
            question: "6. What is the capital of Sweden?",
            choices: ["0:Oslo", "1:Copenhagen", "2:Stockholm", "3:Helsinki"],
            correctAnswer: 2
        ),
        Question(
            question: "7. Which animal is known as man's best friend?",
            choices: ["0:Cat", "1:Dog", "2:Horse", "3:Bird"],
            correctAnswer: 1
        ),
        Question(
            question: "8. What gas do humans breathe in?",
            choices: [
                "0:Carbon dioxide", "1:Oxygen", "2:Nitrogen", "3:Hydrogen",
            ],
            correctAnswer: 1
        ),
        Question(
            question: "9. What is H2O?",
            choices: ["0:Oxygen", "1:Hydrogen", "2:Salt", "3:Water"],
            correctAnswer: 3
        ),
        Question(
            question: "10. Which country is famous for pizza?",
            choices: ["0:France", "1:Italy", "2:Spain", "3:Greece"],
            correctAnswer: 1
        ),

        Question(
            question: "11. What color do you get by mixing red and white?",
            choices: ["0:Pink", "1:Purple", "2:Orange", "3:Brown"],
            correctAnswer: 0
        ),
        Question(
            question: "12. How many days are in a week?",
            choices: ["0:5", "1:6", "2:7", "3:8"],
            correctAnswer: 2
        ),
        Question(
            question: "13. What is the freezing point of water?",
            choices: ["0:0°C", "1:10°C", "2:32°C", "3:100°C"],
            correctAnswer: 0
        ),
        Question(
            question: "14. Which continent is Egypt in?",
            choices: ["0:Asia", "1:Africa", "2:Europe", "3:Australia"],
            correctAnswer: 1
        ),
        Question(
            question: "15. What is the tallest animal?",
            choices: ["0:Elephant", "1:Giraffe", "2:Lion", "3:Horse"],
            correctAnswer: 1
        ),
    ]

    static let mathQuestions = [
        Question(
            question: "1. What is 5 + 3?",
            choices: ["0:6", "1:7", "2:8", "3:9"],
            correctAnswer: 2
        ),
        Question(
            question: "2. What is 12 × 4?",
            choices: ["0:36", "1:48", "2:52", "3:44"],
            correctAnswer: 1
        ),
        Question(
            question: "3. What is the square root of 64?",
            choices: ["0:6", "1:7", "2:8", "3:9"],
            correctAnswer: 2
        ),
        Question(
            question: "4. What is 15 − 7?",
            choices: ["0:6", "1:7", "2:8", "3:9"],
            correctAnswer: 2
        ),
        Question(
            question: "5. What is 9 × 9?",
            choices: ["0:72", "1:81", "2:99", "3:90"],
            correctAnswer: 1
        ),

        Question(
            question: "6. What is 100 ÷ 10?",
            choices: ["0:5", "1:10", "2:20", "3:25"],
            correctAnswer: 1
        ),
        Question(
            question: "7. What is 7 × 6?",
            choices: ["0:36", "1:42", "2:48", "3:54"],
            correctAnswer: 1
        ),
        Question(
            question: "8. What is 50 − 25?",
            choices: ["0:20", "1:25", "2:30", "3:35"],
            correctAnswer: 1
        ),
        Question(
            question: "9. What is 3²?",
            choices: ["0:6", "1:9", "2:12", "3:3"],
            correctAnswer: 1
        ),
        Question(
            question: "10. What is 10 + 15?",
            choices: ["0:20", "1:25", "2:30", "3:35"],
            correctAnswer: 1
        ),

        Question(
            question: "11. What is 8 × 7?",
            choices: ["0:54", "1:56", "2:58", "3:60"],
            correctAnswer: 1
        ),
        Question(
            question: "12. What is 144 ÷ 12?",
            choices: ["0:10", "1:11", "2:12", "3:13"],
            correctAnswer: 2
        ),
        Question(
            question: "13. What is 6³?",
            choices: ["0:36", "1:216", "2:108", "3:64"],
            correctAnswer: 1
        ),
        Question(
            question: "14. What is 25 + 25?",
            choices: ["0:40", "1:45", "2:50", "3:55"],
            correctAnswer: 2
        ),
        Question(
            question: "15. What is 90 ÷ 9?",
            choices: ["0:8", "1:9", "2:10", "3:11"],
            correctAnswer: 2
        ),
    ]
}
