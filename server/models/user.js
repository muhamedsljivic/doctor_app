const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
  email: {
    required: true,
    type: String,
    trim: true,
  },
  password: {
    required: true,
    type: String,
  },
  address: {
    type: String,
    default: "",
  },
  type: {
    type: String,
    default: "user",
  },
});

const User = mongoose.model("User", userSchema);
module.exports = User;
