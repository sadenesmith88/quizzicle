//
//  GameViewModel.swift
//  quizzical
//
//  Created by sade on 4/6/24.
//

import SwiftUI

class GameViewModel: ObservableObject {
    //mark publsih properties that will update the viewModel when things have changed
    //gameviewmodel will notify user when any changes have been made once user makes guess
    @Published private var game = Game()
    
    
    //keeps track of the current question the user is on
    var currentQuestion: Question {
        game.currentQuestion
    }
    //indicates users progress -- shown at top of screen
    var questionProgressText: String {
        "\(game.currentQuestionIndex) / \(game.numberOfQuestions)"
    }
}
