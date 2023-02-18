# Substring
<h2>Problem</h2>
<p>Implement a method <strong>#substrings</strong> that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.</p>

<h2>Solution</h2>
<ul>
  <li>Define method that takes a string input and a dictionary (array of words) as parameters.</li>
  <li>Split string into different elements in an array and remove special characters with <strong>#gsub</strong>.</li>
  <li>Compare each word against each substring in the dictionary.</li>
  <li>If word includes the susbtring, push substring into an array of matches.</li>
  <li>Use <strong>#tally</strong> to return a hash of the substrings and the times each of them repeated in the array.</li>
</ul>
