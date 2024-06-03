//
//  tutorList.swift
//  FinalProject
//
//  Created by Quinten Pearsall (student LM) on 5/10/24.
//

import Foundation

enum Subject{
    case math, science, english, history
}

class Tutors : ObservableObject {
    var subject: Subject = .math
    @Published var tutors : [Tutor] = [
        Tutor(),
        Tutor(name: "Felix Kohler", email: "s018956@students.lmsd.org", grade: 11,  face: "placeholder",subject: .science, subSubject: "Chemistry, AP Chemistry"),
        Tutor(name : "Youssef Niazy", email: "s027916@students.lmsd.org", grade : 11, face: "placeholder",subject: .science, subSubject: "Ap Chemistry, AP Physics Mechanics"),
        Tutor(name: "Beckett Field", email: "s034719@students.lmsd.org", grade: 11, face: "placeholder", subject: .science, subSubject: "AP Physics Mechanics"),
        Tutor(name : "Eli Dresnin", email: "s018305@students.lmsd.org", grade : 11, face: "placeholder",subject: .history, subSubject: "APUSH, Global Studies 1 and 2"),
        Tutor(name : "Sam Bergheiser", email: "s019227@students.lmsd.org", grade: 11, face: "placeholder",subject: .history, subSubject: "APUSH, Global Studies"),
        Tutor(name : "Matthew Hartstein", email: "s017867@students.lmsd.org", grade: 11, face: "placeholder",subject: .math, subSubject: "AP Calculus BC, Pre-Calculus Honors, Integrated 1-3"),
        Tutor(name: "Drew Greenland", email: "s017874@students.lmsd.org", grade: 11, face: "placeholder", subject: .math, subSubject: "Pre-Calculus"),
        Tutor(name : "Penny Cohen", email: "s018961@students.lmsd.org", grade: 11, face: "placeholder", subject: .english, subSubject: "AP Lang"),
        Tutor(name : "Emily Donahue", email : "s017790@students.lmsd.org", grade : 11, face: "placeholder", subject: .english, subSubject: "AP Lang")
        
    ]
    
}




var tutors: [Tutor] = [Tutor(), Tutor()]

//ForEach s in Subject{
//    ForEach t in tutors{
//        if t.subject == .math
//
//    }
//}
