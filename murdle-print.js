// unjumblePhrase 'A ANSIT FMOR YERV EVSIPEXEN KIN WSA EDCSEORIDV TWE.'
// reverseChars 'GYM CHESSBOXING THE'

// update me
const cluesText = `
• Uncle Midnight was not in Old Main. (?)
• Signor Emerald's fingerprint was found on a board game. (?)
• Brother Brownstone was childhood friends with the person who brought a pair of safety goggles. (?)
• An anonymous source that Logico trusted passed him a message that read: A OY-OY SAW DNUOF NI EHT DAB AIRETEFAC. (?)
• You were in the Chessboxing Gym. (?)
`;

const statementsText = `
`;

const questions = [
  '• Who was with you?',
  '• What item did you have?',
  '• Where were you?',
];

// grab the date, style
const dateEl = $$('#theme-block p')[1];
dateEl.style.setProperty('font-weight', 'normal');
dateEl.style.setProperty('position', 'absolute');
dateEl.style.setProperty('top', '0');
dateEl.style.setProperty('left', '0');
dateEl.style.setProperty('font-size', '9px');

// open the notebook
newPage('notebook');

// hide things
const bookEl = $('#floating-book')[0];
bookEl.style.setProperty('display', 'none');
const textAreaEl = $('#notepad')[0];
textAreaEl.style.setProperty('display', 'none');
const buttonEl = $('.opening-button')[0];
buttonEl.style.setProperty('display', 'none');

// update labels
const weaponsLabelEl = $('.notebook-label-vertical')[0];
weaponsLabelEl.innerHTML = 'ITEMS';
const suspectsLabelEl = $('.notebook-label')[0];
suspectsLabelEl.innerHTML = 'PEOPLE';

// add column titles
const columnHeaderEls = $$('.divtablehead .grid_emoji');
columnHeaderEls.map(e => {
  const title = e.getAttribute('title');
  if (title) {
    e.innerHTML = `${e.innerHTML} <span style="color:black;font-size:9px;">${title}</span>`
  }
});

// add row titles
const rowHeaderEls = $$('.divTableCell .grid_emoji');
rowHeaderEls
  .filter(e => e.getAttribute('onclick').includes('weapon'))
  .map(e => {
  const title = e.getAttribute('title');
  if (title) {
    e.innerHTML = `${e.innerHTML} <span style="color:black;font-size:9px;position:absolute;right:30px;width:100px">${title}</span>`
  }
});

const mainEl = $('#mainbox')[0];

// add clues
const clues = cluesText.split(' (?)');
if (clues.length > 1) {
  let cluesEl = document.createElement('div');
  const cluesHeader = document.createElement('h3');
  cluesHeader.innerHTML = 'CLUES';
  cluesEl.appendChild(cluesHeader);
  clues.map(c => {
    let p = document.createElement('p');
    p.innerHTML = c;
    p.style = 'font-size:14px';
    cluesEl.appendChild(p);
  });
  mainEl.appendChild(cluesEl);
}

// add statements
const statements = statementsText.split(' (?)');
if (statements.length > 1) {
  let statementsEl = document.createElement('div');
  const statementsHeader = document.createElement('h3');
  statementsHeader.innerHTML = 'STATEMENTS';
  statementsEl.appendChild(statementsHeader);
  statements.map(c => {
    let p = document.createElement('p');
    p.innerHTML = c;
    p.style = 'font-size:14px';
    statementsEl.appendChild(p);
  });
  mainEl.appendChild(statementsEl);
}

// add questions
if (questions.length > 1) {
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
}

// add the date
mainEl.appendChild(dateEl);
