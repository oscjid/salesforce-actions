const fs = require("fs");
const readline = require("readline");

async function extractTests() {
    // Define the output file
    let testsFile = __dirname + "/testsToRun.txt";
    // Start with the assumption that all tests will run
    let testsToRun = "all";

    const lines = readline.createInterface({
        input: fs.createReadStream(__dirname + "/pr_body.txt"),
        crlfDelay: Infinity
    });

    for await (const line of lines) {
        // Check for the special delimiter for apex tests
        if (line.includes("Apex::[") && line.includes("]::Apex")) {
            // Extract test names or class names
            let tests = line.substring(line.indexOf("[") + 1, line.indexOf("]::Apex"));
            if (tests.trim()) {
                // If specific tests or classes are mentioned, prepare them for the CLI
                // Assuming tests are separated by commas, we split and trim each name.
                testsToRun = tests.split(",").map(test => test.trim()).join(" --tests ");
            }
        }
    }

    // Write the final testsToRun to the file
    await fs.promises.writeFile(testsFile, testsToRun);
}

extractTests();

