const alunoModel = require("../modules/aluno.models")

class alunoService{

    
    static list(req, res){
        alunoModel.find().then((aluno) => {
            res.status(201).json(aluno);
          });
    }

    static register(req, res) {
        alunoModel.create(req.body).then((aluno) => {
          res.status(201).json(aluno);
        });
      }
    

      static update(req, res) {
        alunoModel.findByIdAndUpdate(req.params.id, req.body, {
          new: true,
        }).then((aluno) => {
          res.status(201).json(aluno);
        });
      }

    static delete(req, res) {
        alunoModel.findByIdAndRemove(req.params.id).then((aluno) => {
          res.status(201).json(aluno);
        });
      }

      static retrieve(req, res) {
        alunoModel.findById(req.params.id).then((aluno) => {
          res.status(201).json(aluno);
        });
      }
}

module.exports = alunoService