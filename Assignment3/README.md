# We have a nested object. We would like a function where you pass in the object and a key and get back the value.

## Solution

## Test Cases

1. TC001

object = {"a":{"b":{"c":"d"}}}
key = a/b/c

Actual Output = d

2. TC002

object = {"x":{"y":{"z":"a"}}}
key = x/y/z

Actual Output = a

3. TC003

object = {"x":"a"}
key = x/y/z

Actual Output = key z not present in nested object

2. TC004

object = {"x":{"y":{"z":"a"}}}
key = x/a/z

Actual Output = Key not present in nested object.

  