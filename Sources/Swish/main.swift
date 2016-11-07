import Commander
import SwishCommands

// MARK: - Properties

private let version = "1.4"

// MARK: - Command Line Interface

Group {
    $0.command("init") {
        setup()
    }

    $0.command("build", Flag("clean", description: "Makes a clean build.")) { clean in
        build(clean: clean)
    }

    $0.command("run") {
        run()
    }

    $0.command("stop") {
        stop()
    }
}.run(version)