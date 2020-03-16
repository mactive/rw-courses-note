//
//  ContentView.swift
//  Bullseye
//
//  Created by Qian Meng on 2020/1/19.
//  Copyright © 2020 Qian Meng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, World!")
                .padding()
            Button(action: {
                print("Press me button pressed")
            }){
                Text("Press me!")
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .border(Color.purple, width: 5)
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
