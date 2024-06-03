//

//  ChemView.swift

//  FinalProject

//

//  Created by Felix Kohler (student LM) on 4/9/24.

//



import SwiftUI



struct ChemView: View {

    

    @EnvironmentObject var chemistryRooms: ChemRooms

    

    var body: some View {

        NavigationView {

            List(chemistryRooms.chemRooms) { room in

                NavigationLink(destination: {

                    RoomDetailView(room: room)

                }, label: {

                    Text("\(room.number)")

                        .font(.custom("Helvetica Neue Thin", size: 15))

                })

            }

            .navigationTitle("Chemistry Rooms")

        }

        .environmentObject(ChemRooms())

    }

}



struct ChemView_Previews: PreviewProvider {

    static var previews: some View {

        ChemView()

            .environmentObject(ChemRooms())

    }

}
