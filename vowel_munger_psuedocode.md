## Vowel Munger Challenge

### The Problem
 - Write a function that accepts a single string parameter and replaces all the vowels[a,e,i,o,u] with their respective positions within that string.

    - Consider the string 1-indexed, IE, the first position in the string is position 1
    - vowel_munger('this is a string') -> 'th3s 6s 9 str14ng'
    - vowel_munger('Chocolate is very very tasty.') -> 'Ch3c5l7t9 11s v15ry v20ry t25sty.'
    - vowel_munger(' ') -> ' '

### Considerations
 - Assuming that 'y' is not considered a vowel
 - Can downcase all vowels so that there is no issues with case insensitivity
 - Need to account for blank spaces and punctuation at each index so the correct number for a vowel's position is returned
 - Make sure to test for these edge cases
 - **Input:** 'this is a string'
 - **Output:** 'th3s 6s 9 str14ng'

### Psuedocode
-  First want to identify which letters are considered vowels(note that `y` is excluded from the list of vowels)

- Store all vowels in a variable called `vowels` which will be used to validate if a character within the string is a vowel or not

- Verify beforehand that it is safe to assume all vowels will be lowercased for this challenge, and test for the case that it

- Next, iterate over each character in the string to determine which letters are vowels and which are not
  - If the character is a vowel, swap it out with the numbered index it is at `+ 1` to get the position of that letter
  - Else return the original character and continue iterating through the letters until there are no more left

- Once iterating through the string is finished, rejoin the letters back together and return the newly formed string with the vowels now replaced with the position numbers
