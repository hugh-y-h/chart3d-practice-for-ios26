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
        VStack(spacing: 20) {
            Text("阿拉伯语自动排版演示（TextKit 2）")
                .font(.headline)
            
            // 展示阿拉伯语文本的自定义 TextView
            CustomTextView()
                .padding()
                .border(Color.gray, width: 1) // 加边框便于观察范围
                .padding()
        }
    }
}

#Preview {
    ContentView()
}


