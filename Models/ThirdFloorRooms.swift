//
//  ThirdFloorRooms.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/15/24.
//

import Foundation

class ThirdFloorRooms: ObservableObject{
    @Published var thirdFloorRooms: [Room] = [
        Room(number: 301, teacher: "Ms. Basko", email: "basko@lmsd.org", lunch: [2, 2, 2, 1]),
        Room(number: 302, teacher: "Mr. Moeller", email: "moellem@lmsd.org", lunch: [1, 2, 2, 1]),
        Room(number: 303, teacher: "Dr. Masoodi", email: "masoods@lmsd.org", lunch: [1, 1, 1, 1]),
        Room(number: 304, teacher: "Mrs. Rehak", email: "rehakc@lmsd.org", lunch: [2, 2, 2, 2]),
        Room(number: 305, teacher: "Mrs. Hodos", email: "hodost@lmsd.org", lunch: [1, 2, 1, 1]),
        Room(number: 306, teacher: "Mr. Levy", email: "levym@lmsd.org", lunch: [2, 1, 2, 2]),
        Room(number: 307, teacher: "Ms. McDermott", email: "mcdermk@lmsd.org", lunch: [1, 2, 2, 2]),
        Room(number: 308, teacher: "Ms. Ferguson", email: "fergusa@lmsd.org", lunch: [2, 1, 1, 1]),
        Room(number: 309, teacher: "Ms. Gavin", email: "gavind@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 310, teacher: "Mrs. Stevens", email: "stevenp@lmsd.org", lunch: [1, 1, 2, 2]),
        Room(number: 311, teacher: "Ms. Dyson", email: "dysonm@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 312, teacher: "Mrs. Sand", email: "sandj@lmsd.org", lunch: [1, 2, 1, 2]),
        Room(number: 313, teacher: "Ms. Steibitz", email: "stiebil@lmsd.org", lunch: [2, 1, 2, 1]),
        Room(number: 315, teacher: "Mr. Schwartz", email: "schward@lmsd.org", lunch: [1, 1, 1, 2]),
        Room(number: 316, teacher: "Ms. Campbell", email: "campbell@lmsd.org", lunch: [2, 2, 2, 1]),
        Room(number: 317, teacher: "Mr. Deegan", email: "deegan@gmail.com", lunch: [1, 2, 2, 1]),
        Room(number: 318, teacher: "Mr. Reis", email: "rieske@lmsd.org", lunch: [1, 1, 1, 1]),
        Room(number: 319, teacher: "Ms. Kannengieszer", email: "kannengieszer@lmsd.org", lunch: [2, 2, 2, 2]),
        Room(number: 320, teacher: "Mrs. O'Conor", email: "oconok@lmsd.org", lunch: [1, 2, 1, 1]),
        Room(number: 321, teacher: "Mrs. O'Bannon", email: "obanns@lmsd.org", lunch: [2, 1, 2, 2]),
        Room(number: 322, teacher: "Mr. Haines", email: "hainesi@lmsd.org", lunch: [1, 2, 2, 2]),
        Room(number: 323, teacher: "Dr. Keenan", email: "keenanj@lmsd.org", lunch: [2, 1, 1, 1]),
        Room(number: 324, teacher: "Mr. Haglun", email: "haglunj@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 325, teacher: "Mrs. Groendal", email: "groena@lmsd.org", lunch: [1, 1, 2, 2]),
        Room(number: 326, teacher: "Mr. Cahill", email: "cahillj@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 327, teacher: "Mr. Lynn", email: "lynner@lmsd.org", lunch: [1, 2, 1, 2]),
        Room(number: 328, teacher: "Mrs. McCloy", email: "mccloym@lmsd.org", lunch: [2, 1, 2, 1]),
        Room(number: 329, teacher: "Mrs. Mirzanschall", email: "mirzans@lmsd.org", lunch: [1, 1, 1, 2]),
        Room(number: 330, teacher: "Mr. Laubach", email: "laubacc@lmsd.org", lunch: [2, 2, 2, 1]),
        Room(number: 331, teacher: "Mrs. Dolente", email: "dolentc@lmsd.org", lunch: [1, 2, 2, 1]),
        Room(number: 332, teacher: "Mr. Henneberry", email: "hennebc@lmsd.org", lunch: [1, 1, 1, 1]),
        Room(number: 333, teacher: "Mr. Seibert", email: "seibers@lmsd.org", lunch: [2, 2, 2, 2]),
        Room(number: 334, teacher: "Aaron Silber", email: "s026412@students.lmsd.org", lunch: [1, 2, 1, 1]),
        Room(number: 335, teacher: "Mrs. Williams", email: "williams@lmsd.org", lunch: [2, 1, 2, 2]),
        Room(number: 336, teacher: "Mr. Dawson", email: "dawsonp@lmsd.org", lunch: [1, 2, 2, 2]),
        Room(number: 337, teacher: "Ms. Werder", email: "werderd@lmsd.org", lunch: [2, 1, 1, 1]),
        Room(number: 338, teacher: "Mr. Long", email: "long@lmsd.org", lunch: [2, 2, 1, 1]),
        Room(number: 339, teacher: "Ms. Hannon", email: "hannona@lmsd.org", lunch: [1, 1, 2, 2])]
}
