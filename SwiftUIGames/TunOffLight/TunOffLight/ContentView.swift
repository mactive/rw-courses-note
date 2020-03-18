//
//  ContentView.swift
//  TunOffLight
//
//  Created by Qian Meng on 2020/3/17.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI
struct Light{
    // 开关状态
    var status: Bool = false
}

struct ContentView: View {

    var lights = [
        [Light(), Light(), Light(status: true)],
        [Light(), Light(), Light()],
        [Light(status: true), Light(), Light()],
    ]

    var body: some View {
        VStack{
            ForEach(0..<lights.count) { rowIndex in
                HStack(spacing: 20) {
                    ForEach(0..<self.lights[rowIndex].count) { columnIndex in
                        Circle()
                        .foregroundColor(self.lights[rowIndex][columnIndex].status ? .yellow : .gray)
                        .opacity(self.lights[rowIndex][columnIndex].status ? 0.8 : 0.5)
                        .frame(width: UIScreen.main.bounds.width / 5,
                               height: UIScreen.main.bounds.width / 5)
                        .shadow(color: .yellow, radius: self.lights[rowIndex][columnIndex].status ? 10 : 0)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
