//
//  IntPicker.swift
//  CommentCardWriter
//
//  Created by Tao, Weizhe (Coll) on 04/02/2022.
//

import SwiftUI

struct IntPicker: View {
    @Binding var property: Int
    let lineName: String
    let numOfInt: Int
    var body: some View {
        HStack {
            Text("\(lineName)")
            Spacer()
            ForEach(0..<numOfInt) { num in
                Button("\(String(num))", action: { self.property = num })
            }
        }
    }
}

/*
struct IntPicker_Previews: PreviewProvider {
    static var previews: some View {
        IntPicker(property: $commentData.enjoyment,lineName: "enjoyment", numOfInt: 5)
    }
}
 */
