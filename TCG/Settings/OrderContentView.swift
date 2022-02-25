//
//  OrderContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI
import UniformTypeIdentifiers

struct OrderContentView: View {
    
    var delegate: AppStateDelegate
    
    @State var items = UserDefaultUtil.getContentOrder()
    @State var draggedItem : String?
    @State private var changedView: Bool = false
    
    func onOrderSaved() {
        delegate.onContentOrderingFinished()
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Divider()
                Text("Simply drag and drop what you care about more to the top, and those lessons will be easier to find.")
                    .foregroundColor(Colors.normalText)
                    .font(.body)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                    .padding(.trailing)
                LazyVStack(spacing: 16) {
                    ForEach(items, id:\.self) { item in
                        Text(item)
                            .foregroundColor(Colors.normalText)
                            .font(.body)
                            .frame(minWidth: 0, maxWidth:.infinity)
                            .padding(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Colors.footerText, lineWidth: 2)
                            )
                            .opacity(draggedItem == item && changedView ? 0 : 1)
                            .onDrag({
                                self.draggedItem = item
                                changedView = false
                                return NSItemProvider(item: nil, typeIdentifier: item)
                            })
                            .onDrop(
                                of: [UTType.text],
                                delegate: MyDropDelegate(item: item, items: $items, draggedItem: $draggedItem, changedView: $changedView)
                            )
                    }
                }
                .padding()
                Spacer()
                Button(action: onOrderSaved) {
                    Text("Save Order")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).fill(.green))
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            }
            .onDrop(of: [UTType.text], delegate: DropOutsideDelegate(draggedItem: $draggedItem, changedView: $changedView))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Order Content")
                            .font(.headline)
                            .foregroundColor(Colors.titleText)
                    }
                }
            }
        }
    }
}

struct MyDropDelegate : DropDelegate {
    
    let item: String
    @Binding var items: [String]
    @Binding var draggedItem : String?
    @Binding var changedView: Bool
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
    
    func performDrop(info: DropInfo) -> Bool {
        changedView = false
        self.draggedItem = nil
        return true
    }
    
    func dropEntered(info: DropInfo) {
        guard let draggedItem = self.draggedItem else {
            return
        }
        
        changedView = true
        
        if draggedItem != item {
            let from = items.firstIndex(of: draggedItem)!
            let to = items.firstIndex(of: item)!
            withAnimation(.default) {
                self.items.move(fromOffsets: IndexSet(integer: from), toOffset: to > from ? to + 1 : to)
            }
        }
    }
}

struct DropOutsideDelegate: DropDelegate {
    
    @Binding var draggedItem: String?
    @Binding var changedView: Bool
    
    func dropEntered(info: DropInfo) {
        changedView = true
    }
    
    func performDrop(info: DropInfo) -> Bool {
        changedView = false
        draggedItem = nil
        return true
    }
}
