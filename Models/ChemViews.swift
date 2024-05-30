//
//  ChemRooms.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/1/24.
//

import Foundation

class ChemRooms: ObservableObject{
    @Published var chemRooms: [Room] = [
        Room(number: 351, teacher: "Mr. Werkheiser", email: "werkheiser@lmsd.org"),
        Room(number: 354, teacher: "Mr. Cronin", email: "croninp@lmsd.org"),
        Room(number: 373, teacher: "Mr. Hughes", email: "hughesg@lmsd.org"),
        Room(number: 375, teacher: "Mr. Locher", email: "locher@lmsd.org"),
        Room(number: 377, teacher: "Mr. Arlith", email: "arlethk@lmsd.org"),
        Room(number: 378, teacher: "Mr. Tsai", email: "tsai@lmsd.org")]
}
