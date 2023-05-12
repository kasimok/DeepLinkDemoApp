// 

import SwiftUI

struct ContentView: View {
    var body: some View {
      Form {
        
        Link("Setting Safari", destination: URL(string: "App-Prefs:Safari")!)
       
        Link("Extension Settings Safari", destination: URL(string: "App-Prefs:Safari&path=WEB_EXTENSIONS")!)
        
        Link("iCloud Account", destination: URL(string: "App-Prefs:APPLE_ACCOUNT")!)

      }
      .onAppear {
        print("s:", UIApplication.openSettingsURLString)
      }
    }
    
  private func open(urlString: String) {
    let url = URL(string: urlString)!
    guard UIApplication.shared.canOpenURL(url) else {
      assertionFailure()
      return
    }
    UIApplication.shared.open(url)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
