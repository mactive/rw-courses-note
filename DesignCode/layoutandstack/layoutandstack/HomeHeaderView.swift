//
//  HomeHeaderView.swift
//  layoutandstack
//
//  Created by Qian Meng on 2020/3/29.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var showProfile: Bool
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))
                Spacer()
                AvatarView(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.top, 30)
            Spacer()
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(showProfile: .constant(false))
    }
}
