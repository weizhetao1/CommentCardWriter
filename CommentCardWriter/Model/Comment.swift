//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import Foundation

class Comment {
    var dateCreated: Date
    var enjoymentAndEffort: String
    var recentTopic: String
    var weakness: String
    var subject: String
    
    func entireComment() -> String {
        return ("\(enjoymentAndEffort) \(recentTopic) \(weakness)")
    }
    
    init(date: Date, enjoymentAndEffort: String, recentTopic: String, weakness: String, subject: String) {
        self.dateCreated = date
        self.enjoymentAndEffort = enjoymentAndEffort
        self.recentTopic = recentTopic
        self.weakness = weakness
        self.subject = subject
    }
}
