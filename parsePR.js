const fs = require("fs");
const readline = require("readline");

async function extractTests() {
    let testsFile = __dirname + "/testsToRun.txt";
    let testsToRun = "all"; // Default to "all"

    const lines = readline.createInterface({
        input: fs.createReadStream(__dirname + "/pr_body.txt"),
        crlfDelay: Infinity
    });

    for await (const line of lines) {
        if (line.includes("Apex::[") && line.includes("]::Apex")) {
            let tests = line.substring(line.indexOf("[") + 1, line.indexOf("]::Apex"));
            if (tests.trim()) {
                // Process each test name, enclosing in quotes if it contains spaces
                testsToRun = tests.split(",").map(test => {
                    const trimmedTest = test.trim();
                    // Enclose in quotes if the test name contains spaces
                    return trimmedTest.includes(" ") ? `"${trimmedTest}"` : trimmedTest;
                }).join(" ");
            }
        }
    }

    await fs.promises.writeFile(testsFile, testsToRun);
}

extractTests();


