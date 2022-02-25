//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 25/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            GeneratorView()
                .tabItem {
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    Text("Generator")
                }
            PastCommentView()
                .tabItem {
                    Image(systemName: "tray.full")
                    Text("Past Comments")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(StateController())
    }
}
