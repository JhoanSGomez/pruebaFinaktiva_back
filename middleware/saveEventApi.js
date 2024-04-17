const { EventLog } = require("../models/eventModel"); // Importa el modelo de EventLog

async function saveEventLogApi(req) {

let currentDate = new Date();
let fecha = currentDate.toISOString().slice(0, 19).replace('T', ' ');
let metodo = req.method;
let descripcion = req.url;
let tipo = 'API';


await EventLog.create({ fecha, metodo ,descripcion, tipo });

}

module.exports = saveEventLogApi;
