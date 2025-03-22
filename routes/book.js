import express from 'express';
import * as db from '../db/index.js'
import {catalog} from "./index.js"

var router = express.Router();
export default router;

/* GET book page. */
router.get('/book/:title', async function (req, res) {
    const book = await getBook(req.params['title']);

    res.render('index.ejs', {
        state: 'book',
        book: book,
        catalog : catalog,
        published : new Date(book.published).getFullYear(),
        date_read : new Date(book.date_read).toDateString()
    });
});

async function getBook(get_param) {
    try {
        const result = await db.query('SELECT * FROM books WHERE get_param=$1', [get_param]);
        return result.rows[0];
    } catch (err) {
        console.error(err);
    }
}