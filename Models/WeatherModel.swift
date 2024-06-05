//
//  WeatherModel.swift
//  FinalProject
//
//  Created by Quinten Pearsall (student LM) on 4/5/24.
//

import SwiftUI

//top level
struct Today : Codable {
    var main : Main = Main()
    var weather : Weather = Weather()
    
}


//second level, second branch
struct Weather : Codable {
    var id : Int = 800
    var main : String = "Clear"
    var description : String = "clear sky"
    var icon : String = "04d"
}

//second level, 1st branch
struct Main: Codable {
    var temp : Double = 255.372
    var feels_like : Double = 255.372
    var temp_min : Double = 255.372
    var temp_max : Double = 255.372
    var humidity : Int = 0
    
}
//getting data from the api and converting it to usable information
class TodayModel: ObservableObject {
    
    @Published var today = Today()
    
    func loadData(latitude: Double = 40.0068, longitude : Double = -75.2855) async {
        let urlString : String = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=7dd140562133136e8b55f48f3633521c"
        
        guard let url = URL(string: urlString) else {return}
        
        guard var (data, _) = try? await URLSession.shared.data(from : url) else {return}
//transforming data into a printable string by taking it out of the object 
        // convert to a string
        var dataString = String(data: data, encoding: .utf8)
        // remove the [ and ]
        dataString = dataString?.replacingOccurrences(of: "[", with: "")
        dataString = dataString?.replacingOccurrences(of: "]", with: "")


        // convert back to data
        guard let data = dataString?.data(using: .utf8) else {return}
        
        guard let t = try? JSONDecoder().decode(Today.self, from: data) else {return}

        
        
        today = t
        
        
    }
    
}
