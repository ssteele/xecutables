
// type `dailyPuzzleSetup`, click to show source file, debugger on today_day_number, then overwite today_date
// today_date = new Date('2024-01-08T12:00:00');
// note: main murdles don't populate correctly on mondays and sundays

// unjumblePhrase 'A ANSIT FMOR YERV EVSIPEXEN KIN WSA EDCSEORIDV TWE.'
// reverseChars 'EHT GNIXOBSSEHC MYG'
// reverseStrings 'GYM CHESSBOXING THE'

// update me
const cluesText = `
• Chef Aubergine's fingerprint was found in the guard tower.
• A shiv was not found on the tennis court.
• An anonymous source that Logico trusted passed him a message that read: ICVE EDNPTEISR EVUMA SWA NESE GNGHIAN RAUODN NI HET APS. (Decode.)
• Viscount Eminence was seen in the private suite.
• Either Viscount Eminence or The Duchess of Vermillion had a poisoned birthday cake.
• Miss Saffron was accusing the person who carried a pair of literal golden handcuffs.
• Chef Aubergine disliked the person who brought a shiv made from a Mont Blanc.
• Either a shiv, handcuffs, or cufflinks were present on the tennis court.
• A golden handcuff key was discovered in the movie theater.
• Lady Violet had a rope of designer clothes.
• You were in the cafeteria.
`;

const statementsText = `
`;

const questions = [
  '• Who was with you?',
  '• What item did you have?',
  // '• What was the motive?',
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
  let title = e.getAttribute('title');
  if (title) {
    if (title.includes('felt like to kill')) {
      title = 'no known motive';
    }
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
const clues = cluesText.split('\n');
if (clues.find(c => !!c)) {
  let cluesEl = document.createElement('div');
  const cluesHeader = document.createElement('h3');
  cluesHeader.innerHTML = 'CLUES';
  cluesEl.appendChild(cluesHeader);
  clues.map(c => {
    let p = document.createElement('p');
    p.innerHTML = c.split(' (?')[0];
    p.style = 'font-size:14px';
    cluesEl.appendChild(p);
  });
  mainEl.appendChild(cluesEl);
}

// add statements
const statements = statementsText.split('\n');
if (statements.find(s => !!s)) {
  let statementsEl = document.createElement('div');
  const statementsHeader = document.createElement('h3');
  statementsHeader.innerHTML = 'STATEMENTS';
  statementsEl.appendChild(statementsHeader);
  statements.map(s => {
    let p = document.createElement('p');
    p.innerHTML = s.split(' (?')[0];
    p.style = 'font-size:14px';
    statementsEl.appendChild(p);
  });
  mainEl.appendChild(statementsEl);
}

// add questions
if (questions.find(q => !!q)) {
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
