//
//  MenuView.swift
//  layoutandstack
//
//  Created by Qian Meng on 2020/3/29.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()

            VStack(spacing: 16) {
                Text("Meng - 28% complete")
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
                MenuRow(icon: "gear", label: "Account")
                MenuRow(icon: "creditcard", label: "Billing")
                MenuRow(icon: "location.circle", label: "Location")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.7321143058, green: 0.8096149523, blue: 0.9197489767, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                    .clipShape(Circle())
                .offset(y: -150)
            )
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    var icon: String
    var label: String
    var body: some View {
        HStack {
            Image(systemName: self.icon)
                .font(.system(size: 20, weight: .light, design: .rounded))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1)))
        
            Text(self.label)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, height: 30, alignment: .leading)
        }
    }
}
