//
//  ContentView.swift
//  turnOffLight
//
//  Created by Qian Meng on 2020/1/21.
//  Copyright © 2020 Qian Meng. All rights reserved.
//

import SwiftUI
struct Light {
    var status = false
}

struct ContentView: View {

    var lights = [
        [Light(), Light(status: true), Light()],
        [Light(), Light(), Light()],
        [Light(), Light(status: true), Light()],
    ]

    /// 圆形图案之间的间距
    private let innerSpacing = 30

    var body: some View {
        ForEach(0..<lights.count) { rowindex in
            HStack(spacing: 20) {
                ForEach(0..<self.lights[rowindex].count) { columnIndex in
                    Circle()
                        .foregroundColor(self.lights[rowindex][columnIndex].status ? .yellow : .gray)
                        .opacity(self.lights[rowindex][columnIndex].status ? 0.8 : 0.5)
                        .frame(width: UIScreen.main.bounds.width / 5,
                               height: UIScreen.main.bounds.width / 5)
                        .shadow(color: .yellow, radius: self.lights[rowindex][columnIndex].status ? 10 : 0)
                }
            }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
        }
    }
}
