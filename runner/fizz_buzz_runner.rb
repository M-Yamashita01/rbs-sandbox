require 'date'
require 'retryable'
require_relative '../lib/fizz_buzz'

# Retryable.retryable(tries: 3, on: ArgumentError) do
option = {tries: 3, on: ArgumentError}
# Retryable.retryable(option) do
Retryable.retryable(tries: 3) do
  results = FizzBuzz.run(Date.today.day)
  puts results
end
