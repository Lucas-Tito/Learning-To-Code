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
        alunoService.list(request, response);
    }
)

router.post("/criar", (req, res, next) => {
  alunoService.register(req, res);
});


router.put("/update/:id", function (req, res, next) {
  alunoService.update(req, res);
});

router.delete("/delete/:id", function (req, res, next) {
  alunoService.delete(req, res);
});

router.get("/retrieve/:id", function (req, res, next) {
  alunoService.retrieve(req, res);
});



module.exports = router;
