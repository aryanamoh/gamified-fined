//
//  IntroView.swift
//  iosApp
//
//  Created by Aryana Mohammadi on 11/18/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI


struct Q2View: View {
    
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
                    Text("a new laptop is coming out!")
                        .monospaced()
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding([.horizontal], 30)
                        .padding([.bottom], 5)
                    
                    Text("many of your friends are upgrading. you don’t want to be a black sheep of the group. plus, yours is working but getting older.")
                        .monospaced()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding([.horizontal], 30)
                    
                    Text("will you [1] pay $2000 for a new laptop? or [2] wait and don't change?")
                        .monospaced()
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding([.horizontal], 30)
                        .padding([.top], 5)
                        
                }
                
                
            }
            
            Spacer()
            
            HStack {
                NavigationLink (destination: R21View(player: player)) {
                    Text("1")
                }
                .frame(width: 100, height: 100)
                .background(Color(UIColor(red: 1.00, green: 0.44, blue: 0.65, alpha: 1.00)))
                .foregroundColor(.white)
                .cornerRadius(40)
                .shadow(radius: 5)
                
                .padding([.horizontal], 10)
                
                NavigationLink (destination: R22View(player: player)) {
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
    Q2View(player: Player())
}
