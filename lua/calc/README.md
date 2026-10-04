# Calc

A small MoonLoader script for SAMP that adds a `/calc` chat command.

## Usage
- `/calc 5 + 3` → `Result: 8`
- Supported operators: `+  -  *  /`
- `/calc help` shows instructions

## Features
- Input validation (wrong format, non-numeric values)
- Division by zero handling
- Colored chat messages

## Installation
1. Install [MoonLoader](https://blast.hk/moonloader/) (needs SAMP).
2. Copy `calc.lua` into your `moonloader` folder.
3. Start the game and type `/calc help`.

## What I learned
Command parameters, string patterns (`match`), `tonumber`, nested conditions.

## Author
Xolarus
