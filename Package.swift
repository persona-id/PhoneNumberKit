// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PersonaPhoneNumberKit",
    platforms: [
        .iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "PersonaPhoneNumberKit", targets: ["PersonaPhoneNumberKit"])
    ],
    targets: [
        .target(name: "PersonaPhoneNumberKit",
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
