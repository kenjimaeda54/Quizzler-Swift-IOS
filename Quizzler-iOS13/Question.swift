//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by kenjimaeda on 21/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let anwser: String
    init(q:String, a:String) {
        question = q
        anwser = a
    }
}
