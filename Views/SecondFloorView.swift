//
//  SecondFloorView.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 4/9/24.
//

import SwiftUI

struct SecondFloorView: View {
    
        @EnvironmentObject var secondFloorRooms: SecondFloorRooms
        
        var body: some View {
            NavigationView {
                List(secondFloorRooms.secondFloorRooms) { room in
                    NavigationLink(destination: {
                        RoomDetailView(room: room)
                    }, label: {
                        Text("\(room.number)")
                            .font(.custom("Helvetica Neue Thin", size: 15))
                    })
                }
                .navigationTitle("Floor 2")
            }
            .environmentObject(SecondFloorRooms())
        }
    }

struct SecondFloorView_Previews: PreviewProvider {
    static var previews: some View {
        SecondFloorView()
    }
}
