//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import Foundation

class CommentGenerator {
    let enjoymentWords = ["not enjoying", "not quite enjoying", "quite enjoying", "enjoying", "fascinated by"]
    let effortWords = ["not hard at all", "with minimum effort", "with effort", "with great effort", "very hard"]
    let understandingWords = ["don't understand at all", "only understand a little", "sort of understand", "decently grasp", "completely understand"]
    let weaknessWords = ["I almost understand but need a bit of hints", "I kind of understand but not really", "I have no clue what is going on"]
    var data: CommentData
    
    func generateComment() -> Comment {
        let sentence1 = "In the past few weeks, I am \(enjoymentWords[data.enjoyment]) the lessons and I am working \(effortWords[data.effort])."
        let sentence2 = "For the recent topic of \(data.topic), I \(understandingWords[data.topicUnderstanding]) what is going on."
        let sentence3 = "I think my weak area is \(data.weakness), for which \(weaknessWords[data.howWeak])."
        
        return Comment(date: Date(), enjoymentAndEffort: sentence1, recentTopic: sentence2, weakness: sentence3)
    }
    
    init(data: CommentData) {
        self.data = data
    }
}
