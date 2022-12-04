const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const authRouter = express();

authRouter.post("/api/signup", async (req, res) => {
  try {
    const { email, password } = req.body;

    const existingUser = await User.findOne({ email });
    const hashedPassword = await bcryptjs.hash(password, 8);
    if (!existingUser) {
      let user = new User({
        email,
        password: hashedPassword,
      });
      user = await user.save();
      res.json(user);
    }
    if (existingUser) {
      return res.status(401).json({ msg: "User exists!" });
    }
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = authRouter;
