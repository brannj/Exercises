# Max Slice Exercise

**Task:**  
Create a `max_slice` method that takes an array of integers and returns the slice with the largest sum of elements.

**Examples:**
* `max_slice([1,2,3]) => [1,2,3]`
* `max_slice([1,-2,3]) => [3]`
* `max_slice([1,-1,3,4]) => [3,4]`
* `max_slice([-1,-2,-3]) => [-1]`

**Solution:**  
As negative values are the only integers that can reduce the sum of the array we can split the array and isolate the negatives. It is then possible to iterate through and return the slice that has the maximum sum.  

1. Check if the array is all negatives and return the maximum if so.
2. Use `chunk` to slice the array into negative and positive value chunks, pass the enumerator to an array and 'flatten(1)' to remove one level of array depth.
3. `select` the Arrays to avoid calling `max_by` on the boolean values inserted by `chunk`.
4. Use `max_by` to iterate through the selected array slices and return the slice that has the largest sum.
