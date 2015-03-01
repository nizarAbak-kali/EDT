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
    id_specialite: "",
    id_parcours: "",
    //list
    liste_id_ue: [],
    init: function (id_etudiant, nom, prenom, date_naissance, id_spécialité, id_parcours, semestre, liste_ue) {
        this.id = id_etudiant;
        this.nom = nom;
        this.prenom = prenom;
        this.date_naissance = date_naissance;
        this.id_specialite = id_spécialité;
        this.id_parcours = id_parcours;
        this.semestre = semestre;
        this.liste_id_ue = liste_ue;
    },
    //GETTER
    getid: function () {
        return this.id_etudiant;
    },
    getsemestre: function () {
        return this.semestre;
    },
    getnom: function () {
        return this.nom;
    },
    getprenom: function () {
        return this.prenom;
    },
    getdate_naissance: function () {
        return this.date_naissance;
    },
    getid_spe: function () {
        return this.id_specialite;
    },
    getid_parcours: function () {
        return this.id_parcours;
    },
    getliste_id_ue: function () {
        return this.liste_id_ue;
    },
    //SETTER
    setnom: function (n) {
        this.nom = n ;
    },
    setid: function (i) {
        this.id_etudiant = i;
    },
    setsemestre: function (s) {
        this.semestre = s;
    },
    setprenom: function (p) {
        this.prenom = p;
    },
    setdate_naissance: function (d) {
        this.date_naissance = d;
    },
    setid_spe: function (is) {
        this.id_specialite = is;
    },
    setid_parcours: function (pc) {
        this.id_parcours = pc;
    },
    setliste_id_ue: function (l) {
        this.liste_id_ue = l;
    },
    //affichage de l'objet dans sont ensemble
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




