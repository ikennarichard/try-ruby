
function romanToInteger(s) {
  /**
   * Loop over the string of roman numerals
   */
  let romans = {
    'I' :1,
    'V' :5,
    'X' :10,
    'L' :50,
    'C' :100,
    'D' :500,
    'M' :1000
  }
  let result = 0;
  let i = 0


  while (i < s.length) {
    let left = romans[s[i]] 
    let right = romans[s[i+1]]

    if (left < right) {
      result += right - left
      i++
    } else {
      result+= left
    }
    i++
  }
  return result
}

console.log(romanToInteger('MCMXCIV'))