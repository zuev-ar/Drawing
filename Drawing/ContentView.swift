//
//  ContentView.swift
//  Drawing
//
//  Created by Arkasha Zuev on 21.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State var positionY: Double = 100
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: Double(geometry.size.width) * 0.5, y: positionY))
                path.addLine(to: CGPoint(x: 100, y: positionY + 200))
                path.addLine(to: CGPoint(x: 150, y: positionY + 200))
                path.addLine(to: CGPoint(x: 150, y: positionY + 500))
                path.addLine(to: CGPoint(x: Double(geometry.size.width) - 150, y: positionY + 500))
                path.addLine(to: CGPoint(x: Double(geometry.size.width) - 150, y: positionY + 200))
                path.addLine(to: CGPoint(x: Double(geometry.size.width) - 100, y: positionY + 200))
                path.addLine(to: CGPoint(x: Double(geometry.size.width) * 0.5, y: positionY))
                path.addLine(to: CGPoint(x: 100, y: positionY + 200))
            }
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        }
        
        Slider(value: $positionY, in: 50...150)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
