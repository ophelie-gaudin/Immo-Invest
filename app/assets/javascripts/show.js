const firstRow = document.getElementById('first-row');
const secondRow = document.getElementById('second-row');
let rowHeight = firstRow.offsetHeight;

function setHeight() {
  secondRow.style.height = rowHeight + 'px';
}

document.addEventListener('DOMcontentLoaded',setHeight(),false)