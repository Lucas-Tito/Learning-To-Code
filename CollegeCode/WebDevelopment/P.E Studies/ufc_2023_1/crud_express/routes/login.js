var express = require('express');
var router = express.Router();
var loginService = require("../services/login.services")


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post(
  "/criar",
  (request, response, next)=>{
    loginService.register(request, response)
  }
)

router.put(
  "/update/:id",
  (request, response, next)=>{
    const professor = loginService.update(request.params.id, request.body)
    // console.log(request.body);
    return response.json(professor)
  }
)

router.delete(
  "/delete/:id",
  (request, response, next)=>{
    const ok = loginService.delete(request.params.id);
    if(ok)
      return response.json({"sucess":true})
    else
      return response.json({"sucess":false})
  }
)

router.post(
  "/retrieve",
  (request, response, next)=>{
    const output = loginService.retrieve(request.body);

    return response.json(output)
  }
)



module.exports = router;
