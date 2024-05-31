//
//  ThirdFloorView.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 4/9/24.
//

import SwiftUI

struct ThirdFloorView: View {
    @EnvironmentObject var thirdFloorRooms: ThirdFloorRooms
    
    var body: some View {
        NavigationView {
            List(thirdFloorRooms.thirdFloorRooms) { room in
                NavigationLink(destination: {
                    RoomDetailView(room: room)
                }, label: {
                    Text("\(room.number)")
                        .font(.custom("Helvetica Neue Thin", size: 15))
                })
            }
            .navigationTitle("Floor 3")
        }
        .environmentObject(ThirdFloorRooms())
    }
}

struct ThirdFloorView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdFloorView()
    }
}
