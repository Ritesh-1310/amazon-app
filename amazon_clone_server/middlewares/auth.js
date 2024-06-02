require("dotenv").config();
const jwt = require("jsonwebtoken");
const jwtSecretKey = process.env.jwtSecretKey;

const auth = async (req, res, next) => {
    try {
        const token = req.header("x-auth-token");
        if (!token)
            return res.status(401).json({ msg: "No auth token, access denied" });

        const verified = jwt.verify(token, jwtSecretKey);
        if (!verified) return res.status(401).json({ msg: 'Token verification failed, authorization denied' });

        req.user = verified.id;
        req.token = token;
        next();
    } catch (err) {
        res.status(500).json({ error: error.message });
    }
}

module.exports = auth;