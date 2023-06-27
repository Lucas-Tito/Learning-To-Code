var mongoose = require("mongoose");

var mongoDB_URI = "mongodb://127.0.0.1:27017/pe_studies";

mongoose.connect(mongoDB_URI, { useNewUrlParser: true });

var db = mongoose.connection;
db.on("connected", () => console.log("Mongoose Connected"));
db.on("disconnected", () => console.log("Mongoose Disconnected"));
