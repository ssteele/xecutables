
// hide specific price tiers from the grid
const priceTiersToHide = ['High Price'];
// const priceTiersToHide = ['High Price', 'Fair Price'];
$$('[data-test="graphIconLabel"]').forEach(l => {
    if (priceTiersToHide.includes(l.innerText)) {
        l.closest('li').style.display = 'none';
    }
})
