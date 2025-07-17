import SwiftUI


//MARK: Daten
struct CVView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                // 1. Hintergrundbild fest in Bildschirmgröße
                LinearGradient(
                    gradient: Gradient(colors: [Color.black.opacity(1),
                                                Color.rotgold.opacity(3),
                                                Color.black.opacity(22)]),
                    startPoint: .center,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                //Hauptinhalt
                VStack(spacing: 0) {
                    HeaderView()
                        .id("top")
                        .zIndex(1)
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            Divider().background(Color.yellow).padding(.horizontal)
                            AboutMeView()
                            Divider().background(Color.yellow).padding(.horizontal)
                            ExperienceView()
                            Divider().background(Color.yellow).padding(.horizontal)
                            InfoListView(title: " Kompetenzen", items: [
                                "Organisation & Planung", "Teamarbeit", "Führung", "ziel-/ergebnisorientiert",
                                "handwerkliches Geschick und technische Affinität", "effizient", "empatisch",
                                "neugierig, interessiert", "lernwillig"
                            ])
                            Divider().background(Color.yellow).padding(.horizontal)
                            InfoListView(title: " Sprachkenntnisse", items: [
                                "🇩🇪 Deutsch", "🏴󠁧󠁢󠁥󠁮󠁧󠁿 Englisch", "🇷🇺 Russisch", "🇧🇬 Bulgarisch (Muttersprache)"
                            ])
                            Divider().background(Color.yellow).padding(.horizontal)
                            InfoListView(title: " EDV-Kenntnisse", items: [
                                "Microsoft Office", "SAP S/4HANA", "Java", "JavaScript", "Datenbanken MySQL",
                                "IDE's – IntelliJ, Eclipse, Xcode", "GitHub"
                            ])
                            Divider().background(Color.yellow).padding(.horizontal)
                            InteressenView()
                        }
                        .padding(.vertical)
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    CVView()
}
