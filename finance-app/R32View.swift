//
//  R11View.swift
//  finance-app
//
//  Created by Aryana Mohammadi on 11/19/23.
//

import Foundation
import SwiftUI

struct R32View: View {
    @ObservedObject var player: Player
    
    var body: some View {
//        NavigationView {
//        NavigationStack(path: $path) {
            VStack {
                Text("decline")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding([.top], 40)
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
                        Text("no new credit card...")
                            .monospaced()
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding([.horizontal], 30)
                            .padding([.bottom], 5)
                        
                        Text("your friends decide to get a credit card and build their credit. building credit is important when you apply for things like morgages in the future. also, your friends experience so many great rewards! are you happy with your decision?")
                            .monospaced()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding([.horizontal], 30)
                    }
                    
                    
                }
                Spacer()
                
                NavigationLink {
                    EOPView()
                } label: {
                    Text("next")
                        .frame(width: 180, height: 45)
                        .background(Color(UIColor(red: 0.07, green: 0.44, blue: 0.39, alpha: 1.00)))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }.padding(.bottom)
                
                
                
            }
            .background(Color(UIColor(red: 0.84, green: 0.86, blue: 0.80, alpha: 1.00)))
            .onAppear {
                player.savings -= 0000.0
                player.points += 00
            }
            
//        }
//        .navigationDestination(for: String.self) { value in
            
            
        
    }
}


#Preview {
    R32View(player: Player())
}
