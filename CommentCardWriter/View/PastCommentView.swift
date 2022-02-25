//
//  PastCommentView.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 25/02/2022.
//

import SwiftUI

struct PastCommentView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<state.pastComments.count) { i in
                    NavigationLink(destination: Text(state.pastComments[i].entireComment)) {
                        VStack {
                            Text(state.pastComments[i].subject)
                                .font(.subheadline)
                            Text(state.pastComments[i].dateCreated.getShortDate())
                                .foregroundColor(.gray)
                        }
                    }
                }.id(state.pastComments.count)
            }
        }
    }
}

struct PastCommentView_Previews: PreviewProvider {
    static var previews: some View {
        PastCommentView()
            .environmentObject(StateController())
    }
}
