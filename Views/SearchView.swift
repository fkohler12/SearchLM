//
//  SearchView.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/23/24.
//

import SwiftUI

struct SearchView: View {
    
    //vars
    private var listOfRooms = AllRooms()
    @State var searchText = ""
    
    var body: some View {
        //full list before the search
        NavigationView {
            List {
                ForEach(teachers, id: \.self) {teacher in
                    var num = findRoom(room: teacher)
                    HStack {
                        Text(teacher.capitalized)
                        Spacer()
                        Text("\(num!)")
                    }
                    .padding()
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Search")
        }
    }
    //search vars + functions
    var teachers: [String] {
        let lcTeachers = listOfRooms.allRooms.map{$0.teacher.lowercased()}
        
        return searchText == "" ? lcTeachers : lcTeachers.filter {
            $0.contains(searchText.lowercased())
        }
    }
    //function
    func findRoom (room: String) -> Int? {
        for i in 0..<listOfRooms.allRooms.count {
            if listOfRooms.allRooms[i].teacher.lowercased().contains(room) {
                return listOfRooms.allRooms[i].number
            }
        }
        
        return 0
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
