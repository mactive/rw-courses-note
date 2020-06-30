//
//  ContentView.swift
//  swiftUI12
//
//  Created by Qian Meng on 2020/6/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ExtractedView(title: "SwiftUI", subTitle: "Amazing")
            ExtractedView(title: "World", subTitle: "Amazing", bgColor: Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct ExtractedView: View {
    var title: String
    var subTitle: String
    var bgColor: Color = Color.green
    var body: some View {
        VStack{
            Text("Hello, \(title)!").padding()
            Spacer().frame(width: 100, height: 100, alignment: .center)
            Text(subTitle)
                .padding()
                .font(.title)
        }
        .background(bgColor)
    }
}
