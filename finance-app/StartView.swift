//
//  StartView.swift
//  iosApp
//
//  Created by Aryana Mohammadi on 11/18/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

struct StartView: View {
    
    @State private var username: String = ""
    @StateObject var player = Player()
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Text("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
                    .font(.system(size: 60))
                    .foregroundStyle(.white)
                VStack {
                    Text("welcome to junior money masters!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .padding([.top, .bottom],40)
                        .padding([.horizontal], 110)
                        .bold()
                    
                    Text("what's your name?")
                        .font(.headline)
                        .padding([.top], 100)
                    
                    TextField("first name", text: $player.name)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 200, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.bottom], 15)
                    
                    
                    
                    Spacer()
                    
                    NavigationLink {
                        IntroView(player: player)
                    } label: {
                        Text("let's go!")
                            .frame(width: 180, height: 45)
                            .background(Color(UIColor(red: 0.70, green: 0.87, blue: 0.76, alpha: 1.00)))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    .padding([.bottom], 50)
                    
                    
                }
                
                .textFieldStyle(.roundedBorder)
                
            }.background(Color(UIColor(red: 0.84, green: 0.99, blue: 0.94, alpha: 1.00)))
        }
        
    }
}

#Preview {
    StartView()
}
