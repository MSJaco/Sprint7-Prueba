module.exports = function (sequelize, dataTypes) {
  let alias = "Carrito";

  let cols = {


    id: {
      type: dataTypes.INTEGER(10).UNSIGNED,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },

    cantidad: {
      type: dataTypes.INTEGER(11),
      allowNull: false
    },

    cupon: { // resta
      type: dataTypes.DECIMAL,
      allowNull: false
    },

    producto_precio: { // multiplica
      type: dataTypes.DECIMAL,
      allowNull: false
    },

    precio_total: { // promedio total
      type: dataTypes.DECIMAL,
      allowNull: false
    },

    producto_id: {
      type: dataTypes.INTEGER(10).UNSIGNED,
      allowNull: false,
      references: {
        model: "productos",
        key: "id"
      }
    },

   usuario_id: {
      type: dataTypes.INTEGER(10).UNSIGNED,
      allowNull: false,
      references: {
      model: "usuarios",
      key: "id"
   }
  }
  }

  let config = {
    tableName: "Carrito",
    timestamps: false
  }

  let Carrito = sequelize.define(alias, cols, config);


  Carrito.associate = function(models) {
   Carrito.hasMany(models.Producto, {
       as: "productosCarrito",
        foreignKey: "producto_id"
    })


    Carrito.associate = function(models) {
    Carrito.belongsTo(models.Usuario, {
        as: "usuariosCarrito",
          foreignKey: "usuario_id"
      })

}
  return Carrito
}
}
