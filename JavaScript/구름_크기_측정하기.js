// Run by Node.js
const readline = require("readline");

(async () => {
  let inputData = readline.createInterface({ input: process.stdin });

  for await (const line of inputData) {
    let result = line.split(" ").map(Number);
    console.log(result[0] * result[1]);
    rl.close();
  }

  process.exit();
})();
