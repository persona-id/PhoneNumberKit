// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PersonaPhoneNumberKit2",
    platforms: [
        .iOS(.v11), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "PersonaPhoneNumberKit2", targets: ["PersonaPhoneNumberKit2"])
    ],
    targets: [
        .target(name: "PersonaPhoneNumberKit2",
                path: "PhoneNumberKit",
                exclude: ["Resources/Original",
                          "Resources/README.md",
                          "Resources/update.sh",
                          "Info.plist", 
                          "Bundle+Resources.swift"],
                resources: [
                    .process("Resources/PhoneNumberMetadata.json")
                ]),
        .testTarget(name: "PersonaPhoneNumberKitTests",
                    dependencies: ["PersonaPhoneNumberKit"],
                    path: "PhoneNumberKitTests",
                    exclude: ["Info.plist"])
    ]
)
