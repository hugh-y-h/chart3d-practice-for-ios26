//
//  ContentView.swift
//  score-counter-with-watch-app
//
//  Created by Yaohui  Wang  on 2025/10/13.
//

import SwiftUI
import Charts

struct ContentView: View {
    @State private var pose: Chart3DPose = .default
    
    var body: some View {
        Chart3D {
            SurfacePlot(x: "x", y: "y", z: "x") {
                x, z in
                sin(2 * x) * cos(2 * z)
            }
        }
        .chart3DPose($pose)
    }
}

#Preview {
    ContentView()
}


