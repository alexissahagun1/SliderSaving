//
//  ContentView.swift
//  ColorSlider
//
//  Created by gdaalumno on 14/10/21.
//

import SwiftUI


struct ContentView: View {
    
    @State private var red: Double = UserDefaults.standard.double(forKey: "red")
    @State private var blue: Double = UserDefaults.standard.double(forKey: "blue")
    @State private var green: Double = UserDefaults.standard.double(forKey: "green")
//

//
    var body: some View {
        
        Text("\(red)")
        Slider(value: $red, in: 0...255) {_ in
            UserDefaults.standard.set(self.red, forKey: "red")
        }
        Text("\(blue)")
        Slider(value: $blue, in: 0...255) {_ in
            UserDefaults.standard.set(self.blue, forKey: "blue")
        }
        Text("\(green)")
        Slider(value: $green, in: 0...255) {_ in
            UserDefaults.standard.set(self.green, forKey: "green")
            
        }
        
    }
    
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
