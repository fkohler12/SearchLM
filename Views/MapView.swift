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
    
    @State var viewState: ViewState = .g
    
    var body: some View {
        VStack{
            VStack{
                if viewState == .g {
                    BasementView()
                }
                else if viewState == .l1 {
                    FirstFloorView()
                }
                else if viewState == .l2 {
                    SecondFloorView()
                }
                else if viewState == .l3 {
                    ThirdFloorView()
                }
                else if viewState == .chem {
                    ChemView()
                }
            }
            Spacer()
            HStack{
                
                Button {
                    viewState = .g
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(.maroon)
                        Text("G")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding(.leading)
                                
                Button {
                    viewState = .l1
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(.maroon)
                        Text("L1")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                
                Button {
                    viewState = .l2
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(.maroon)
                        Text("L2")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                
                Button {
                    viewState = .l3
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(.maroon)
                        Text("L3")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding()
                
                
                Button {
                    viewState = .chem
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .cornerRadius(20)
                            .foregroundColor(.maroon)
                        Text("C")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                }.padding(.trailing)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
