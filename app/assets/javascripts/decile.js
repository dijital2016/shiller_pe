var table = document.getElementById('decile-table');
var tbody = table.getElementsByTagName('decile-data')[0];
var cells = tbody.getElementsByTagName('td');
var specCells = cells.getElementById('dec-one_mo')

for (var i=0, len=specCells.length; i<len; i++){
    if (parseInt(specCells[i].innerHTML,10) > 5){
        specCells[i].className = 'red';
    }
    else if (parseInt(specCells[i].innerHTML,10) < -5){
        specCells[i].className = 'green';
    }
}
