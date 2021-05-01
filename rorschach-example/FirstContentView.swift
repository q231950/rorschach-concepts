//
//  ContentView.swift
//  rorschach-example
//
//  Created by Martin Kim Dung-Pham on 01.05.21.
//

import SwiftUI

struct FirstContentView: View {
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondContentView(), tag: Selection.Tag.second, selection: $selection) { EmptyView() }
                Button("Navigate to Second View") {
                    self.selection = Selection.Tag.second
                }
            }
            .navigationBarTitle("First View")
        }
    }
}

fileprivate enum Selection {
    enum Tag {
        static let first = "first"
        static let second = "second"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstContentView()
    }
}
