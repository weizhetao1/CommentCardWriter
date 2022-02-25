//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import SwiftUI

struct GeneratorView: View {
    @EnvironmentObject var state: StateController
    @StateObject var commentData = CommentData()
    @State var commentDisplayed = false
    @StateObject var comment = Comment(date: Date(), enjoymentAndEffort: "default", recentTopic: "default", weakness: "default", subject: "default")
    @State var addingSubject = false
    @State var subjectAdded = ""
    @State var editingComment = false
    var body: some View {
        VStack {
            Form {
                Section("Subject"){
                    Picker("Subject", selection: $commentData.subject) {
                        ForEach(0..<commentData.subjects.count) { i in
                            Text("\(commentData.subjects[i])")
                        }.id(commentData.subjects.count)
                    }.pickerStyle(.menu)
                    if !addingSubject {
                        Button("+ Subject", action: { addingSubject = true })
                    } else {
                        TextField("Enter New Subject", text: $subjectAdded)
                        Button("Done", action: { self.finishAddSubject() })
                    }
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
                    TextEditor(text: $comment.entireComment)
                        .disabled(!self.editingComment)
                    Toggle("Editing Comment", isOn: $editingComment)
                    Button("Save", action: { self.saveComment() })
                }
            }
        }
    }
    
    func displayComment() {
        self.commentDisplayed = true
        let commentGenerator = CommentGenerator(data: commentData)
        self.comment.mutate(comment: commentGenerator.generateComment())
    }
    
    func finishAddSubject() {
        self.commentData.subjects.append(subjectAdded)
        self.addingSubject = false
        subjectAdded = ""
    }
    
    func saveComment() {
        self.state.pastComments.append(comment)
        self.commentDisplayed = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
            .environmentObject(StateController())
    }
}
