/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * Classe representant un etudiant
 * 
 * 
 */

var Etudiant = {
    //int 
    //const
    id_etudiant: 0,
    semestre: 0,
    //string
    nom: "",
    prenom: "",
    date_naissance: "",
    id_spécialité: "",
    id_parcours: "",
    //list
    liste_id_ue: [],
    init: function (id_etudiant, nom, prenom, date_naissance, id_spécialité, id_parcours, semestre, liste_ue) {

        this.id = id_etudiant;
        this.nom = nom;
        this.prenom = prenom;
        this.date_naissance = date_naissance;
        this.id_spécialité = id_spécialité;
        this.id_parcours = id_parcours;
        this.semestre = semestre;
        this.liste_id_ue = liste_ue;
    },
    affiche: function () {
        var text = "Objet {";
        // on parcours la structure "this" pour obtenir le contenue de notre objet
        for (var i in this) {
            if (i !== 'affiche') {
                text += '   [' + i + ']=>' + this[i] + '\n';
            }
        }
        alert(text + '}');
    }
};
//constructeur plein


function controle(form1) {
    var test = document.form1.input.value;

    alert("Vous avez tapé : " + test);

    var eth1 = new Etudiant.init();
    alert(typeof  eth1);
    
    
}

