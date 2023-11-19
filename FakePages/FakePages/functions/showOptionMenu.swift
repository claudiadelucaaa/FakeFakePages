//
//  showOptionMenu.swift
//  FakePages
//
//  Created by Claudia De Luca on 15/11/23.
//

import Foundation
import SwiftUI

var viewOption = OptionMenuModel()

func showOptionMenu(_ option: OptionMenu) -> some View {
    return Menu {
        ForEach(viewOption.options){
            option in
            Button() {
                print("ciao")        // Action for option 1
            } label: {
                HStack {
                    Text(option.nameOM)
                    Image(systemName: option.imageOM)
                }
            }
        }
    } label:{
        Image(systemName: "ellipsis.circle")
    }
}


