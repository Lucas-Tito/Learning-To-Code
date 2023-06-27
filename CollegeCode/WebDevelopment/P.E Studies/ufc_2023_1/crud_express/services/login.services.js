const LoginModel = require("../modules/login.models");
const loginModel = require("../modules/login.models")


class loginService{

    static register(req, res){
        loginModel.create(req.body).then((login) => {
            res.status(201).json(login);
          });
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


    static retrieve(data){
        var login = loginModel.find({login:data.login, senha:data.senha})
        if(login!=null)
            return true;
        else{
            return false
        }
    }
}

module.exports = loginService