const express = require('express');
const app = express();

// Ruta principal que responde con "Hola Mundo"
app.get('/', (req, res) => {
    res.send('Hola Mundo, soy Jade Mayorga :)');
    
});

// Configura el puerto y arranca el servidor
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
