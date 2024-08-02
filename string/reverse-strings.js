// node reverse-strings.js 'GOBLET POISONED A WITH SEEN WAS RED MAJOR'

const [_node, _script, phrase] = process?.argv;
const strings = phrase?.split(' ');
if (!strings?.length) {
  console.log('\nSupply a sentence and I will reverse the order of the strings!\n\n')
  return;
}

function pbcopy(data) {
  var proc = require('child_process').spawn('pbcopy'); 
  proc.stdin.write(data); proc.stdin.end();
}

const reversedString = strings.reverse().join(' ');

console.log(reversedString);
pbcopy(reversedString);
