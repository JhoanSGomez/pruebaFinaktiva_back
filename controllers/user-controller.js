const { User } = require("../models/userModel");
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const saveEventLogApi = require('../middleware/saveEventApi');

const registerUser = async (req, res) => {
    const { nombre_completo, fecha_nacimiento, email, password, rol } = req.body;
    saveEventLogApi(req);
    try {
        const existingUser = await User.findOne({ where: { email } });
        if (existingUser) {
            return res.status(400).json({ message: 'El usuario ya existe' });
        }

        // Hash de la contraseña
        const hashedPassword = bcrypt.hashSync(password, 8);

        const newUser = await User.create({
            nombre_completo,
            fecha_nacimiento,
            email,
            password: hashedPassword,
        });

        res.status(201).json({ message: 'Usuario creado exitosamente' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error interno del servidor' });
    }
}

const loginUser = async (req, res) => {
    const { email, password } = req.body;
    saveEventLogApi(req);
    try {
        const user = await User.findOne({ where: { email } });

        if (!user || !bcrypt.compareSync(password, user.password)) {
            return res.status(401).json({ message: 'Credenciales inválidas' });
        }

        // Generar token JWT
        const token = jwt.sign({ id: user.id, email }, 'secret', { expiresIn: '1h' });

        res.status(200).json({ token });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error interno del servidor' });
    }
}

module.exports = { registerUser, loginUser };