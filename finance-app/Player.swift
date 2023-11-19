//
//  PlayerClass.swift
//  finance-app
//
//  Created by Aryana Mohammadi on 11/18/23.
//

import Foundation
import SwiftUI

class Player: ObservableObject {
    @Published var name = ""
    @Published var savings = 3000.0
    @Published var points = 0
}
