const express = require("express");
const cors = require("cors");
const helmet = require("helmet");
const morgan = require("morgan");
require("dotenv").config();

const app = express();
app.use(express.json());
app.use(cors());
app.use(helmet());
app.use(morgan("tiny"));

app.get("/", (_, res) => {
  res.json({ hello: "world" });
});

const PORT = process.env.PORT || 5050;
app.listen(PORT, () => {
  console.log(`\u2705 Server is listening on port ${PORT}`);
});
