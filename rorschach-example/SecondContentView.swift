//
//  SecondContentView.swift
//  rorschach-example
//
//  Created by Martin Kim Dung-Pham on 01.05.21.
//

import Foundation
import SwiftUI

struct SecondContentView: View {

    private let randomElement: String

    init(_ randomElement: String) {
        self.randomElement = randomElement
    }

    var body: some View {
        VStack {
            randomElementView
            Text("\(Image("paragraph-image")) In einem schönen, fernen Reiche, von welchem die Sage lebt, daß die Sonne in seinen ewig grünen Gärten niemals untergehe, herrschte von Anfang an bis heute die Königin Phantasie. Mit vollen Händen spendete diese seit vielen Jahrhunderten die Fülle des Segens über die Ihrigen und war geliebt, verehrt von allen, die sie kannten. Das Herz der Königin war aber zu groß, als daß sie mit ihren Wohltaten bei ihrem Lande stehengeblieben wäre; sie selbst, im königlichen Schmuck ihrer ewigen Jugend und Schönheit, stieg herab auf die Erde; denn sie hatte gehört, daß dort Menschen wohnen, die ihr Leben in traurigem Ernst, unter Mühe und Arbeit hinbringen. Diesen hatte sie die schönsten Gaben aus ihrem Reiche mitgebracht, und seit die schöne Königin durch die Fluren der Erde gegangen war, waren die Menschen fröhlich bei der Arbeit, heiter in ihrem Ernst.")
                .font(.body)
                .fontWeight(.light)
                .padding()
                .navigationTitle("Second View")
        }
    }

    private var randomElementView: some View {
        VStack {
            HStack {
                Text("Random Element: ")
                Text(randomElement)
                    .accessibility(identifier: "random: \(randomElement)")
            }
        }
        .padding()
    }
}


struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView("x")
    }
}
