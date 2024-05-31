//
//  FirstFloorView.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 4/9/24.
//

import SwiftUI

struct FirstFloorView: View {
    
    @EnvironmentObject var firstFloorRooms: FirstFloorRooms
    
    var body: some View {
        NavigationView {
            List(firstFloorRooms.firstFloorRooms) { room in
                NavigationLink(destination: {
                    RoomDetailView(room: room)
                }, label: {
                    Text("\(room.number)")
                        .font(.custom("Helvetica Neue Thin", size: 15))
                })
            }
            .navigationTitle("Floor 1")
        }
        .environmentObject(FirstFloorRooms())
    }
}

struct FirstFloorView_Previews: PreviewProvider {
    static var previews: some View {
        FirstFloorView()
    }
}
