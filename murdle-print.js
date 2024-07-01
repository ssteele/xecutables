// unjumblePhrase 'A ANSIT FMOR YERV EVSIPEXEN KIN WSA EDCSEORIDV TWE.'

// update me
const cluesText = `
• Mauve liked the person who brought a apple. (?)
• A trusted message read: A GNITCARTSID ENIHCAM SAW DNUOF A NOITANOD YB NA YLRAE SUNMULA. (?)
• Sister Lapis had a heavy backpack. (?)
• Father Mango had not been in the dormitory. (?)
• Harvi and Ada were at the radio station. (?)
`;

const questions = [
  '• Who was with Harvi?',
  '• What item did she have?',
  '• Where was she?',
];

// register elements
const mainEl = $('#mainbox')[0];
const bookEl = $('#floating-book')[0];
const textAreaEl = $('#notepad')[0];
const buttonEl = $('.opening-button')[0];
const weaponsLabelEl = $('.notebook-label-vertical')[0];
const suspectsLabelEl = $('.notebook-label')[0];
const columnHeaderEls = $$('.divtablehead span');

// hide things
bookEl.style.setProperty('display', 'none');
textAreaEl.style.setProperty('display', 'none');
buttonEl.style.setProperty('display', 'none');

// update labels
weaponsLabelEl.innerHTML = 'ITEMS';
suspectsLabelEl.innerHTML = 'PEOPLE';

// add column titles
columnHeaderEls.map(e => {
  const title = e.getAttribute('title');
  if (title) {
    e.innerHTML = `${e.innerHTML} <span style="color:black;font-size:9px;">${title}</span>`
  }
});

// add clues
let cluesEl = document.createElement('div');
const cluesHeader = document.createElement('h3');
cluesHeader.innerHTML = 'CLUES';
cluesEl.appendChild(cluesHeader);
const clues = cluesText.split(' (?)');
clues.map(c => {
  let p = document.createElement('p');
  p.innerHTML = c;
  p.style = 'font-size:14px';
  cluesEl.appendChild(p);
});
mainEl.appendChild(cluesEl);

// add questions
let questionsEl = document.createElement('div');
const questionsHeader = document.createElement('h3');
questionsHeader.innerHTML = 'QUESTIONS';
questionsEl.appendChild(questionsHeader);
questions.map(q => {
  let p = document.createElement('p');
  p.innerHTML = q;
  p.style = 'font-size:14px';
  questionsEl.appendChild(p);
});
mainEl.appendChild(questionsEl);
