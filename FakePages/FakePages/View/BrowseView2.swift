//
//  BrowseView2.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI

struct BrowseView2: View {
    @State private var searchText = ""
    @State private var isActivePlus = false
    @State private var isActiveMenu = false
    
    var viewLocation = LocationViewModel()
    
    var body: some View {
        NavigationView {
                   List {
                       DisclosureGroup("Locations") {
                           ForEach(viewLocation.locations){
                               location in
                               NavigationLink {
                                   BrowseDetailView(location: location)
                               } label: {
                                   Image(location.image)
                                   Text(location.name)
                               }
                           }
                       }
                       Section(header: Text("Section 2")) {
                           Text("Item 3")
                           Text("Item 4")
                       }
                   }
                   .listStyle(.sidebar) // Apply .sidebar ListStyle
                   .navigationTitle("Pages")
                   .navigationBarItems(trailing:
                                           Button(action: {
                       isActiveMenu = true
                   }) {
                       Image(systemName: "ellipsis.circle")
                   }
                                       
                   )
            
                   Text("Select an item from the sidebar")
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
               
            
                
              
            }.listStyle(.sidebar)
            
            .padding(.horizontal, 25.0)
            .font(.headline)
            .fontWeight(.semibold)
            
           
            
            .searchable(text: $searchText)
            
        }

    }



#Preview {
    BrowseView2()
}
