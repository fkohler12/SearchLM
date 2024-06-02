//
//  Room.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/1/24.
//

import Foundation

struct Room: Identifiable {
    var number: Int
    var teacher: String
    var email: String
    var id = UUID()
    var lunch: [Int]
    
    init(number: Int = 5, teacher: String = "nil", email: String = "nil", lunch: [Int] = [1, 2, 1, 2]){
        self.number = number
        self.teacher = teacher
        self.email = email
        self.lunch = lunch
    }
    
}
