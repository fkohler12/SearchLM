//
//  AllFloors.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/29/24.
//

import Foundation

class AllRooms: ObservableObject{
    @Published var allRooms: [Room] = [
        Room(number: 351, teacher: "Mr. Werkheiser", email: "werkheiser@lmsd.org"),
        Room(number: 354, teacher: "Mr. Cronin", email: "croninp@lmsd.org"),
        Room(number: 373, teacher: "Mr. Hughes", email: "hughesg@lmsd.org"),
        Room(number: 375, teacher: "Mr. Locher", email: "locher@lmsd.org"),
        Room(number: 377, teacher: "Mr. Arlith", email: "arlethk@lmsd.org"),
        Room(number: 378, teacher: "Mr. Tsai", email: "tsai@lmsd.org"),
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
        Room(number: 147, teacher: "Mrs. Oppenheimer", email: "oppenha@lmsd.org"),
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
        Room(number: 231, teacher: "Mrs. Lopez", email: "lopezk@lmsd.org"),
        Room(number: 301, teacher: "Ms. Basko", email: "basko@lmsd.org"),
        Room(number: 302, teacher: "Mr. Moeller", email: "moellem@lmsd.org"),
        Room(number: 303, teacher: "Dr. Masoodi", email: "masoods@lmsd.org"),
        Room(number: 304, teacher: "Mrs. Rehak", email: "rehakc@lmsd.org"),
        Room(number: 305, teacher: "Mrs. Hodos", email: "hodost@lmsd.org"),
        Room(number: 306, teacher: "Mr. Levy", email: "levym@lmsd.org"),
        Room(number: 307, teacher: "Ms. McDermott", email: "mcdermk@lmsd.org"),
        Room(number: 308, teacher: "Ms. Ferguson", email: "fergusa@lmsd.org"),
        Room(number: 309, teacher: "Ms. Gavin", email: "gavind@lmsd.org"),
        Room(number: 310, teacher: "Mrs. Stevens", email: "stevenp@lmsd.org"),
        Room(number: 311, teacher: "Ms. Dyson", email: "dysonm@lmsd.org"),
        Room(number: 312, teacher: "Mrs. Sand", email: "sandj@lmsd.org"),
        Room(number: 313, teacher: "Ms. Steibitz", email: "stiebil@lmsd.org"),
        Room(number: 315, teacher: "Mr. Schwartz", email: "schward@lmsd.org"),
        Room(number: 316, teacher: "Ms. Campbell", email: "campbell@lmsd.org"),
        Room(number: 317, teacher: "Mr. Deegan", email: "deegan@gmail.com"),
        Room(number: 318, teacher: "Mr. Reis", email: "rieske@lmsd.org"),
        Room(number: 319, teacher: "Ms. Kannengieszer", email: "kannengieszer@lmsd.org"),
        Room(number: 320, teacher: "Mrs. O'Conor", email: "oconok@lmsd.org"),
        Room(number: 321, teacher: "Mrs. O'Bannon", email: "obanns@lmsd.org"),
        Room(number: 322, teacher: "Mr. Haines", email: "hainesi@lmsd.org"),
        Room(number: 323, teacher: "Dr. Keenan", email: "keenanj@lmsd.org"),
        Room(number: 324, teacher: "Mr. Haglun", email: "haglunj@lmsd.org"),
        Room(number: 325, teacher: "Mrs. Groendal", email: "groena@lmsd.org"),
        Room(number: 326, teacher: "Mr. Cahill", email: "cahillj@lmsd.org"),
        Room(number: 327, teacher: "Mr. Lynn", email: "lynner@lmsd.org"),
        Room(number: 328, teacher: "Mrs. McCloy", email: "mccloym@lmsd.org"),
        Room(number: 329, teacher: "Mrs. Mirzanschall", email: "mirzans@lmsd.org"),
        Room(number: 330, teacher: "Mr. Laubach", email: "laubacc@lmsd.org"),
        Room(number: 331, teacher: "Mrs. Dolente", email: "dolentc@lmsd.org"),
        Room(number: 332, teacher: "Mr. Henneberry", email: "hennebc@lmsd.org"),
        Room(number: 333, teacher: "Mr. Seibert", email: "seibers@lmsd.org"),
        Room(number: 334, teacher: "Aaron Silber", email: "s026412@students.lmsd.org"),
        Room(number: 335, teacher: "Mrs. Williams", email: "williams@lmsd.org"),
        Room(number: 336, teacher: "Mr. Dawson", email: "dawsonp@lmsd.org"),
        Room(number: 337, teacher: "Ms. Werder", email: "werderd@lmsd.org"),
        Room(number: 338, teacher: "Mr. Long", email: "long@lmsd.org"),
        Room(number: 339, teacher: "Ms. Hannon", email: "hannona@lmsd.org")]
}
