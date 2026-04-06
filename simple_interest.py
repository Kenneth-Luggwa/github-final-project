"""
Simple Interest Calculator with CLI support

Usage:
    python simple_interest.py --principal 1000 --rate 5 --time 2
"""

import argparse

def calculate_simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

def main():
    parser = argparse.ArgumentParser(description="Calculate Simple Interest")
    parser.add_argument("--principal", type=float, help="Principal amount")
    parser.add_argument("--rate", type=float, help="Annual interest rate (%)")
    parser.add_argument("--time", type=float, help="Time in years")

    args = parser.parse_args()

    # If all CLI args are provided, use them
    if args.principal is not None and args.rate is not None and args.time is not None:
        principal = args.principal
        rate = args.rate
        time = args.time
    else:
        print("****** Simple Interest Calculator ******")
        try:
            principal = float(input("Enter the principal amount: "))
            rate = float(input("Enter the annual interest rate (%): "))
            time = float(input("Enter the time (in years): "))
        except ValueError:
            print("Error: Please enter valid numeric values.")
            return

    # Validation
    if principal < 0 or rate < 0 or time < 0:
        print("Error: Values cannot be negative.")
        return

    result = calculate_simple_interest(principal, rate, time)
    print(f"Simple Interest: {result:.2f}")

if __name__ == "__main__":
    main()
