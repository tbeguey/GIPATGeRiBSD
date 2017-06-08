function update_validation_date(id) {
    document.getElementById(id + "valid").innerHTML = new Date().toJSON().slice(0,10);
    id_array = {'id':id};

    $.ajax({
        type:'POST',
        url:'updateValidationDate.php',
        data:id_array,
        cache:false,
    });
}

function search(id, idCorrespondance) {
    document.getElementById(id).className = "yellow";
    document.getElementById(id).innerHTML = "";
    proposition = new Array();
    proposition = find_title(id, idCorrespondance);
    title = proposition[0];
    document.getElementById(id).innerHTML = title;
    document.getElementById(id).innerHTML += "<input type='button' value='OK' onClick='validate(&quot;" + id + "&quot;, &quot;" + title +"&quot;, &quot; " + idCorrespondance + "&quot;)'/>";
}

function validate(id, title, idCorrespondance) {
    document.getElementById(id).className = "green";
    document.getElementById(id).innerHTML = title;
    document.getElementById(id).innerHTML += "<input type='button' value='NO' onClick='cancel(&quot;" + id + "&quot;, &quot; " + idCorrespondance + "&quot;)'/>";
}

function cancel(id, idCorrespondance) {
    document.getElementById(id).className = "red";
    document.getElementById(id).innerHTML = "";
    document.getElementById(id).innerHTML = "<input type='button' value='Chercher' onClick='search(&quot;" + id + "&quot;, &quot;" + idCorrespondance + "&quot;)'/>";
}


function update_matching(idCorrespondance){

    /* C'EST TRES MOCHE DE FAIRE COMME CA, A MODIFIER AU PLUS VITE
    *
    *
    *
    *
    * */

    if(document.getElementById("geoserver").className === "green")
        titreGeoserver = document.getElementById("geoserver").innerHTML.split("<")[0];
    else
        titreGeoserver = null;

    if(document.getElementById("geonetwork").className === "green")
        titreGeonetwork = document.getElementById("geonetwork").innerHTML.split("<")[0];
    else
        titreGeonetwork = null;

    if(document.getElementById("cartogip").className === "green")
        titreCartogip = document.getElementById("cartogip").innerHTML.split("<")[0];
    else
        titreCartogip = null;

    if(document.getElementById("bsd").className === "green")
        titreBSD = document.getElementById("bsd").innerHTML.split("<")[0];
    else
        titreBSD = null;

    update_array = {'idCorrespondance':idCorrespondance, 'titregeoserver':titreGeoserver, 'titregeonetwork':titreGeonetwork, 'titrecartogip':titreCartogip, 'titrebsd':titreBSD};

    $.ajax({
        type:'POST',
        url:'updateMatching.php',
        data:update_array,
        cache:false/*,
        success: function(data) {
            alert(data);
        },
        error: function(){
            alert("errrrrrror");
        }*/
    });

    document.location.href='index.php';
}

function find_title(id, idCorrespondance) {
    find_array = {'idCorrespondance':idCorrespondance, 'id':id};
    result = new Array();
    $.ajax({
        type:'POST',
        url:'levenshtein.php',
        data:find_array,
        cache:false,
        async:false,
        dataType:'json'/*,
        success: function(data) {
            alert(data);
            result = data;
        },
        error: function(){
            alert("errrrrrror");
        }*/
    });
    return result;
}