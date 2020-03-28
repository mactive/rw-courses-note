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
                MenuRow(icon: "gear", label: "Account")
                MenuRow(icon: "creditcard", label: "Billing")
                MenuRow(icon: "location.circle", label: "Location")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal, 30)
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
        
            Text(self.label)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, height: 30, alignment: .leading)
        }
    }
}
