var express = require('express');
var router = express.Router();
var alunoService = require("../services/aluno.services")


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get(
    "/list",
    (request, response, next)=>{
        response.json(alunoService.list())
    }
)

router.post(
  "/criar",
  (request, response, next)=>{
    const aluno = alunoService.register(request.body)
    console.log(request.body);
    return response.json(aluno)
  }
)

router.put(
  "/update/:id",
  (request, response, next)=>{
    const professor = alunoService.update(request.params.id, request.body)
    // console.log(request.body);
    return response.json(professor)
  }
)

router.delete(
  "/delete/:id",
  (request, response, next)=>{
    const ok = alunoService.delete(request.params.id);
    if(ok)
      return response.json({"sucess":true})
    else
      return response.json({"sucess":false})
  }
)

router.get(
  "/retrieve/:id",
  (request, response, next)=>{
    const output = alunoService.retrieve(request.params.id);

    return response.json(output)
  }
)



module.exports = router;
