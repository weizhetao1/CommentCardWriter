//
//  StateController.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 25/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var pastComments: [Comment]
    
    init() {
        pastComments = []
    }
}
