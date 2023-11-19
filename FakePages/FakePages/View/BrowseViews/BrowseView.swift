//
//  BrowseView.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI

struct BrowseView: View {
    @State private var searchText = ""
    @State private var isActiveMenu = false
    @State private var tags: TagsEnum = .orange
    @State var isExpanded1 = false
    @State var isExpanded2 = false
    @State var isExpanded3 = false
    
    var viewLocation = BrowseViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            
            List{
                Section("Locations", isExpanded: $isExpanded1) {
                    ForEach(viewLocation.locations){
                        location in
                        
                        NavigationLink {
                            BrowseDetailView(location: location)
                        } label: {
                            Image(systemName: location.image).foregroundColor(.orange)
                            Text(location.name)
                        }
                    }
                }
                
                Section("Favorites", isExpanded: $isExpanded3) {
                    NavigationLink {
                       ImWorkingOnView()
                    } label: {
                        Image(systemName: "arrowshape.down.circle").foregroundColor(.orange)
                        Text("Downloads")
                    }
                }
                
                Section("Tags", isExpanded: $isExpanded2) {
                    ForEach(TagsEnum.allCases){
                        tag in
                        
                        NavigationLink {
                            Color(tag.colors)
                        } label: {
                            Image(systemName: "circle.fill").foregroundColor(tag.colors)
                            Text(tag.rawValue)
                        }
                    }
                }
            }
            .navigationTitle("Pages")
            .navigationBarItems(trailing: showOptionMenu(OptionMenu(imageOM: "", nameOM: ""))
            )
        }.searchable(text: $searchText)
            .listStyle(.sidebar)
        
        
    }
}



#Preview {
    BrowseView()
}
