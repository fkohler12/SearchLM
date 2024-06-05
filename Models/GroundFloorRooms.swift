//
//  GroundFloorRooms.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/16/24.
//

import Foundation
//ground floor aka gym area
class GroundFloorRooms: ObservableObject{
    @Published var groundFloorRooms: [Room] = [
        Room(number: 001, teacher: "Mr. Downer", email: "downerg@lmsd.org"),
        Room(number: 003, teacher: "Ms. Michaud", email: "michauk@lmsd.org"),
        Room(number: 007, teacher: "Mr. Kline", email: "klinet@lmsd.org"),
        Room(number: 009, teacher: "Mr. Stroup", email: "stroupj@lmsd.org")]
}
