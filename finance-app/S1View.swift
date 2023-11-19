//
//  IntroView.swift
//  iosApp
//
//  Created by Aryana Mohammadi on 11/18/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

struct S1View: View {
    
    @ObservedObject var player: Player
//    @State var path: [Int] = []
//    @State var scenario: [Int] = [0,1,2,3,4,5]
    
    @State var count = 0
    
    var body: some View {
//        NavigationView {
//        NavigationStack(path: $path) {
            VStack {
                Text("oh no!")
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
                        Text("you forgot you had to buy textbooks for your classes!")
                            .monospaced()
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding([.horizontal], 30)
                            .padding([.bottom], 5)
                        
                        Text("you have to spend $350 this semester to buy all your books. unexpected charges can come up at any point, so it's good to make sure you have savings, just in case.")
                            .monospaced()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding([.horizontal], 30)
                    }
                    
                    
                }
                Spacer()
                
                NavigationLink {
                    Q2View(player: player)
                } label: {
                    Text("next")
                        .frame(width: 180, height: 45)
                        .background(Color(UIColor(red: 0.07, green: 0.44, blue: 0.39, alpha: 1.00)))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }.padding([.bottom])
                
                
                
            }
            .background(Color(UIColor(red: 0.84, green: 0.99, blue: 0.94, alpha: 1.00)))
            .onAppear {
                player.savings -= 350.0
            }
        
            
//        }
//        .navigationDestination(for: String.self) { value in
            
            
        }
    }


#Preview {
    S1View(player: Player())
}
