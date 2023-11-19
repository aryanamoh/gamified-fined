//
//  IntroView.swift
//  iosApp
//
//  Created by Aryana Mohammadi on 11/18/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI


struct Q1View: View {
    
//    @State var path: [String] = []
//    @State var scenario: [String] = ["🍎", "🍊", "🍌", "🥝"]
    @ObservedObject var player: Player
    
    var body: some View {
        VStack {
            Text("the essentials")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding([.top], 40)
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(UIColor(red: 0.70, green: 0.87, blue: 0.76, alpha: 1.00)))
                    .padding([.horizontal], 20)
                    .frame(height: 80)
                    .shadow(radius: 5)
                    .padding([.bottom,.top], 10)
                
                VStack {
                    Text("savings: $\(player.savings, specifier: "%.2f")")
                        .monospaced()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    Text("credit score: \(player.points)")
                        .monospaced()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(UIColor(red: 0.70, green: 0.87, blue: 0.76, alpha: 1.00)))
                    .padding([.horizontal], 20)
                    .frame(height: 350)
                    .shadow(radius: 5)
                
                VStack {
                    Text("prep for college!")
                        .monospaced()
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding([.horizontal], 30)
                        .padding([.bottom], 5)
                    
                    Text("preparing for the new academic year, you have to buy some essentials. how much would you spend on stationary?")
                        .monospaced()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding([.horizontal], 30)
                    
                    Text("will you [1] pay $60 for ordinary but necessary things? or [2] $90 because you enjoy having nice items? additional 30$ is the price for your happiness!")
                        .monospaced()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding([.horizontal], 30)
                        .padding([.top], 5)
                        
                }
                
                
            }
            
            Spacer()
            
            HStack {
                NavigationLink (destination: R11View(player: player)) {
                    Text("1")
                }
                .frame(width: 100, height: 100)
                .background(Color(UIColor(red: 1.00, green: 0.44, blue: 0.65, alpha: 1.00)))
                .foregroundColor(.white)
                .cornerRadius(40)
                .shadow(radius: 5)
                
                .padding([.horizontal], 10)
                
                NavigationLink (destination: R12View(player: player)) {
                    Text("2")
                }
                .frame(width: 100, height: 100)
                .background(Color(UIColor(red: 1.00, green: 0.59, blue: 0.44, alpha: 1.00)))
                .foregroundColor(.white)
                .cornerRadius(40)
                .shadow(radius: 5)
            
                .padding([.horizontal], 10)
                
            }
            .padding([.bottom], 40)
        }
        .background(Color(UIColor(red: 0.84, green: 0.99, blue: 0.94, alpha: 1.00)))
        
        
    }
}

#Preview {
    Q1View(player: Player())
}
