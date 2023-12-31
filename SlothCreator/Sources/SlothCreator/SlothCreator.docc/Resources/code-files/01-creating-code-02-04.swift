/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view to customize a sloth.
*/

import SwiftUI
import SlothCreator

struct CustomizedSlothView: View {
    @State var sloth: Sloth
    
    var body: some View {
        VStack {
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizedSlothView()
    }
}
