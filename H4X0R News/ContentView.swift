//
//  ContentView.swift
//  H4X0R News
//
//  Created by Tiger Mei on 02.11.2020.
//  Copyright © 2020 Tiger Mei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.story_title)
            }
            .navigationBarTitle("H4X0R News")
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    Post(story_title: "First story", points: 1, story_url: "http:www", objectID: "123")
]
