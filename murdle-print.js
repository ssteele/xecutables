
// type `dailyPuzzleSetup`, click to show source file, debugger on today_day_number, then overwite today_date
// today_date = new Date('2025-06-16T12:00:00');
// note: main murdles don't populate correctly on mondays and sundays

// unjumblePhrase 'A ANSIT FMOR YERV EVSIPEXEN KIN WSA EDCSEORIDV TWE.'
// reverseChars 'EHT GNIXOBSSEHC MYG'
// reverseStrings 'GYM CHESSBOXING THE'

// update me
sectionsToRender = {
  people: true,
  items: true,
  locations: true,
  questions: true,
}

const cluesText = `
• The person with a snowglobe wanted to escape blackmail.
• Brother Brownstone's fingerprint was found at the 5-star restaurant.
• Vice President Mauve did not have no known motive.
• An anonymous source that Logico trusted passed him a message that read: NAED OGSAUULC ATWDEN OT AEGR IHTW YLSJEOAU. (Decode.)
• The person who wanted to break into the Industry was in the real estate office.
• The Duchess of Vermillion liked the person who had a stone dagger.
• The person with the climbing rope had brown eyes.
`;

const statementsText = `
• Vice President Mauve: A stone dagger was not at the boutique hotel.
• The Duchess of Vermillion: Vice President Mauve was not at the 5-star restaurant.
• Brother Brownstone: In the name of God, Vice President Mauve brought a snowglobe.
• Dean Glaucous: Vice President Mauve was at the boutique hotel.
`;

const questions = [
  '• Who was with you?',
  '• What item did you have?',
  '• What was the motive?',
  '• Where were you?',
];

// grab the date, style
const dateEl = $$('#theme-block p')[1];
dateEl.style.setProperty('font-weight', 'normal');
dateEl.style.setProperty('position', 'absolute');
dateEl.style.setProperty('top', '0');
dateEl.style.setProperty('left', '0');
dateEl.style.setProperty('font-size', '9px');

// fetch suspect details
let shsSuspects = [];
try {
  shsSuspects = suspect_array.map(suspect => {
    const characteristics = suspect_details[suspect?.name]?.characteristics;
    return {
      ...characteristics,
      name: suspect?.name,
    }
  });
} catch (e) {
  console.error('Error fetching suspect details', e);
}

// fetch weapon details
let shsWeapons = [];
try {
  shsWeapons = weapons.map(weapon => shuffledweapons.find(sw => sw?.name === weapon));
} catch (e) {
  console.error('Error fetching weapon details', e);
}

// fetch location details
let shsLocations = [];
try {
  shsLocations = rooms.map(room => shuffledrooms.find(sw => sw?.name === room));
} catch (e) {
  console.error('Error fetching location details', e);
}

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

// add people
if (sectionsToRender?.people && shsSuspects.length) {
  let peopleEl = document.createElement('div');
  const peopleHeader = document.createElement('h3');
  peopleHeader.innerHTML = 'PEOPLE';
  peopleEl.appendChild(peopleHeader);
  try {
    shsSuspects.map(s => {
      let p = document.createElement('p');
      p.innerHTML = `${s?.name} | ${inchesToFeet(s?.height)} | ${s?.hand}-handed | ${s?.eyes} eyes | ${s?.hair} hair | born ${s?.birthday} (${s?.sign})`;
      p.style = 'font-size:13px;line-height:1rem';
      peopleEl.appendChild(p);
    });
  } catch (e) {
    console.error('Error rendering suspect details', e);
  }
  mainEl.appendChild(peopleEl);
}

// add items
if (sectionsToRender?.items && shsWeapons.length) {
  let itemsEl = document.createElement('div');
  const itemsHeader = document.createElement('h3');
  itemsHeader.innerHTML = 'ITEMS';
  itemsEl.appendChild(itemsHeader);
  try {
    shsWeapons.map(s => {
      let p = document.createElement('p');
      const clue = s?.clue ? ` | look for ${s?.clue} left behind` : '';
      p.innerHTML = `${s?.name} | ${s?.weight}-weight | made of ${s?.materials.join(' & ')}${clue}`;
      p.style = 'font-size:13px;line-height:1rem';
      itemsEl.appendChild(p);
    });
  } catch (e) {
    console.error('Error rendering suspect details', e);
  }
  mainEl.appendChild(itemsEl);
}

// add locations
if (sectionsToRender?.locations && shsLocations.length) {
  let locationsEl = document.createElement('div');
  const itemsHeader = document.createElement('h3');
  itemsHeader.innerHTML = 'LOCATIONS';
  locationsEl.appendChild(itemsHeader);
  try {
    shsLocations.map(s => {
      let p = document.createElement('p');
      p.innerHTML = `${s?.name} | ${s?.indoors ? 'indoors' : 'outdoors'} | ${s?.description}`;
      p.style = 'font-size:13px;line-height:1rem';
      locationsEl.appendChild(p);
    });
  } catch (e) {
    console.error('Error rendering suspect details', e);
  }
  mainEl.appendChild(locationsEl);
}

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
    p.style = 'font-size:13px;line-height:1rem';
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
    p.style = 'font-size:13px;line-height:1rem';;
    statementsEl.appendChild(p);
  });
  mainEl.appendChild(statementsEl);
}

// add questions
if (sectionsToRender?.questions && questions.find(q => !!q)) {
  let questionsEl = document.createElement('div');
  const questionsHeader = document.createElement('h3');
  questionsHeader.innerHTML = 'QUESTIONS';
  questionsEl.appendChild(questionsHeader);
  questions.map(q => {
    // @todo: check if motives exist
    let p = document.createElement('p');
    p.innerHTML = q;
    p.style = 'font-size:13px;line-height:1rem';;
    questionsEl.appendChild(p);
  });
  mainEl.appendChild(questionsEl);
}

// add the date
mainEl.appendChild(dateEl);
