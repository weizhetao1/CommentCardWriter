//
//  Date.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 25/02/2022.
//

import Foundation

extension Date {
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
}
