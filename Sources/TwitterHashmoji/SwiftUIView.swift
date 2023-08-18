//
//  SwiftUIView.swift
//  
//
//  Created by Huang Runhua on 8/18/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
//        RoundedRectangle(cornerRadius: 25)
////            .frame(width: 400, height: 400)
//            .frame(width: 40, height: 40)
        VStack {
            HashmojiButton {
                
            } onDismiss: {
                
            } content: {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.blue)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
//                    .frame(width: 200, height: 200)
            }
            .buttonStyle(.plain)
            .frame(width: 200, height: 200)
        }
        .frame(minWidth: 600, minHeight: 600)
    }
}

#Preview {
    SwiftUIView()
}
