//
//  OrderView.swift
//  Appetizers
//
//  Created by Imam Robani on 27/09/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("oder button")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your orders.\nPlease add an appetizer")
                }
                
            }
            .navigationTitle("🧾 Appetizers")
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
    
}

#Preview {
    OrderView()
}
