import Foundation
import SwiftShell

public func currentBranch(at path: String) -> String {
    main.currentdirectory = run(bash: "echo \(path)").stdout
    var currentBranch = run("git", "rev-parse --abbrev-ref HEAD".components(separatedBy: " ")).stdout
    currentBranch = currentBranch.components(separatedBy: "/").last ?? "Something went wrong"

    return currentBranch
}

