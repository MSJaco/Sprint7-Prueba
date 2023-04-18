const express = require("express");
const router = express.Router();
const carritoController = require("../controllers/carritoController");




// Catálogos


// Carrito

// URL / GET /productos/carrito
router.get("/carrito", carritoController.carrito);




module.exports = router;
