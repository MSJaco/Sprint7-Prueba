const express = require("express");
const router = express.Router();
const productController = require("../controllers/productController");
const uploadFile = require("../middlewares/multerMiddleware");
const validateProduct = require("../middlewares/validateProduct");



// Catálogos

// URL / GET /productos/catalogo
router.get("/catalogo", productController.index);

// URL / GET /productos/catalogo
router.get('/catalogoLogueado', productController.logueado)

// Crear producto

// URL / GET /productos/crear
router.get("/crearProducto", productController.crear);

// URL / POST /productos/crear
router.post("/crear", uploadFile.single("imagenDelProducto"), validateProduct, productController.accionCrear);
//router.post("/crear", productController.accionCrear);


// Edición

// URL / GET /productos/edicion/:id
router.get("/edicion/:id", productController.editar);

// URL / PUT /productos/edicion/:id
router.put("/edicion/:id", uploadFile.single("imagenDelProducto"), validateProduct, productController.editarProducto);
//router.put("/edicion/:id", productController.editarProducto);


// DELETE

// URL / DELETE /productos/borrar/:id
router.delete("/borrar/:id", productController.eliminarProducto);





module.exports = router;
