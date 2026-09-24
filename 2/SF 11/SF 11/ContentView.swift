//  🏔️ MTECH Code Challenge SB11: "SF Symbol Lookup"
//  Concept: Practice modifying SF Symbol images' properties to see the range of options they have for improving your app's visual design.

//  Instructions:
//  You have an app which displays a variety of SF Symbol icons. Already in place is a picker which chooses which symbol to display.
//  Add an interface that allows you to change the following properties of SF Symbols:
//  Scale
//  Weight (Bold/Not bold)
//  Rendering mode (Multicolor, Monochromatic, Heirarchical, Palette)
//  Color/Palette (primary, secondary, and tertiary options)
//  You can implement this however you like. Some ideas would be: - A ColorPicker, a Picker with hardcoded options, a Switch with 2 color options, etc.
//  Variable coloring percentage
//  Notice the variableValue parameter of the Image initalizer below and how it makes half the bars of the rainbow slightly transparent

//  To see examples of how these options work, download and play with the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg


import SwiftUI
import Playgrounds

struct ContentView: View {
    let symbolChoices = ["cloud.rainbow.half.fill", "apple.terminal.on.rectangle.fill", "badge.plus.radiowaves.right", "sun.rain.fill"]
    @State private var selectedSymbol: String = "cloud.rainbow.half.fill"
    
    @State var renderingModeIndex: Int = 0
    @State var scale: Double = 0
    @State var bold: Bool = false
    @State var color: Color = .black
    
    var selectedRenderMode: SymbolRenderingMode {
        switch renderingModeIndex {
        case 0:
            return .hierarchical
        case 1:
            return .monochrome
        case 2:
            return .palette
        default:
            return .multicolor
        }
    }
    
    var body: some View {
        
        Text("Selected Symbol: \(selectedSymbol)")
            .font(.title)
            .padding()
        
        Image(systemName: selectedSymbol, variableValue: 0.2)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding()
            .symbolRenderingMode(selectedRenderMode)
            .bold(bold)
            .scaleEffect(scale)
            .foregroundStyle(color)
        
        Form {
            Picker("Select a Symbol", selection: $selectedSymbol) {
                ForEach(symbolChoices, id: \.self) { symbol in
                    Text(symbol).tag(symbol)
                }
            }
            .pickerStyle(.menu) // Change this to your preferred style
            .padding()

            
            Picker("Rendering Mode", selection: $renderingModeIndex) {
                Text("Hierchical").tag(0)
                Text("Monochrome").tag(1)
                Text("Palette").tag(2)
                Text("Multicolor").tag(3)
            }
            
            HStack {
                Text("Scale")
                Slider(value: $scale, in: 1...1.5)
            }
            Toggle("Bold", isOn: $bold)
            ColorPicker("color", selection: $color)
            
            
            
            
        }
        
    }
}
#Preview {
    ContentView()
}

#Playground {
    
}
