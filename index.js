const inquirer = require("inquirer");
const mysql = require("mysql2");

const db = mysql.createConnection(
  {
    host: "localhost",
    // MySQL username,
    user: "root",
    // MySQL password
    password: "Jake0446",
    database: "employee_db",
  },
  console.log(`Connected to the classlist_db database.`)
);

inquirer
  .prompt([
    {
      message: "what would you like to see?",
      type: "list",
      choices: ["all employees", "all departments", "quit"],
      name: "choose",
    },
  ])
  .then((res) => {
    console.log(res);
    if (res.choose === "all employees") {
      db.query("SELECT * FROM employee", (err, results) => {
        if (err) {
          console.log("uh oh!");
        } else {
          console.log(results);
        }
      });
    } else if (res.choose === "all departments") {
      db.query("SELECT * FROM department", (err, results) => {
        if (err) {
          console.log("uh oh!");
        } else {
          console.log(results);
        }
      });
    }
  });
