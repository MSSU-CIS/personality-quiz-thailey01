//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Trevor Hailey on 4/20/21.
//  Copyright © 2021 Missouri Southern State University - CIS 395. All rights reserved.
//

struct Question{
    var text: String;
    var type: ResponseType;
    var answers: [Answer];
}

enum ResponseType {
    case single, multiple, ranged;
}

struct Answer{
    var text: String;
    var type: AnimalType;
}

enum AnimalType: Character {
    case monkey = "🐵", frog = "🐸", polarbear = "🐻‍❄️", fox = "🦊";
    
    var definition: String{
        switch self{
        case .monkey:
            return "You are smart and mischevious in nature. You are always up for a good time.";
        case .frog:
            return "You prefer a day in rather than going out. You love to swim.";
        case .polarbear:
            return "You love the cold and food is life.";
        case .fox:
            return "You are clever and sly. You prefer to houng out alone rather than in the company of others.";
        }
    }
}
