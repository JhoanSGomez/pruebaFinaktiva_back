require("dotenv").config();
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");

const event = require("./routes/event");
const user = require("./routes/users");

const app = express()
  .use(cors({ credentials: true, origin: "http://localhost:4200" }))
  .use(bodyParser.urlencoded({ extended: false }))
  .use(bodyParser.json());

app.use("/event", event);
app.use("/user", user);


module.exports = app;