/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var Enseigant =  {
    id_enseignant : 0,
    nom :"",
    prenom :"",
    date_naissance :"",
    //je vois pas ce que c'est ?
    grade :"",
    
    init:function (id,n,p,d,g){
        this.id_enseignant = id ;
        this.nom = n;
        this.prenom = p;
        this.date_naissance = d ;
        this.grade = g;
    }
    
    
};

function Enseigant(id,n,p,d,g){
    this.id_enseignant = id;
    this.nom = n ;
    this.prenom = p ;
    this.date_naissance = d ;
    this.grade = g;
}

function Enseigant(){
    
}