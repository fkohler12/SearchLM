//
//  Tutors.swift
//  FinalProject
//
//  Created by Quinten Pearsall (student LM) on 5/13/24.
//

import Foundation


//tutor info
struct Tutor : Identifiable, Hashable {
    var name: String
    var email : String
    var grade : Int
    var face : String
    let subject : Subject
    let subSubject : String
    let id = UUID()

     
    
    //initializers
    init(name: String = "Bole Ying" , email: String = "s017919@students.lmsd.org", grade: Int = 11, face: String = "bolePhoto", subject : Subject = .math, subSubject : String = "Senior Seminar, AB and BC Calculus, Pre-Calc, Integrated 1, 2, and 3"){
        self.name = name
        self.email = email
        self.grade = grade
        self.face = face
        self.subject = subject
        self.subSubject = subSubject
    }
}

