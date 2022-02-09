//
//  EnterTextView.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 09/02/2022.
//

import SwiftUI

struct EnterTextView: View {
    @Binding var property: String
    let lineName: String
    var body: some View {
        HStack {
            Text(lineName)
            Spacer()
            TextField("\(lineName)", text: $property)
                .frame(width: 150)
        }
    }
}

/*
struct EnterTextView_Previews: PreviewProvider {
    static var previews: some View {
        EnterTextView()
    }
}
*/
