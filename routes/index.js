import express from 'express';

var router = express.Router();
export default router;

/* GET home page. */
router.get('/', function (req, res) {
    res.render('index.ejs');
});

