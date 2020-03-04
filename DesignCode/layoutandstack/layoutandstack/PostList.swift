//
//  PostList.swift
//  layoutandstack
//
//  Created by Qian Meng on 2020/3/5.
//  Copyright © 2020 meng. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    var body: some View {
        List(posts) { post in
            HStack {
                Text(post.id.prefix(10))
                Text(post.title)
            }
        }
            .onAppear{
                Api().getPosts { (posts) in
                    self.posts = posts
                }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
