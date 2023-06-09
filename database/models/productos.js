module.exports = function (sequelize, dataTypes){
    let alias = "Producto";

    let cols = {


        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },

        imagenDelProducto: {
            type: dataTypes.STRING(8000),
            allowNull: false
        },

        estilo: {
            type: dataTypes.TEXT,
            allowNull: false
        },

        nombre: {
            type: dataTypes.STRING(200),
            allowNull: false
        },

        precio: {
            type: dataTypes.DECIMAL,
            allowNull: false
        },

        talle: {
            type: dataTypes.STRING(255),
            allowNull: false

        },

        categoria: {
            type: dataTypes.STRING(255),
            allowNull: false
        },

        descripcion: {
            type: dataTypes.TEXT,
            allowNull: false
        },

        color: {
            type: dataTypes.STRING(255),
            allowNull: false
        },

        usuario_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            references: {
                model: "Usuario",
                key: "id"
        }
    },

        carrito_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            references: {
                model: "Carrito",
                key: "id"
         }
        }
    }
    let config = {
        tableName: "Producto",
        timestamps: false
    }

    let Producto = sequelize.define(alias, cols, config);

    Producto.associate = function(models) {
        Producto.belongsTo(models.Usuario, {
            as: "productosUsuario",
            foreignKey: "usuario_id"
        })

        Producto.associate = function(models) {
            Producto.belongsToMany(models.Carrito, {
                as: "productosCarrito",
                foreignKey: "carrito_id"
            })

    }

    return Producto
    }
}

