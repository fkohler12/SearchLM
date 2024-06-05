//
//  WeatherView.swift
//  FinalProject
//
//  Created by Quinten Pearsall (student LM) on 4/5/24.
//

import SwiftUI
//kingfisher to pull image from internet after pulling ID from API
import Kingfisher

struct WeatherView: View {
    
    
    //vars
    @StateObject var todayModel : TodayModel = TodayModel()
    
    @EnvironmentObject var user : User
    
    var body: some View {
        VStack{
            
            
            //kingfisher use by pulling id from API
            KFImage(URL(string:"https://openweathermap.org/img/wn/\(todayModel.today.weather.icon)@2x.png"))
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Spacer()
            
            //based on temperature, prints out what to wear
            Text("What should you wear today?")
                .font(.title)
            
            if (((todayModel.today.main.temp) - 273.15) * 1.8 + 32 ) > 64.5 {
                Text("Shorts and a T-Shirt")
            }
            else if (((todayModel.today.main.temp) - 273.15) * 1.8 + 32 ) > 54.5 {
                Text("Pants and a T-Shirt or a SweatShirt")
            }
            else if (((todayModel.today.main.temp) - 273.15) * 1.8 + 32 ) > 39.5 {
                Text("Pants and a SweatShirt")
            }
            else {
                Text("Pants and a Jacket")
            }
            Spacer()
            
            HStack {
                
                Spacer()
                
                VStack {
                    
                    Spacer()
//all data 
                    Text("Temperature")
                        .font(.custom("Helvetica Neue Thin" , fixedSize: 20))
                    Text("\(Int(((todayModel.today.main.temp) - 273.15) * 1.8 + 32 ))º")
                        .font(.custom("Helvetica Neue Thin" , fixedSize: 60))
                    
                    Spacer()
                    
                    VStack{
                        Text("Real feel")
                            .font(.custom("Helvetica Neue Thin" , fixedSize: 20))
                        Text("\(Int(todayModel.today.main.feels_like * 1.8 - 459.67))º")
                            .font(.custom("Helvetica Neue Thin" , fixedSize: 60))
                    }
                    Spacer()

                    
                }
                
                Spacer()
            
            
                VStack {
                    Spacer()

                    VStack{
                        Text("High Temperature")
                            .font(.custom("Helvetica Neue Thin" , fixedSize: 20))
                        Text("\(Int(todayModel.today.main.temp_max * 1.8 - 459.67))º")
                            .font(.custom("Helvetica Neue Thin" , fixedSize: 60))
                    }
                    Spacer()
                    VStack{
                        Text("Low Temperature")
                            .font(.custom("Helvetica Neue Thin" , fixedSize: 20))
                        Text("\(Int(todayModel.today.main.temp_min * 1.8 - 459.67))º")
                            .font(.custom("Helvetica Neue Thin" , fixedSize: 60))
                    }
                    
                    Spacer()

                }
                
                Spacer()
                
                
            }
            
            
            
            
            .task {
                await todayModel.loadData(latitude: user.latitude, longitude: user.longitude)
            }
        }
    }
}


struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

