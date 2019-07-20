//
//  ContentView.swift
//  AppleFeedback-SwiftUIFrameClearBackgroundTap
//
//  Created by Noah Gilmore on 7/19/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

import SwiftUI

struct ShapeTapTarget: View {
    @State var isSelected: Bool = true

    var body: some View {
        ShapeView(shape: Rectangle(), style: Color.purple)
            .frame(width: 100, height: 100)
            .frame(width: 200, height: 200)
            .background(
                self.isSelected ? Color.red : Color.clear
            )
            .border(Color.green)
            .tapAction {
                self.isSelected.toggle()
            }
    }
}

struct TextTapTarget: View {
    @State var isSelected: Bool = true

    var body: some View {
        Text("A")
            .frame(width: 100, height: 100)
            .background(
                self.isSelected ? Color.red : Color.clear
            )
            .border(Color.green)
            .gesture(TapGesture().onEnded { _ in
                self.isSelected.toggle()
            })
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            ShapeTapTarget()
            TextTapTarget()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
