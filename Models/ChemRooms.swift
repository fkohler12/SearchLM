//
//  ChemRooms.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/1/24.
//

import Foundation

class ChemRooms: ObservableObject{
    @Published var chemRooms: [Room] = [
        Room(number: 351, teacher: "Mr. Werkheiser", email: "werkheiser@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 354, teacher: "Mr. Cronin", email: "croninp@lmsd.org", lunch: [1, 2, 1, 2]),
        Room(number: 373, teacher: "Mr. Hughes", email: "hughesg@lmsd.org", lunch: [2, 1, 2, 1]),
        Room(number: 375, teacher: "Mr. Locher", email: "locher@lmsd.org", lunch: [1, 1, 1, 2]),
        Room(number: 377, teacher: "Mr. Arlith", email: "arlethk@lmsd.org", lunch: [2, 2, 2, 1]),
        Room(number: 378, teacher: "Mr. Tsai", email: "tsai@lmsd.org", lunch: [1, 2, 2, 1])]
}
