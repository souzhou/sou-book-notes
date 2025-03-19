import express from 'express';
import indexRoute from './routes/index.js';

const app = express();
const port = 3000;

app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

/* mount routes */
app.use(indexRoute);

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});

