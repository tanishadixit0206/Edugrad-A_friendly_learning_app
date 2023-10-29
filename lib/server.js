const express = require("express");
const mysql = require("mysql2");
const bcryptjs = require("bcryptjs");
const jwt = require("jsonwebtoken");
const bodyParser = require("body-parser");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 3301;

const cors = require("cors");
app.use(cors({ origin: '*' }));

mongoose
  .connect(
    "mongodb+srv://syntax:1234@syntax.jenehau.mongodb.net/Syntax?retryWrites=true&w=majority"
  )
  .then(() => {
    console.log("DB connected");
  })
  .catch((err) => {
    console.log(err);
  });

// // Create a MySQL database connection
// const db = mysql.createConnection({
//   host: '127.0.0.1',
//   port:  '3301',
//   user: 'root',
//   password: '1234',
//   database: 'syntax',
// });

// // app.use('/', (req,res) => {console.log("heeh")})
// db.connect((err) => {
//   if (err) {
//     console.error('Database connection error:', err);
//   } else {
//     console.log('Connected to MySQL database');
//   }
// });

app.use(bodyParser.json());

// Create a user table (if it doesn't exist)
// db.query(
//   'CREATE TABLE IF NOT EXISTS users (id INT AUTO_INCREMENT PRIMARY KEY, username VARCHAR(200) NOT NULL, password VARCHAR(20))',
//   (err) => {
//     if (err) {
//       console.error('Error creating user table:', err);
//     }
//   }
// );

const userSchema = mongoose.Schema({
  username: String,
  password: String,
});

const User = mongoose.model("Users", userSchema);

// User registration endpoint
app.post("/register", async (req, res) => {
  console.log(req.body);
  const { username, password } = req.body;

  bcryptjs.hash(password, 10, async (err, hash) => {
    if (err) {
      return res.status(500).json({ error: "Registration failed" });
    }

    await User.create({ username, password: hash });
    res.status(201).json({ message: "User registered successfully" });
    // db.query(
    //   "INSERT INTO users (username, password) VALUES (?, ?)",
    //   [username, hash],
    //   (err) => {
    //     console.log("nnennenr");
    //     if (err) {
    //       console.log("enernren");
    //       console.log(err);
    //       return res.status(500).json({ error: "Registration failed" });
    //     }

    //     res.status(201).json({ message: "User registered successfully" });
    //   }
    // );
  });
});

// User login endpoint
app.post("/login", async (req, res) => {
  const { username, password } = req.body;

  const userFoundArr = await User.find({ username });
  // console.log(userFound[0]);
  const userFound = userFoundArr[0];

  if (userFound) {
    bcryptjs.compare(password, userFound.password, (err, passwordMatch) => {
      if (err || !passwordMatch) {
        return res.status(401).json({ error: "Authentication failed" });
      }
      console.log("match found");
      // Create a JWT token for the authenticated user
      const token = jwt.sign({ username }, "your-secret-key", {
        expiresIn: "1h",
      });

      return res.status(201).json({ token });
    });
  } else {
    return res.status(401).json({ error: "Authentication failed" });
  }

  // db.query(
  //   "SELECT * FROM users WHERE username = ?",
  //   [username],
  //   (err, results) => {
  //     if (err || results.length === 0) {
  //       return res.status(401).json({ error: "Authentication failed" });
  //     }

  //     const user = results[0];

  //     bcryptjs.compare(password, user.password, (err, passwordMatch) => {
  //       if (err || !passwordMatch) {
  //         return res.status(401).json({ error: "Authentication failed" });
  //       }

  //       // Create a JWT token for the authenticated user
  //       const token = jwt.sign({ username: user.username }, "your-secret-key", {
  //         expiresIn: "1h",
  //       });

  //       res.json({ token });
  //     });
  //   }
  // );
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
