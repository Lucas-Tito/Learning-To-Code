var express = require('express');
var router = express.Router();
var professorService = require("../services/professor.services")


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get(
    "/list",
    (request, response, next)=>{
        response.json(professorService.list())
    }
)

router.post(
  "/register",
  (request, response, next)=>{
    const professor = professorService.register(request.body)
    console.log(request.body);
    return response.json(professor)
  }
)

router.put(
  "/update/:id",
  (request, response, next)=>{
    const professor = professorService.update(request.params.id, request.body)
    // console.log(request.body);
    return response.json(professor)
  }
)

router.delete(
  "/delete/:id",
  (request, response, next)=>{
    const ok = professorService.delete(request.params.id);
    if(ok)
      return response.json({"sucess":true})
    else
      return response.json({"sucess":false})
  }
)

router.get(
  "/retrieve/:id",
  (request, response, next)=>{
    const output = professorService.retrieve(request.params.id);

    return response.json(output)
  }
)



module.exports = router;
