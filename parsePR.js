import * as fs from "node:fs/promises";
const readline = require("readline");

async function extractTests() {
    let testsFile = __dirname + "/testsToRun.txt";
    let testsToRun = "all"; // Default to "all"

    const lines = readline.createInterface({
        input: fs.createReadStream(__dirname + "/pr_body.txt"),
        crlfDelay: Infinity
    });

    for await (const line of lines) {
        const lowerCaseLine = line.toLowerCase();
        if (lowerCaseLine.includes("apex::[") && lowerCaseLine.includes("]::apex")) {
            let startIndex = line.toLowerCase().indexOf("apex::[") + "apex::[".length;
            let endIndex = line.toLowerCase().indexOf("]::apex", startIndex);
            let tests = line.substring(startIndex, endIndex);
            if (tests.trim()) {
                testsToRun = tests
                    .split(",")
                    .map((test) => test.trim())
                    .join(" ");
            }
        }
    }

    await fs.promises.writeFile(testsFile, testsToRun);
}

extractTests();
