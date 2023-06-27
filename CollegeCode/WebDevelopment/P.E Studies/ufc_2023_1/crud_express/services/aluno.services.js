const alunoModel = require("../modules/aluno.models")

let alunos = [
    { id: 0, nome: "Vito Corleone", curso: "Sistemas de Informação", ira:9.5 },
    { id: 1, nome: "Michael Corleone", curso: "Sistemas de Informação", ira:6 },
]

let id = 2

class alunoService{

    static list(){
        return alunos
    }

    static register(data){
        let aluno = new alunoModel(
            id++,
            data.nome,
            data.curso,
            data.ira
        )
        alunos.push(aluno)
        console.log(aluno);
        console.log(data);
        return aluno
    }

    static update(id, data){
        for (let p of alunos) {
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
        for(let i =0; i<alunos.length; i++){
            if(alunos[i].id == id){
                alunos.splice(i,1);
                return true;
            }
        }
        return false
    }

    static retrieve(id){
        for(let i =0; i<alunos.length; i++){
            if(alunos[i].id == id)
                return alunos[i];
        }
        return null
    }
}

module.exports = alunoService