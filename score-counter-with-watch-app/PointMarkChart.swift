//
//  PenguinPointCharts.swift
//  score-counter-with-watch-app
//
//  Created by Yaohui  Wang  on 2025/10/15.
//

import SwiftUI
import Charts
import UIKit

struct Insect: Identifiable {
    let id: Int
    let name: String
    let family: String
    let wingLength: Double
    let wingWidth: Double
    let weight: Double
}

struct PenguinPointCharts: View {
    var data: [Insect] = [
        Insect(id: 0, name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
        Insect(id: 1, name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
        Insect(id: 2, name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),
        Insect(id: 3, name: "Lycaenidae", family: "Lepidoptera", wingLength: 55, wingWidth: 45, weight: 20),
        Insect(id: 4, name: "Nymphalidae", family: "Lepidoptera", wingLength: 65, wingWidth: 58, weight: 28),
        Insect(id: 5, name: "Papilionidae", family: "Lepidoptera", wingLength: 70, wingWidth: 60, weight: 30),
        Insect(id: 6, name: "Pieridae", family: "Lepidoptera", wingLength: 58, wingWidth: 49, weight: 21),
        Insect(id: 7, name: "Hesperiidae", family: "Lepidoptera", wingLength: 52, wingWidth: 44, weight: 19),
        Insect(id: 8, name: "Saturniidae", family: "Lepidoptera", wingLength: 75, wingWidth: 65, weight: 35),
        Insect(id: 9, name: "Sphingidae", family: "Lepidoptera", wingLength: 68, wingWidth: 55, weight: 29),
        Insect(id: 10, name: "Noctuidae", family: "Lepidoptera", wingLength: 62, wingWidth: 50, weight: 23),
        Insect(id: 11, name: "Geometridae", family: "Lepidoptera", wingLength: 59, wingWidth: 47, weight: 22),
        Insect(id: 12, name: "Tortricidae", family: "Lepidoptera", wingLength: 54, wingWidth: 42, weight: 17),
        Insect(id: 13, name: "Pyralidae", family: "Lepidoptera", wingLength: 56, wingWidth: 46, weight: 20),
        Insect(id: 14, name: "Bombycidae", family: "Lepidoptera", wingLength: 63, wingWidth: 53, weight: 25),
        Insect(id: 15, name: "Arctiidae", family: "Lepidoptera", wingLength: 64, wingWidth: 54, weight: 26),
        Insect(id: 16, name: "Notodontidae", family: "Lepidoptera", wingLength: 67, wingWidth: 57, weight: 27),
        Insect(id: 17, name: "Moth", family: "Lepidoptera", wingLength: 57, wingWidth: 48, weight: 21),
        Insect(id: 18, name: "Butterfly", family: "Lepidoptera", wingLength: 66, wingWidth: 56, weight: 25),
        Insect(id: 19, name: "Caterpillar", family: "Lepidoptera", wingLength: 30, wingWidth: 15, weight: 10)
    ]
    @State private var pose: Chart3DPose = .default
    var body: some View {
        Chart3D(data) {
            PointMark(
                x: .value("Wing Length", $0.wingLength),
                y: .value("Wing Width", $0.wingWidth),
                z: .value("Weight", $0.weight)
            )
            .foregroundStyle(by: .value("Category", $0.family))
        }
        .chart3DPose($pose)
    }
}


#Preview {
    PenguinPointCharts()
}
//https://developer.apple.com/documentation/charts/pointmark
