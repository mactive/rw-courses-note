//
//  ContentView.swift
//  layoutandstack
//
//  Created by Qian Meng on 2020/2/2.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TitleView()
            BackCardView()
                .background(Color("card3"))
                .cornerRadius(20)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
                .rotation3DEffect(Angle.degrees(10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)

            
            BackCardView()
                .background(Color("card4"))
                .cornerRadius(20)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
                .rotation3DEffect(Angle.degrees(5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)

            CardView()
            VStack{
                Rectangle()
                    .background(Color.black)
                    .frame(width: 40, height: 6)
                    .cornerRadius(3)
                    .opacity(0.1)
                    .padding(.bottom, 20)
                Text("This certificates is proof that Meng To has achived the UI Design course with approval from a Design+Code instructor")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                Spacer()
            }
            .padding(.top, 10)
            .padding(.horizontal, 20)
            .frame(maxWidth:.infinity   )
            .background(Color.white)
            .cornerRadius(30)
            .offset(x: 0, y: 500)
            .shadow(radius: 20)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UIDesign")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 100, alignment: .top)
        }
        .frame(width: 320.0, height: 200.0)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}


struct TitleView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Image("Background1")
            Spacer()
        }
    }
}
