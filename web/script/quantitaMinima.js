var qtaProdotto = document.getElementById("quantitaProdotto");
var bottoneAggiungi = document.getElementById("aggiungiProdotto");
var originalBackgorund = qtaProdotto.style.backgroundColor;

bottoneAggiungi.disabled = true;
console.log("ciao, sono il checkField");
qtaProdotto.addEventListener("input", function () {
    if(qtaProdotto.value !="" && qtaProdotto.value <= 2) {
        qtaProdotto.style.backgroundColor = "red";
        bottoneAggiungi.disabled = true;
    }else{
        qtaProdotto.style.backgroundColor = originalBackgorund;
        if(qtaProdotto.value !== "") {
            bottoneAggiungi.disabled = false;
        }else {
            bottoneAggiungi.disabled = true;
        }
    }
})