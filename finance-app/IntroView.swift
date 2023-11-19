//
//  IntroView.swift
//  iosApp
//
//  Created by Aryana Mohammadi on 11/18/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

struct IntroView: View {
    
    @ObservedObject var player: Player
//    @State var path: [Int] = []
//    @State var scenario: [Int] = [0,1,2,3,4,5]
    
    @State var count = 0
    
    var body: some View {
//        NavigationView {
//        NavigationStack(path: $path) {
            VStack {
                Text("hi \(player.name), ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding([.top], 40)
                
                Text("you're on your way to becoming a junior money master!")
                    .multilineTextAlignment(.center)
                    .padding([.bottom], 20)
                
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
                        Text("welcome to your first year as college student!")
                            .monospaced()
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding([.horizontal], 30)
                            .padding([.bottom], 5)
                        
                        Text("you are 18 years old, and you are a freshman at the university. it is time to start a new chapter in your life! you just received $3000 from your parents to get you on your feet, but you'll have to make smart financial choices to make that last! can you survive throughout college? let’s check your financial literacy!")
                            .monospaced()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding([.horizontal], 30)
                    }
                    
                    
                }
                Spacer()
                
                NavigationLink {
                    Q1View(player: player)
                } label: {
                    Text("let's go!")
                        .frame(width: 180, height: 45)
                        .background(Color(UIColor(red: 0.07, green: 0.44, blue: 0.39, alpha: 1.00)))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                
                
                
            }
            .background(Color(UIColor(red: 0.84, green: 0.99, blue: 0.94, alpha: 1.00)))
            
//        }
//        .navigationDestination(for: String.self) { value in
            
            
        }
    }


#Preview {
    IntroView(player: Player())
}
