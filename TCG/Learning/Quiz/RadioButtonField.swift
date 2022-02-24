//
//  RadioButtonField.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct RadioButtonField: View {
    
    let label: String
    let isMarked: Bool
    let callback: (String)->()
    
    init(
        label: String,
        isMarked: Bool = false,
        callback: @escaping (String)->()
    ) {
        self.label = label
        self.isMarked = isMarked
        self.callback = callback
    }
    
    var body: some View {
        Button(action:{
            self.callback(self.label)
        }) {
            HStack(alignment: .center, spacing: 8) {
                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.green)
                Text(label)
                    .font(.system(size: 17))
                    .foregroundColor(Colors.normalText)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxHeight: .infinity)
                Spacer()
            }
        }
        .padding(.top, 4)
        .padding(.bottom, 4)
        .buttonStyle(PlainButtonStyle())
    }
}
