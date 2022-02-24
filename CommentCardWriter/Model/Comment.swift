//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import Foundation

class Comment: ObservableObject {
    var dateCreated: Date
    var enjoymentAndEffort: String
    var recentTopic: String
    var weakness: String
    var entireComment: String
    var subject: String
    
    init(date: Date, enjoymentAndEffort: String, recentTopic: String, weakness: String, subject: String) {
        self.dateCreated = date
        self.enjoymentAndEffort = enjoymentAndEffort
        self.recentTopic = recentTopic
        self.weakness = weakness
        self.subject = subject
        self.entireComment = "\(enjoymentAndEffort) \(recentTopic) \(weakness)"
    }
    
    func mutate(comment: Comment) {
        self.dateCreated = comment.dateCreated
        self.enjoymentAndEffort = comment.enjoymentAndEffort
        self.recentTopic = comment.recentTopic
        self.weakness = comment.weakness
        self.subject = comment.subject
        self.entireComment = "\(enjoymentAndEffort) \(recentTopic) \(weakness)"
    }
    
    static func defaultComment() -> Comment {
        return Comment(date: Date(), enjoymentAndEffort: "Default", recentTopic: "Default", weakness: "Default", subject: "Default")
    }
}
