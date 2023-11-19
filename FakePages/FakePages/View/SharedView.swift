//
//  SharedView.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI

struct SharedView: View {
    @State private var searchText = ""
    @State private var isActivePlus = false
    @State private var isActiveMenu = false
    var viewOption = OptionMenuModel()
    
    var body: some View {
        NavigationStack {
            ContentUnavailableView("No Shared Files", systemImage: "folder.badge.person.crop.fill", description: Text("Shared files will appeare here."))
                .navigationTitle("Shared")
                .navigationBarItems(trailing:
                                        HStack {
                    Image(systemName: "plus")
                        .foregroundColor(.secondary)
                    showOptionMenu(OptionMenu(imageOM: "", nameOM: ""))
                })
        }
        .searchable(text: $searchText)
    }
}


#Preview {
    SharedView()
}
