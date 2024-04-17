const express = require("express");
const { registerEvent, consultEvent } = require("../controllers/event-controller");
const router = express.Router();
const authenticateToken = require('../middleware/auth-token');

router.post("/register", authenticateToken,registerEvent);
router.get("/consult", authenticateToken,consultEvent);

module.exports = router;
