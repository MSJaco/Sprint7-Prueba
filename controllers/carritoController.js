// Librerías Principales
const fs = require("fs");
const path = require("path");


// Uso de los métodos de modelos
const db = require("../database/models")

  // Carrito 
  const carritoController = {

  carrito: (req, res) => {
    const emailSession = req.session.userLogged;

    if (emailSession) {
      res.render("carrito", { user: emailSession })
    };

  }
 }

 module.exports = carritoController;