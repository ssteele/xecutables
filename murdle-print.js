// unjumblePhrase 'A ANSIT FMOR YERV EVSIPEXEN KIN WSA EDCSEORIDV TWE.'

// update me
const cluesText = `
• A trumpet was not in the bad cafeteria. (?)
• Coach Raspberry's fingerprint was found on a heavy backpack. (?)
• Lady Violet was curious about the person who had a brain in a jar. It's a curious thing to have a brain in a jar. (?)
• A messenger gave Logico a note that read: NOCAED SIRGIDREV SAW NEES GNIGNAH DNUORA NI A ECALP OT YDUTS EHT SRATS. (?)
• You were standing in a fountain. That's a curious thing to stand in a fountain. (?)
`;

const statementsText = `
`;

const questions = [
  '• Who was with you?',
  '• What item did you have?',
  '• Where were you?',
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
