   module.exports = function (sequelize, dataTypes){
    let alias = "Usuario";

    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },

        imagen: {
            type: dataTypes.STRING(8000),
            allowNull: false
        },

        nombre: {
            type: dataTypes.STRING(200),
            allowNull: false
        },

        email: {
            type: dataTypes.STRING(200),
            allowNull: false
        },

        telefono: {
            type: dataTypes.INTEGER(11),
            allowNull: false
        },

        categoria: {
            type: dataTypes.STRING(255),
            allowNull: false
        },

        contrasena: {
            type: dataTypes.STRING(200),
            allowNull: false
        },

        carrito_id: {
            
        }
    };

    let config = {
        tableName: "Usuario",
        timestamps: false
    };

    let Usuario = sequelize.define(alias, cols, config);

    Usuario.associate = function(models) {
        Usuario.hasMany(models.Producto, {
            as: "usuarioCarrito",
            foreignKey: "carrito_id"
        })
    };

    };

    return Usuario
}
