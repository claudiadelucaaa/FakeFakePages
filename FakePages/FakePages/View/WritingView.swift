//
//  WritingView.swift
//  FakePages
//
//  Created by Claudia De Luca on 16/11/23.
//

import SwiftUI
import SwiftData

struct WritingView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    
    @State private var isActiveBack = false
    @State private var textEditorText: String = ""
    //  @State public var newText: DataText = DataText(editedText: textEditorText)
    
    var body: some View {
        List{
            TextEditor(text: $textEditorText)
            //            TextEditor(text: $newText.editedText)
                .foregroundStyle(.black)
                .frame(width: 350.0, height: 600)
                .background(.white)
        }
        .navigationBarBackButtonHidden()
        .foregroundStyle(.primary)
        .toolbar(content: showTBLeading)
        .toolbar(.hidden, for: .tabBar)
        
    }
    
    func addText(){
        let newText: DataText = DataText(editedText: textEditorText)
        context.insert(newText)
    }
    
    func showTBLeading() -> ToolbarItem<Void, some View> {
        return ToolbarItem() {
            HStack(alignment: .center, spacing: 150){
                Button(action: {
                    dismiss.callAsFunction()
                    addText()
                }, label: {
                    Label("Back", systemImage: "chevron.backward")
                        .labelStyle(.iconOnly)
                })
                
                HStack{
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Share" , systemImage: "square.and.arrow.up")
                            .labelStyle(.iconOnly)
                    })
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Insert", systemImage: "plus")
                            .labelStyle(.iconOnly)
                    })
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Previous action", systemImage: "arrow.uturn.backward.circle")
                            .labelStyle(.iconOnly)
                    }).disabled(true)
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Edit", systemImage: "paintbrush")
                            .labelStyle(.iconOnly)
                    })
                    
                    Button(action: {
                        print("ciao")
                    }, label: {
                        Label("Menu", systemImage: "ellipsis.circle")
                            .labelStyle(.iconOnly)
                    })
                }
            }
        }
    }
    
    //func openEditModal()-> some View {
    //       return
    // }
    
}


#Preview {
    NavigationStack {
        WritingView()
    }
}
