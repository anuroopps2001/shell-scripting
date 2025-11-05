
# Arrays

- Scalar variables
These are used to store single value into an variable

- Array
An array is used to store the group of values of different data types into it.

## Defining an Array: 
array_name=(value1 value2 value3 .. so on..!!)

## Accessing array elements
```bash
${array_name[index_value]} -- To access single element in an array
```
```bash
${array_name[@]} #To access all the elements in an array
```
```bash
${array_name[*]} #This is also used to access all the elements in an array
```
```bash
${array_name[@]:start_index} #To access all the elements in an array from the given starting index_value
```
```bash
${array_name[@]:start_index:No_Of_array_elements_to_be_accessed} #To access specific number of elements from the start index specified inside the array
``
