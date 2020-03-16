//
//  BackCardView.swift
//  layoutandstack
//
//  Created by Qian Meng on 2020/2/2.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI

struct BackCardView: View {
    var body: some View {
        VStack{
            Spacer()
        }
        .frame(width: 300.0, height: 200.0)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView_Previews: PreviewProvider {
    static var previews: some View {
        BackCardView()
    }
}
