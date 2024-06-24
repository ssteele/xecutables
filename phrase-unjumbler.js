const fs = require('fs');
const DICTIONARY_FILE = '/usr/share/dict/words';

const [_node, _script, phrase] = process?.argv;
const jumbledWords = phrase?.split(' ');
if (!jumbledWords?.length) {
  console.log('\nSupply a string of jumbled words and I will try to unjumble them!\n\n')
  return;
}

let wordList = [];
fs.readFile(DICTIONARY_FILE, 'utf8', (err, data) => {
  if (err) throw err;
  wordList = Object.values(data?.split('\n'));
  unjumbledList = [];
  for (const jumble of jumbledWords) {
    unjumbledList.push(unjumble(jumble?.replace(/[.]/g,'')?.toLowerCase()));
  }
  console.log(unjumbledList);
});

const tryWord = (candidate = '', jumble = '') => {
  let word = '';

  let remainingLetters = jumble;
  for (let j = 0; j < jumble?.length; ++j) {
    const currentLetter = candidate[j];
    const index = remainingLetters?.indexOf(currentLetter);
    if (index !== -1) {
      remainingLetters = `${remainingLetters?.substring(0, index)}${remainingLetters?.substring(index + 1)}`;
      if (remainingLetters?.length === 0) {
        word = candidate;
        break;
      }
    } else {
      break;
    }
  }

  return word;
}

const unjumble = (jumble = '') => {
  let results = [];
  for (let i = 0, len = wordList?.length; i < len; ++i) {
    if (wordList[i]?.length === jumble?.length) {
      const candidate = tryWord(wordList[i], jumble);
      if (!!candidate) results.push(candidate);
    } else if (wordList[i]?.length === jumble?.length - 1) {
      const sIndex = jumble?.indexOf('s');
      if (sIndex !== -1) {
        const unpluralJumble = `${jumble?.substring(0, sIndex)}${jumble?.substring(sIndex + 1)}`;
        const candidate = tryWord(wordList[i], unpluralJumble);
        if (!!candidate) results.push(`${candidate}s`);
      }
    }
  }

  return results;
}
