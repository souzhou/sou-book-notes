import express from 'express';
import * as db from '../db/index.js'

var router = express.Router();
export default router;

var catalog;
export {catalog};

/* GET home page. */
router.get('/', async function (req, res) {
    catalog = await getCatalog();

    res.render('index.ejs', {
        catalog: catalog
    });
});

async function getCatalog() {
    try {
        const result = await db.query('SELECT id, cover_image_title, get_param FROM books');
        return result.rows;
    } catch(err) {
        console.log(err);
    }
}

