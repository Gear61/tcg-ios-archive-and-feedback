//
//  OrderContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI

struct OrderContentView: View {
    
    @State var editMode: EditMode = .active
    @State private var items: [LessonType] = UserDefaultUtil.getContentOrder()
    
    private func onMove(source: IndexSet, destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(items, id: \.self.rawValue) { item in
                        Text(item.labelForOrdering)
                    }
                    .onMove(perform: onMove)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                HStack {
                    Text("Order Content")
                        .font(.headline)
                        .foregroundColor(Colors.titleText)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environment(\.editMode, $editMode)
        .onAppear(perform: {self.editMode = .active})
    }
}
