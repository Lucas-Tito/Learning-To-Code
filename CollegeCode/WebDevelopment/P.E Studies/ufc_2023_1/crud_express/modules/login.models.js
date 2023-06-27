var mongoose = require('mongoose')
var LoginSchema = mongoose.Schema( {
    
    
    login: { type: String, required: true },
    senha: { type: String, required: true },    

});

var LoginModel = mongoose.model("logins", LoginSchema);
module.exports = LoginModel




