//
//  Question.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import Foundation

class Question {
    
    var id: String
    var text: String
    var options: [String]
    var correctAnswer: String
    
    init(
        id: String,
        text: String,
        options: [String],
        correctAnswer: String
    ) {
        self.id = id
        self.text = text
        self.options = options
        self.correctAnswer = correctAnswer
    }
}
