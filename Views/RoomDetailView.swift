//
//  RoomDetailView.swift
//  FinalProject
//
//  Created by Felix Kohler (student LM) on 5/1/24.
//

import SwiftUI

struct RoomDetailView: View {
    
    var room: Room
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Text(room.teacher)
                    .font(.custom("Helvetica Neue Thin", size: 20))
                    .padding(25)
                Spacer()
                Text("\(room.number)")
                    .font(.custom("Helvetica Neue Thin", size: 20))
                    .padding(25)
            }
            Spacer()
            HStack{
                Spacer()
                Text(room.email)
                    .font(.custom("Helvetica Neue Thin", size: 20))
                    .padding(25)
            }

            Spacer()
            Spacer()
            Spacer()
            
        }
    }
}

struct RoomDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetailView(room: Room())
    }
}
