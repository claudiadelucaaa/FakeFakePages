//
//  SwiftUIView.swift
//  FakePages
//
//  Created by Claudia De Luca on 15/11/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Text("First")
                    Text("Second")
                    Text("Third")
                } header: {
                    Text("First Section Header")
                } footer: {
                    Text("Eos est eos consequatur nemo autem in qui rerum cumque consequatur natus corrupti quaerat et libero tempora.")
                }
                
                Section {
                    Text("One")
                    Text("Two")
                    Text("Three")
                } header: {
                    Text("Second Section Header")
                } footer: {
                    Text("Tempora distinctio excepturi quasi distinctio est voluptates voluptate et dolor iste nisi voluptatem labore ipsum blanditiis sed sit suscipit est.")
                }
                
                Section {
                    Text("1")
                    Text("2")
                    Text("3")
                } header: {
                    Text("Third Section Header")
                } footer: {
                    Text("Ea consequatur velit sequi voluptatibus officia maiores ducimus consequatur rerum enim omnis totam et voluptates eius consectetur rerum dolorem quis omnis ut ut.")
                }
            }
            .navigationTitle("List Style")
            // This is the only difference.
            .listStyle(.sidebar)
        }
    }
}

#Preview {
    SwiftUIView()
}
