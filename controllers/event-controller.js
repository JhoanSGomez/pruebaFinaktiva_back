const { Op } = require('sequelize');
const { EventLog } = require("../models/eventModel");
const saveEventLogApi = require('../middleware/saveEventApi');

const registerEvent = async (req, res) => {
    const { fecha, descripcion, tipo } = req.body;
    saveEventLogApi(req);
    try {
        await EventLog.create({ fecha, descripcion, tipo });
        res.status(200).json({ message: 'Evento registrado' });
    } catch (error) {
        console.error('Error al insertar evento:', error);
        res.status(500).json({ message: 'Error interno' });
    }
};

const consultEvent = async (req, res) => {
  const { tipo, fechaInicio, fechaFin } = req.query;
  saveEventLogApi(req);
  try {
      let whereClause = {};

      if (tipo) {
          whereClause.tipo = tipo;
      }
      if (fechaInicio && fechaFin) {
          whereClause.fecha = {
              [Op.between]: [fechaInicio, fechaFin],
          };
      }

      const events = await EventLog.findAll({ where: whereClause });

      const formattedEvents = events.map((event) => {
          return {
              fecha: event.fecha,
              descripcion: event.descripcion,
              tipo: event.tipo,
          };
      });

      res.status(200).json(formattedEvents);
  } catch (error) {
      console.error('Error al consultar eventos:', error);
      res.status(500).json({ message: 'Error interno' });
  }
};

module.exports = { registerEvent, consultEvent};
