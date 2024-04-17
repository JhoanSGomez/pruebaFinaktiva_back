const Sequelize = require('sequelize');
const { host, user, password, database } = require('../config/mysql'); 

const sequelize = new Sequelize(database, user, password, {
    host: host,
    dialect: 'mysql'
});

const EventLog = sequelize.define('EventLog', {
      fecha: {
          type: Sequelize.DATE,
          allowNull: false
      },
      metodo: {
        type: Sequelize.STRING,
        allowNull: true
      },
      descripcion: {
          type: Sequelize.STRING,
          allowNull: false
      },
      tipo: {
        type: Sequelize.ENUM('API', 'FORM'),
        allowNull: false,
        validate: {
            isIn: [['API', 'FORM']]
        }
      }
  }, {
    timestamps: false, // Deshabilitar las columnas createdAt y updatedA
});

sequelize.sync({ force: false }).then(() => {
  console.log('Base de datos sincronizada');
}).catch(err => {
  console.error('Error al sincronizar base de datos:', err);
});

module.exports = {
    sequelize,
    EventLog
};


