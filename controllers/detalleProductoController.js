// Librerías Principales

const fs = require("fs");
const path = require("path");
//const { validationResult } = require("express-validator");
// Operadores de sequelize

//const { Association } = require('sequelize');

// Uso de los métodos de modelos
const db = require("../database/models")

const Detalle = db.Producto;


const detalleProductoController = {


  // Detalle de producto 

  detalle: (req, res) => {
    const emailSession = req.session.userLogged;

    Detalle.findByPk(req.params.id)
      .then(function (productos) {
        if (emailSession) {
          res.render("descripcion", { user: emailSession, productos})
        } else {
          res.status(404).send('Producto no encontrado')
        }
      })
  }
}

module.exports = detalleProductoController;