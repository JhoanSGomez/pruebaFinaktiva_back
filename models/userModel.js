const Sequelize = require('sequelize');
const { host, user, password, database } = require('../config/mysql'); // Importa las credenciales de la base de datos

const sequelize = new Sequelize(database, user, password, {
  host: host,
  dialect: 'mysql'
});

const User = sequelize.define('User', {
  nombre_completo: {
    type: Sequelize.STRING,
    allowNull: false
  },
  fecha_nacimiento: {
    type: Sequelize.DATEONLY,
    allowNull: false
  },
  email: {
    type: Sequelize.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: Sequelize.STRING,
    allowNull: false
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
  User
};


