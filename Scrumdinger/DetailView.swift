import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .accessibilityLabel("Click Here Start Meeting")
                HStack{
                    Label("Length", systemImage: "clock")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
