#!/bin/bash

# Simple Interest Project Launcher
# Usage:
#   ./simple-interest.sh cli   → Run CLI calculator
#   ./simple-interest.sh web   → Launch Flask web app
#   ./simple-interest.sh help  → Show this help message

COMMAND=$1

if [ "$COMMAND" == "cli" ]; then
    echo "Launching Simple Interest CLI Calculator..."
    python3 simple_interest.py
elif [ "$COMMAND" == "web" ]; then
    echo "Launching Flask Web App..."
    export FLASK_APP=app.py
    export FLASK_ENV=development
    python3 app.py
elif [ "$COMMAND" == "help" ] || [ -z "$COMMAND" ]; then
    echo "Usage: ./simple-interest.sh [cli|web|help]"
    echo "  cli  → Run the CLI calculator"
    echo "  web  → Launch the Flask web app"
    echo "  help → Show this help message"
else
    echo "Error: Unknown command '$COMMAND'"
    echo "Use './simple-interest.sh help' for usage."
fi
