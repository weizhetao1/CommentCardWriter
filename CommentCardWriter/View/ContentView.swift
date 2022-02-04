//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var commentData = CommentData()
    @State var commentDisplayed = false
    @State var comment = ""
    var body: some View {
        VStack {
            IntPicker(property: $commentData.enjoyment, lineName: "enjoyment", numOfInt: 5)
            Text("\(String(commentData.enjoyment))")
            Button("Create Comment", action: { self.displayComment() })
        }
    }
    
    func displayComment() {
        self.commentDisplayed = true
        var commentGenerator = CommentGenerator(data: commentData)
        self.comment = "hagagag"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
