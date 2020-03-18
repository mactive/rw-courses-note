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
    var status: Bool = Bool.random()
}

struct ContentView: View {

    @State var lights = [
        [Light(), Light(), Light()],
        [Light(), Light(), Light()],
        [Light(), Light(), Light()],
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
                            .onTapGesture {
                                self.updateLightStatus(row: rowIndex, column: columnIndex)
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            }
            Button(action: {
                print("Delete tapped!")
                self.refreshLights()
            }) {
                HStack {
                    Image(systemName: "goforward")
                        .font(.title)
                    Text("Refresh")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40)
            }
        }
    }
    
    func refreshLights() {
        lights = [
           [Light(), Light(), Light()],
           [Light(), Light(), Light()],
           [Light(), Light(), Light()],
        ]

    }
    // 修改灯的状态
    func updateLightStatus(row: Int, column: Int) {
        // toggle self
        lights[row][column].status.toggle()
        
        // 上
        let top = row - 1
        if !(top < 0) {
            lights[top][column].status.toggle()
        }
        
        // 下
        let bottom = row + 1
        if !(bottom > lights.count - 1) {
            lights[bottom][column].status.toggle()
        }
        
        // 左
        let left = column - 1
        if !(left < 0) {
            lights[row][left].status.toggle()
        }
        
        // 右
        let right = column + 1
        if !(right > lights[row].count - 1) {
            
            lights[row][right].status.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
