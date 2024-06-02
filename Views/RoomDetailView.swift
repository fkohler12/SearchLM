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
            }.padding()
            HStack{
                VStack{
                    Text("A: lunch \(room.lunch[0])").padding()
                        .font(.custom("Helvetica Neue Thin", size: 20))
                    Text("B: lunch \(room.lunch[1])").padding()
                        .font(.custom("Helvetica Neue Thin", size: 20))
                    Text("C: lunch \(room.lunch[2])").padding()
                        .font(.custom("Helvetica Neue Thin", size: 20))
                    Text("D: lunch \(room.lunch[3])").padding()
                        .font(.custom("Helvetica Neue Thin", size: 20))
                }.padding()
                Spacer()
            }

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
