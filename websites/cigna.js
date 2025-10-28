
// dismiss sidebar notifications: new challenges, accepted friend requests
$$('.vpg-t-btn.vpg-button-large').forEach(e => e.click());

// add all suggested friends
$$('.v-list-item-action .v-icon-button').forEach(e => e.click());



// ---

// invite everyone to a challenge
$$('#fa--list-item-button').forEach(e => e.click())
