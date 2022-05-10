import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct DevjmitchellGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "devjmitchell.github.io")!
    var name = "DevjmitchellGithubIo"
    var description = "A description of DevjmitchellGithubIo"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try DevjmitchellGithubIo().publish(
    withTheme: .foundation,
    deployedUsing: .gitHub("devjmitchell/devjmitchell.github.io", useSSH: false)
)
