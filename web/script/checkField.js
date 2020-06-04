// var title = document.createElement("h1");
// title.innerText = "Soldati";
// var text = document.createElement("p");
// text.innerText = "Si sta come di autunno sugli alberi le foglie";
// document.body.appendChild(title);
// document.body.appendChild(text);
//
// document.getElementById("textToChange").innerText = "CiccioGamer89";
// document.getElementById("textToChange").style.color = "red";

var qtaProdotto = document.getElementById("quantitaProdotto");
var bottoneAggiungi = document.getElementById("aggiugniProdotto");
var originalBackgorund = qtaProdotto.style.backgroundColor;

bottoneAggiungi.disabled = true;
qtaProdotto.addEventListener("input", function () {
    if(qtaProdotto.value !=="" && qtaProdotto.value <= 2) {
        qtaProdotto.style.backgroundColor = "red";
        bottoneAggiungi.disabled = true;
        alert("Devi inserire una quantità maggiore di 2")
    }else{
        qtaProdotto.style.backgroundColor = originalBackgorund;
        if(qtaProdotto.value !== "") {
            bottoneAggiungi.disabled = false;
        }
    }
})