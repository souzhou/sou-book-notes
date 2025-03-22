import express from "express";
import * as db from "../db/index.js";
import { catalog } from "./index.js";

var router = express.Router();
export default router;

/* GET book page. */
router.get("/add", function (req, res) {
  res.render("add.ejs", {
    catalog: catalog,
  });
});
