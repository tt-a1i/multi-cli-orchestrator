#!/usr/bin/env node

const { spawnSync } = require("node:child_process");
const { resolve } = require("node:path");

const scriptPath = resolve(__dirname, "..", "mco");
const args = process.argv.slice(2);

const result = spawnSync("python3", [scriptPath, ...args], {
  stdio: "inherit",
});

if (result.error) {
  console.error(`Failed to run python3: ${result.error.message}`);
  process.exit(1);
}

process.exit(result.status === null ? 1 : result.status);

