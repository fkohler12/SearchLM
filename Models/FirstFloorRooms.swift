//
//  FirstFloorRooms.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/13/24.
//

import Foundation

class FirstFloorRooms: ObservableObject{
    //first floor rooms aka teacher infor
    @Published var firstFloorRooms: [Room] = [
        Room(number: 101, teacher: "Ms. Leader", email: "leader@lmsd.org", lunch: [1, 1, 1, 1]),
        Room(number: 102, teacher: "Mrs. Finder", email: "finder@lmsd.org", lunch: [2, 2, 2, 2]),
        Room(number: 103, teacher: "Mrs. Sankey", email: "sankeyj@lmsd.org", lunch: [1, 2, 1, 1]),
        Room(number: 104, teacher: "Mr. Capkin", email: "capkins@lmsd.org", lunch: [2, 1, 2, 2]),
        Room(number: 105, teacher: "Sr. Severini", email: "severin@lmsd.org", lunch: [1, 2, 2, 2]),
        Room(number: 106, teacher: "Sra. Nemoy", email: "nemoys@lmsd.org", lunch: [2, 1, 1, 1]),
        Room(number: 107, teacher: "Ms. Gillespie", email: "gillesm@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 108, teacher: "Ms. Fireman", email: "firemab@lmsd.org", lunch: [1, 1, 2, 2]),
        Room(number: 109, teacher: "Ms. Swartley", email: "swartle@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 110, teacher: "Mr. Piotrowski", email: "piotrom@lmsd.org", lunch: [1, 2, 1, 2]),
        Room(number: 111, teacher: "Mr. Gallagher", email: "gallagherc@lmsd.org", lunch: [2, 1, 2, 1]),
        Room(number: 113, teacher: "Ms. Schrader", email: "schraderj@lmsd.org", lunch: [1, 1, 1, 2]),
        Room(number: 115, teacher: "Ms. Vargas", email: "vargasl@lmsd.org", lunch: [2, 2, 2, 1]),
        Room(number: 116, teacher: "Mrs. Dawson", email: "dawsonj@lmsd.org", lunch: [1, 2, 2, 1]),
        Room(number: 117, teacher: "Sra. Pellegrino", email: "pellegt@lmsd.org", lunch: [1, 1, 1, 1]),
        Room(number: 118, teacher: "Ms. Clark", email: "clarkc@lmsd.org", lunch: [2, 2, 2, 2]),
        Room(number: 119, teacher: "Sra. Leveque", email: "levequel@lmsd.org", lunch: [1, 2, 1, 1]),
        Room(number: 120, teacher: "Ms. Crooks", email: "crooksk@lmsd.org", lunch: [2, 1, 2, 2]),
        Room(number: 121, teacher: "Mr. Byrd", email: "byrdta@lmsd.org", lunch: [1, 2, 2, 2]),
        Room(number: 123, teacher: "Mr. Grace", email: "gracej@lmsd.org", lunch: [2, 1, 1, 1]),
        Room(number: 124, teacher: "Sra. Connoly", email: "connolk@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 133, teacher: "Mr. Robb", email: "beckr@lmsd.org", lunch: [1, 1, 2, 2]),
        Room(number: 147, teacher: "Mrs. Oppenheimer", email: "oppenha@lmsd.org", lunch: [2, 2, 1, 1])]
}
