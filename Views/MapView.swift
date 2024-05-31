//
//  MapView.swift
//  FinalProject
//
//  Created by Youssef Niazy (student LM) on 3/13/24.
//

import SwiftUI

enum ViewState {
    case g, l1, l2, l3, chem
}

struct MapView: View {
    
    @State var viewState: ViewState = .l1
    
    var body: some View {
        
        HStack{
            VStack{
                Button{
                    viewState = .l1
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 35, height: 20)
                            .cornerRadius(10)
                            .foregroundColor(.maroon)
                        Text("L1")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                Button{
                    viewState = .l2
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 35, height: 20)
                            .cornerRadius(10)
                            .foregroundColor(.maroon)
                        Text("L2")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                Button{
                    viewState = .l3
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 35, height: 20)
                            .cornerRadius(10)
                            .foregroundColor(.maroon)
                        Text("L3")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                Button{
                    viewState = .g
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 35, height: 20)
                            .cornerRadius(10)
                            .foregroundColor(.maroon)
                        Text("G")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                Button{
                    viewState = .chem
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 35, height: 20)
                            .cornerRadius(10)
                            .foregroundColor(.maroon)
                        Text("Ch")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
            }
            Spacer()
            if viewState == .l1 {
                FirstFloorView()
            }
            else if viewState == .l2 {
                SecondFloorView()
            }
            else if viewState == .l3 {
                ThirdFloorView()
            }
            else if viewState == .g {
                BasementView()
            }
            else if viewState == .chem {
                ChemView()
            }
        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
