const fs = require("node:fs/promises");
const path = require("path");

const express = require("express");
const bodyParser = require("body-parser");

const app = express();
const filePath = path.join(__dirname, "data.json");

app.use(bodyParser.json());

app.get("/", async function (req, res) {
  let dummyData;
  for (let i = 0; i < 5000; i++) {
    dummyData = await fs.readFile(filePath);
  }
  const json = JSON.parse(dummyData);
  res.json({ message: "Successsssssss!", data: json });
});

app.post("/data", async function (req, res) {
  const data = req.body;

  res.status(201).json({ message: "Received dummy data.", data });
});

app.listen(3000);
