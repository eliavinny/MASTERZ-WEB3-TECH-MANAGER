var giorniSettimana = [
    "Lunedì",
    "Martedì",
    "Mercoledì",
    "Giovedì",
    "Venerdì",
    "Sabato",
    "Domenica",
    "Beverdì",
];

var meleRimanenti = 5;


for (i = 0; i < giorniSettimana.length-1; i++) {    

    console.log(giorniSettimana[i] +" "+ (i+1));
    console.log("Ho ancora " + meleRimanenti + " mele");

    if(meleRimanenti > 2){
        if (giorniSettimana[i] != "Mercoledì"){

        meleRimanenti = meleRimanenti - 1;
        console.log("Ne mangio una e ne rimangono " + meleRimanenti);

        }

        else{

            console.log("Oggi non ho voglia di mela");   
        }

    console.log("---------");
        
    } 
    else {
    console.log("Da oggi non mangio più mele");
    console.log("---------");
    break;
    }

}
