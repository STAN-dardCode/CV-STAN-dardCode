import SwiftUI


//MARK: Daten
struct CVView: View {
    
    
    
    var body: some View {
        VStack(spacing: 0) {
            //der Header fixieren bei scrollen
            HeaderView()
            //damit es keine überschneidungen gibt
                .zIndex(1)
            
            ScrollView {
                VStack(spacing: 20) {
                    Divider()
                        .background(Color.yellow)
                        .padding(.horizontal)
                    AboutMeView()    //nächste element
                    Divider()
                        .background(Color.yellow)
                        .padding(.horizontal)
                    ExperienceView() // Berufserfahrung
                    Divider()
                        .background(Color.yellow)
                        .padding(.horizontal)
                    InfoListView(title: " Kompetenzen", items: ["Organisation & Planung", "Teamarbeit", "Führung", "ziel-/ergebnisorientiert", "handwerkliches Geschick und technische Affinität", "effizient", "empatisch", "neugirig, interessiert", "lernwillig"])
                    InfoListView(title: " Sprachkenntnisse", items: ["🇩🇪 Deutsch", "🏴󠁧󠁢󠁥󠁮󠁧󠁿 Englisch", "🇷🇺 Russisch", "🇧🇬 Bulgarisch (Muttersprache)"])
                    InfoListView(title: " EDV-Kenntnisse", items: ["Microsoft Office", "SAP S/4HANA", "Java", "Java Script", "Datenbanken MySQL", "IDE's- InteliJ, Eclipse, XCode", "GitHub"])
                    Divider()
                        .background(Color.yellow)
                        .padding(.horizontal)
                    InteressenView() // hobbys
                    
                }
                
                .padding(.vertical)
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all)) // darkmode ganze App
        
    }
}


#Preview {
    CVView()
}
