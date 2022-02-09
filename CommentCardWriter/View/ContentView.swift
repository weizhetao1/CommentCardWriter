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
    @State var commentText = ""
    @State var subjects = ["Applied Maths", "Computer Science", "Pure Maths", "Physics", "Chemistry"]
    var body: some View {
        VStack {
            Form {
                Section("Subject"){
                    Picker("Subject", selection: $commentData.subject) {
                        ForEach(0..<subjects.count) { i in
                            Text("\(subjects[i])")
                        }
                    }.pickerStyle(.menu)
                }
                Section("Comment Data") {
                    IntPicker(property: $commentData.enjoyment, lineName: "enjoyment", numOfInt: 5)
                    IntPicker(property: $commentData.effort, lineName: "effort", numOfInt: 5)
                    EnterTextView(property: $commentData.topic, lineName: "topic")
                    IntPicker(property: $commentData.topicUnderstanding, lineName: "understanding of topic", numOfInt: 5)
                    EnterTextView(property: $commentData.weakness, lineName: "weakness")
                    IntPicker(property: $commentData.howWeak, lineName: "how weak", numOfInt: 3)
                }
                Button("Create Comment", action: { self.displayComment() })
                if commentDisplayed {
                    Text("\(commentText)")
                }
            }
        }
    }
    
    func displayComment() {
        self.commentDisplayed = true
        let commentGenerator = CommentGenerator(data: commentData)
        let comment = commentGenerator.generateComment()
        self.commentText = comment.entireComment()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
