//
//  RecentsView.swift
//  AppPages
//
//  Created by Claudia De Luca on 13/11/23.
//

import SwiftUI
import SwiftData

struct RecentsView: View {
    @Environment (\.modelContext) private var context
    
    @State private var searchText = ""
    @State private var isActivePlus = false
    @State private var isActiveMenu = false
    
    @Query private var texts: [DataText]
    
    var viewOption = OptionMenuModel()
    
    init(){
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(named: "AccentColor")
    }
    
    var body: some View {
        NavigationStack {
            
            if(texts.isEmpty){
                ContentUnavailableView("No Recents",
                                       systemImage: "clock.fill",
                                       description: Text("Recently opened  documents will appear here."))
            } else {
                ScrollView{
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 10) {
                        ForEach(texts, id: \.self) { text in
                            
                            ZStack(alignment: .topLeading) {
                                
                                Rectangle()
                                    .foregroundStyle(.white)
                                    .shadow(radius: 2)
                                    .frame(width: 100, height: 150)
                                
                                Text(text.editedText)
                                
                                    .lineLimit(20)
                                    .font(.custom("Text preview", fixedSize: 5))
                                    .frame(width: 90)
                            }
                            .contextMenu(ContextMenu(menuItems: {
                                ForEach(viewOption.contMenuOption){ contMenu in
                                    if(contMenu.isDestructive == true){
                                        Button(contMenu.nameOM,
                                               systemImage: contMenu.imageOM,
                                               role: .destructive,
                                               action: {deleteDocument(text)})
                                    } else {
                                        Button(){
                                            print("ciao")
                                        } label: {
                                            Label(contMenu.nameOM, systemImage: contMenu.imageOM)
                                        }
                                    }
                                }
                                
                            }))
                            
                        }
                    }
                    .padding()
                }
            }
            HStack{
            }
            .navigationTitle("Pages Recents")
            .toolbar(content: showTBTrailing)
        } .searchable(text: $searchText)
    }
    
    func showTBTrailing() -> ToolbarItem<Void, some View>{
        return ToolbarItem() {
            Button(action: {
                isActivePlus = true
            }, label: {
                Label("create document", systemImage: "plus")
            })
            .confirmationDialog("", isPresented: $isActivePlus) {
                Button(action: {
                    print("ciao") //action del choose a template
                }, label: {
                    Text("Choose a Template")
                })
                
                NavigationLink {
                    WritingView()
                } label: {
                    Text("Start Writing")
                }
            }
            
            showOptionMenu(OptionMenu(imageOM: "", nameOM: ""))
        }
    }
    
    func deleteDocument(_ text: DataText) {
        context.delete(text)
    }
}

#Preview {
    RecentsView()
}
