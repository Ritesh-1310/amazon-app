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
mongoose.connect(mongoDbPath, { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => {
        console.log("MongoDB connected...");

        app.get("/", (req, res) => {
            const response = { statuscode: res.statusCode, message: "Amazon API is working" };
            res.json(response);
        });

        const PORT = process.env.PORT || 8000;
        app.listen(PORT, () => {
            console.log(`Server started at PORT: ${PORT}`);
        });
    })
    .catch(err => console.log(err));
