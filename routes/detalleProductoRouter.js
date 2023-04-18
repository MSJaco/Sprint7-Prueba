const express = require("express");
const router = express.Router();
const detalleProductoController = require("../controllers/detalleProductoController");




// Catálogos


// Descripción

// URL / GET /productos/descripcion/:id
router.get("/descripcion/:id", detalleProductoController.detalle);




module.exports = router;
