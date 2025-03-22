import express from "express";
import indexRoute from "./routes/index.js";
import bookRoute from "./routes/book.js";
import addRoute from "./routes/add.js";

const app = express();
const port = 3000;

app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

/* mount routes */
app.use(indexRoute);
app.use(bookRoute);
app.use(addRoute);

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
