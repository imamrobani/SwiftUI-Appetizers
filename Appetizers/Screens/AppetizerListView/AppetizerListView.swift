//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Imam Robani on 27/09/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var selectedAppetizer: Appetizer?
    @State private var isShowingDetail = false
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)         
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .listStyle(.plain)
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 30 : 0)
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, 
                  message:alertItem.message,
                  dismissButton: alertItem.dimissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
