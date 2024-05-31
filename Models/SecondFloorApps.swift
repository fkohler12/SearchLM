//
//  SecondFloorApps.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/13/24.
//

import Foundation

class SecondFloorRooms: ObservableObject{
    @Published var secondFloorRooms: [Room] = [
        Room(number: 200, teacher: "Mrs. Hemler", email: "hemlerc@lmsd.org"),
        Room(number: 202, teacher: "Mr. Landais", email: "marionm@lmsd.org"),
        Room(number: 203, teacher: "Mr. Bomze", email: "bomze@lmsd.org"),
        Room(number: 204, teacher: "Mr. Feeney", email: "feeneyb@lmsd.org"),
        Room(number: 205, teacher: "Ms. Stahl", email: "stahln@lmsd.org"),
        Room(number: 206, teacher: "Mrs. Capelloni", email: "cappelm@lmsd.org"),
        Room(number: 207, teacher: "Mr. Cortez", email: "cortez@lmsd.org"),
        Room(number: 208, teacher: "Mr. Davis", email: "davisbr@lmsd.org"),
        Room(number: 209, teacher: "Ms. Parks", email: "parkss@lmsd.org"),
        Room(number: 210, teacher: "Mr. Gagliardi", email: "gagliaj@lmsd.org"),
        Room(number: 211, teacher: "Ms. Weiler", email: "wielera@lmsd.org"),
        Room(number: 212, teacher: "Mr. Elder", email: "elder@lmsd.org"),
        Room(number: 213, teacher: "Mr. Hawkins", email: "hawkinw@lmsd.org"),
        Room(number: 215, teacher: "Mr. Fitzpatrick", email: "fitzpatrick@lmsd.org"),
        Room(number: 216, teacher: "Mr. Vinci", email: "vincid@lmsd.org"),
        Room(number: 217, teacher: "Mr. Presser", email: "presset@lmsd.org"),
        Room(number: 218, teacher: "Mr. Colvin", email: "colvinr@lmsd.org"),
        Room(number: 219, teacher: "Ms. Laney", email: "elaneye@lmsd.org"),
        Room(number: 220, teacher: "Dr. Montogomery", email: "montgomery@lmsd.org"),
        Room(number: 221, teacher: "Mrs. Cooke", email: "cooked@lmsd.org"),
        Room(number: 222, teacher: "Ms. Baker", email: "baker@lmsd.org"),
        Room(number: 223, teacher: "Mrs. Aschuff", email: "achuffl@lmsd.org"),
        Room(number: 224, teacher: "Mr. Nyce", email: "nycej@lmsd.org"),
        Room(number: 225, teacher: "Mr. Grugan", email: "grugank@lmsd.org"),
        Room(number: 226, teacher: "Ms. Watkins", email: "watkina@lmsd.org"),
        Room(number: 227, teacher: "Mr. Mansor", email: "mansorj@lmsd.org"),
        Room(number: 228, teacher: "Mr. Brown", email: "brownch@lmsd.org"),
        Room(number: 229, teacher: "Mr. Swope", email: "swopet@lmsd.org"),
        Room(number: 230, teacher: "Ms. McKeon", email: "mckeon@lmsd.org"),
        Room(number: 231, teacher: "Mrs. Lopez", email: "lopezk@lmsd.org")
    ]
}