## Task

Write a ruby command line app that calculates the tip for given amount of money.

The app should:

1. Handle user input
   ```
   > calculate-tip
   # Please provide amount: [user input: 10]
   # Please provide tip (%): [user input: 5]
   # Total amount with tip: 10.5
   # Tip amount: 0.5
   ```

2. Accept command line parameters
   ```
   > calculate-tip --amount 10 --tip 5
   # Total amount with tip: 10.5
   # Tip amount: 0.5
   ```

3. Communicate with external API in order to perform calculation.

   The API is available at `http://office.code-runners.com:8888` and exposes `POST` method:
   ```
   POST http://office.code-runners.com:8888

   Parameters:
   - amount (float)
   - tip (float)
   ```

   The application responds with `JSON`.

   ```
   > curl -X POST --data "amount=100&tip=15" 'http://office.code-runners.com:8888'
   {"amount":100.0,"tip":15.0,"amount_with_tip":15.0}
   ```

4. Handle currencies included in user input
   ```
   > calculate-tip
   # Please provide amount: [user input: 10 EUR]
   # Please provide tip (%): [user input: 5]
   # Total amount with tip: 10.5 EUR
   # Tip amount: 0.5 EUR
   ```

## Requirements

- Please package your code as a GEM, the `calculate-tip` command should be available after running `gem install [gem name]`
- The code should be tested
- Code should be delivered via public GitHub repository
- Please prepare the GEM like you would be creating it for public use, we don't expect from you reinventing the wheel

## Bonus points

- Handling edge cases like:
  - Entering negative amounts
- Using default tip rate of 15% (when there is no input from user)
