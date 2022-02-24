//
//  File.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import Foundation

class CommentData: ObservableObject {
    @Published var enjoyment: Int
    @Published var effort: Int
    @Published var topic: String
    @Published var topicUnderstanding: Int
    @Published var weakness: String
    @Published var howWeak: Int
    @Published var subject: Int
    @Published var subjects = ["Applied Maths", "Computer Science", "Pure Maths", "Physics", "Chemistry"]
    
    init() {
        self.enjoyment = 2
        self.effort = 2
        self.topic = ""
        self.topicUnderstanding = 2
        self.weakness = ""
        self.howWeak = 1
        self.subject = 2
    }
}
