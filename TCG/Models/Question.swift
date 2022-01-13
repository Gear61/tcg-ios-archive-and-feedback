//
//  Question.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import Foundation

class Question {
    
    var text: String
    var options: [Option]
    var correctAnswer: String
    
    init(
        text: String,
        options: [Option],
        correctAnswer: String
    ) {
        self.text = text
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    class Option: Identifiable {

        var id: String
        
        init(id: String) {
            self.id = id
        }
    }
}
