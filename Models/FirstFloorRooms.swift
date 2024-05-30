//
//  FirstFloorRooms.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/13/24.
//

import Foundation

class FirstFloorRooms: ObservableObject{
    @Published var firstFloorRooms: [Room] = [
        Room(number: 101, teacher: "Ms. Leader", email: "leader@lmsd.org"),
        Room(number: 102, teacher: "Mrs. Finder", email: "finder@lmsd.org"),
        Room(number: 103, teacher: "Mrs. Sankey", email: "sankeyj@lmsd.org"),
        Room(number: 104, teacher: "Mr. Capkin", email: "capkins@lmsd.org"),
        Room(number: 105, teacher: "Sr. Severini", email: "severin@lmsd.org"),
        Room(number: 106, teacher: "Sra. Nemoy", email: "nemoys@lmsd.org"),
        Room(number: 107, teacher: "Ms. Gillespie", email: "gillesm@lmsd.org"),
        Room(number: 108, teacher: "Ms. Fireman", email: "firemab@lmsd.org"),
        Room(number: 109, teacher: "Ms. Swartley", email: "swartle@lmsd.org"),
        Room(number: 110, teacher: "Mr. Piotrowski", email: "piotrom@lmsd.org"),
        Room(number: 111, teacher: "Mr. Gallagher", email: "gallagherc@lmsd.org"),
        Room(number: 113, teacher: "Ms. Schrader", email: "schraderj@lmsd.org"),
        Room(number: 115, teacher: "Ms. Vargas", email: "vargasl@lmsd.org"),
        Room(number: 116, teacher: "Mrs. Dawson", email: "dawsonj@lmsd.org"),
        Room(number: 117, teacher: "Sra. Pellegrino", email: "pellegt@lmsd.org"),
        Room(number: 118, teacher: "Ms. Clark", email: "clarkc@lmsd.org"),
        Room(number: 119, teacher: "Sra. Leveque", email: "levequel@lmsd.org"),
        Room(number: 120, teacher: "Ms. Crooks", email: "crooksk@lmsd.org"),
        Room(number: 121, teacher: "Mr. Byrd", email: "byrdta@lmsd.org"),
        Room(number: 123, teacher: "Mr. Grace", email: "gracej@lmsd.org"),
        Room(number: 124, teacher: "Sra. Connoly", email: "connolk@lmsd.org"),
        Room(number: 133, teacher: "Mr. Robb", email: "beckr@lmsd.org"),
        Room(number: 147, teacher: "Mrs. Oppenheimer", email: "oppenha@lmsd.org")]
}
