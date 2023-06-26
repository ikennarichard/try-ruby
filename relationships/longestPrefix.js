function longestPrefix(str) {
  let count = 1;
  let curr = str[0].substring(0, count);

  for (let i = 0; i < str[0].length; i++) {
    for (let j = 1; j < str.length; j++) {
      if (curr !== str[j].substring(0, count)) {
        return curr.substring(0, count - 1);
      }
    }
    count++;
    curr = str[0].substring(0, count);
  }

  return curr.substring(0, count - 1);
}


console.log(longestPrefix(["flower","flow","flight"]))
console.log(longestPrefix(["ab", "a"]))
console.log(longestPrefix(["dog","racecar","car"]))
console.log(longestPrefix(["flower","flower","flower","flower"]))
