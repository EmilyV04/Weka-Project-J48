//Crea un objeto XMLHttpRequest
var file = new XMLHttpRequest();
var dataSet = "";
var path = 'weather.nominal.txt';

var div = document.getElementById("myData");
//div.innerHTML = "";

//Inicializa una nueva solicitud
file.open("GET",path,false);

//Se ejecuta cada vez que cambie el estado del objeto 'file'
file.onreadystatechange = function(){
    //La respuesta está lista
    if(file.readyState == 4 && file.status == 200){
        //Devuelve la respuesta del servidor como una cadena de texto
        dataSet = file.responseText;
        console.log(dataSet);
        div.innerHTML = dataSet;
    }
};

//Envia la solicitud al servidor
file.send();
