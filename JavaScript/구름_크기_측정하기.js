// Run by Node.js
const readline = require("readline");

(async () => {
  let rl = readline.createInterface({ input: process.stdin });

  for await (const line of rl) {
    var result = line.split(" ").map(Number);
    console.log(result[0] * result[1]);
    rl.close();
  }

  process.exit();
})();
