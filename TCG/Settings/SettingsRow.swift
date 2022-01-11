//
//  SettingsRow.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

struct SettingsRow: View {
    var imagePath: String
    var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imagePath)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(Colors.titleText)
                Text(text)
                    .foregroundColor(Colors.titleText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 4)
            }
            .padding(.top, 4)
            .padding(.leading, 12)
            .padding(.trailing, 12)
            Divider()
        }
    }
}
