//
//  ContentView.swift
//  H4X0R News
//
//  Created by Tiger Mei on 02.11.2020.
//  Copyright © 2020 Tiger Mei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                self.buildView(post: post)
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
    func buildView(post: Post) -> some View {
        if let title = post.story_title {
            let stackView =  HStack {
                Text(post.created_at).bold()
                Text(title)
            }
            return stackView
        } else {
            return HStack {
                Text("No data")
                Text("No title")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

