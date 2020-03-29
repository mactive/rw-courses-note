//
//  HomeView.swift
//  layoutandstack
//
//  Created by Qian Meng on 2020/3/29.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showProfile = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            // 最下面铺一层 预防透底
            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            // 内容层
            VStack {
                HStack(alignment: .center) {
                    Text("Watching")
                        .font(.system(size: 28, weight: .bold))
                    Spacer()
                    Button(action: {self.showProfile.toggle()}) {
                        Image("Avatar")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
                Spacer()
            }
            .padding(.top, 44)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .offset( y: showProfile ? -450 : 0)
            .rotation3DEffect(Angle(degrees: showProfile ? Double(viewState.height / 10) - 10 : 0), axis: (x: 10, y: 0, z: 0))
            .scaleEffect(self.showProfile ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            .edgesIgnoringSafeArea(.all)

            
            // 菜单层
            MenuView()
                .offset(y: self.showProfile ? 0 : 600)
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction:0.6, blendDuration: 0))
                .onTapGesture {
                    self.showProfile.toggle()
            }
        }
        // 作用在整个容器上
        .gesture(
            DragGesture().onChanged { value in
                self.viewState = value.translation
            }
            .onEnded { value in
                if self.viewState.height > 50 {
                    self.showProfile = false
                }
                self.viewState = .zero
            }
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
