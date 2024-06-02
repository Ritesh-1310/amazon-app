// IMPORTS FROM PACKAGES
require("dotenv").config();
const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");
// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

// INIT
const app = express();
const port = process.env.PORT || 8001;
const mongoDbPath = process.env.DB;

// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

// Connections
mongoose
  .connect(mongoDbPath)
  .then(() => {
    console.log("MongoDB connected...");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(port, "0.0.0.0", () => {
  console.log(`connected at port ${port}`);
});
