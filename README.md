
# Luhn Algorithm using Haskell

This Haskell module provides functions to validate credit card numbers using the Luhn algorithm. The Luhn algorithm is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers.

## Functions

### `toDigits`

Converts an integer input into a list of its individual digits.

```haskell
toDigits :: Integer -> [Integer]
```

### `doubleEveryOther`

Doubles every second digit from the right in a list of integers.

```haskell
doubleEveryOther :: [Integer] -> [Integer]
```

### `sumDigits`

Sums all the digits in a list of integers.

```haskell
sumDigits :: [Integer] -> Integer
```

### `validate`

Validates a credit card number using the Luhn algorithm by utilizing the previously defined functions.

```haskell
validate :: Integer -> Bool
```

### `altMap`

Applies two different functions alternately to elements in a list.

```haskell
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
```

### `doubleEveryOther'`

Implements `doubleEveryOther` using `altMap`.

```haskell
doubleEveryOther' :: [Integer] -> [Integer]
```

## Get Started

You can use these functions to validate credit card numbers in Haskell programs or GHCi sessions.

```haskell
-- Example usage
validate 4556789056789323  -- Returns: True
validate 4556789056789321  -- Returns: False
```

## Contributing
Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or create a pull request. For major changes, please open an issue first to discuss the proposed changes.
