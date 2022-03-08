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
    @State var editMode: EditMode = .inactive
    
    func onOrderSaved() {
        UserDefaultUtil.setContentOrder(types: items)
        delegate.onContentOrderingFinished()
    }
    
    private func onMove(source: IndexSet, destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
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
                    .padding(.top, 8)
                    .padding(.leading)
                    .padding(.trailing)

                List {
                    ForEach(items) { item in
                        Text(item.description)
                            .foregroundColor(Colors.normalText)
                            .padding(.leading, -32)
                    }
                    .onMove(perform: onMove)
                }
                .listStyle(.plain)
                .environment(\.editMode, $editMode)
                .onAppear(perform: {self.editMode = .active})

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
