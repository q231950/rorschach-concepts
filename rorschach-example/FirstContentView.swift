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
                NavigationLink(destination: SecondContentView(randomElement), tag: Selection.Tag.second, selection: $selection) { EmptyView() }
                randomElementView
                Button("Navigate to Second View") {
                    self.selection = Selection.Tag.second
                }
                .padding()
            }
            .navigationBarTitle("First View")
        }
    }

    private var randomElementView: some View {
        VStack {
            Spacer()
            HStack {
                Text("Random Element: ")
                Text(randomElement)
                    .accessibility(identifier: "random")
            }
            Spacer()
        }
        .padding()
    }

    private let randomElement: String = ["a", "b", "c"].randomElement() ?? ""
}

fileprivate enum Selection {
    enum Tag {
        static let first = "first"
        static let second = "second"
    }
}

struct FirstContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstContentView()
    }
}
