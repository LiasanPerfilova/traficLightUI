//
//  ContentView.swift
//  traficLightUI
//
//  Created by Liaisan on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    enum TrafficLightState {
           case red, yellow, green
       }
    @State private var currentLightState: TrafficLightState = .red
    
    var counter = 0
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(currentLightState == .red ? .red : .gray)
                
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(currentLightState == .green ? .green : .gray)
                
                
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(currentLightState == .yellow ? .yellow : .gray)
              
               
            }
            Spacer()
            
            Button("Start") {
                switch currentLightState {
                    
                case .red:
                    currentLightState = .green
                case .green:
                    currentLightState = .yellow
                case .yellow:
                    currentLightState = .red
                    
                    
                }
            }
            
          
        }
      
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
