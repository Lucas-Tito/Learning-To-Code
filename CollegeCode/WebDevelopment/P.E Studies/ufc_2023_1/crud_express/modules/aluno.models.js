var mongoose = require("mongoose");
var AlunoSchema = mongoose.Schema( {
    
    
    nome: { type: String, required: true },
    curso: { type: String, required: true },
    ira: { type: String,required: true },
    

});

var AlunoModel = mongoose.model("alunos", AlunoSchema);
module.exports = AlunoModel




