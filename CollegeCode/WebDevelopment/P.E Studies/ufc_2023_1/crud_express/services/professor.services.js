const ProfessorModel = require("../modules/professor.models")

let professors = [
    { id: 0, nome: "Vito Corleone", curso: "Sistemas de Informação", titulacao: "DOUT", area_interesse: { es: true, al: false, ds: false, mc: true } },
    { id: 1, nome: "Michael Corleone", curso: "Sistemas de Informação", titulacao: "DOUT", area_interesse: { es: true, al: false, ds: false, mc: true } },
    { id: 2, nome: "Kay Adams", curso: "Sistemas de Informação", titulacao: "DOUT", area_interesse: { es: true, al: false, ds: false, mc: true } },
    { id: 3, nome: "Peter Clemenza", curso: "Sistemas de Informação", titulacao: "GRAD", area_interesse: { es: true, al: true, ds: false, mc: true } },
    { id: 4, nome: "Salvatore Tessio", curso: "Sistemas de Informação", titulacao: "MEST", area_interesse: { es: true, al: false, ds: false, mc: true } },
    { id: 5, nome: "Luca Brasi", curso: "Sistemas de Informação", titulacao: "GRAD", area_interesse: { es: true, al: false, ds: false, mc: true } },
    { id: 6, nome: "Mario Puzo", curso: "Sistemas de Informação", titulacao: "GRAD", area_interesse: { es: true, al: false, ds: false, mc: true } }
]

let id = 7

class ProfessorService{

    static list(){
        return professors
    }

    static register(data){
        let professor = new ProfessorModel(
            id++,
            data.nome,
            data.curso,
            data.titulacao,
            data.area_interesse
        )
        professors.push(professor)
        console.log(professor);
        console.log(data);
        return professor
    }

    static update(id, data){
        for (let p of professors) {
            if (p.id == id) {
                p.nome = data.nome
                p.curso = data.curso
                p.titulacao = data.titulacao
                p.area_interesse = data.area_interesse
                return p
            }
        }

        return null
    }

    static delete(id){
        for(let i =0; i<professors.length; i++){
            if(professors[i].id == id){
                professors.splice(i,1);
                return true;
            }
        }
        return false
    }

    static retrieve(id){
        for(let i =0; i<professors.length; i++){
            if(professors[i].id == id)
                return professors[i];
        }
        return null
    }
}

module.exports = ProfessorService