//  LandingPage.swift
//  score-counter-with-watch-app
//
//  Created by Yaohui  Wang  on 2025/10/14.
//

import SwiftUI

struct LandingPage: View {
    @State private var homeCounter = 0
    @State private var awayCounter = 0
    
    var body: some View {
        Button("Increase Home Counter") { // updated text to match the expected word
            self.homeCounter += 1
        }
    }
}

#Preview {
    LandingPage()
}
