/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Specialite = {
    // besoin d'une precision sur le type
     id_specialite : "" ,
     nom : "",
     //du texte
     description : "" ,
     //liste de UE a remplir plus tard
     liste_parcours : []
     //liste_enseignant : [] //on sait pas quelle prof fait quoi  
     
};

//Constructeur
function Specialite(id,n){
    this.id_specialite = id;
    this.nom = n;
};
function Specialite(){};

var et = Etudiant.constructor();
