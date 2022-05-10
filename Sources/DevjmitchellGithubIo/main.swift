import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct DevjmitchellGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case blog
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://jasonmitchell.io")!
    var name = "Jason Mitchell - iOS Engineer"
    var description = "I’m a U.S. Marine veteran that became a self-taught developer, starting in 2013. I’m always eager to learn new things and have attended code camps, read programming books, and participated in Meetup events. I even started my own Meetup group and co-hosted a podcast, both relating to iOS development and the Swift programming language."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try DevjmitchellGithubIo().publish(
    withTheme: .foundation,
    deployedUsing: .gitHub("devjmitchell/devjmitchell.github.io", useSSH: false)
)
