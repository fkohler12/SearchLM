//
//  BasementView.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 4/9/24.
//

import SwiftUI

struct BasementView: View {
    //vars
    @EnvironmentObject var groundFloorRooms: GroundFloorRooms
    
    var body: some View {
        //link onto the list of rooms for the ground floors
        NavigationView {
            List(groundFloorRooms.groundFloorRooms) { room in
                NavigationLink(destination: {
                    RoomDetailView(room: room)
                }, label: {
                    Text("\(room.number)")
                        .font(.custom("Helvetica Neue Thin", size: 15))
                })
            }
            .navigationTitle("Ground Floor")
        }
        .environmentObject(GroundFloorRooms())
    }

}

struct BasementView_Previews: PreviewProvider {
    static var previews: some View {
        BasementView()
    }
}
