const mysql = require("mysql");
const inquirer = require("inquirer");
const cTable = require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",

    // Your password
    password: "sedonaaz",
    database: "employeeDB"
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    askPrompt();
});

function viewRoles() {
    connection.query("SELECT  title, salary FROM role", function(err, res) {
        if (err) throw err;
        console.table(res);
        askPrompt();
    });
}

function readEmployees() {
    connection.query("SELECT first_name, last_name FROM employee", function(err, res) {
        if (err) throw err;
        console.table(res);
        askPrompt();
    });
}

function readDepartments() {
    connection.query("Select name FROM department", function(err, res) {
        if (err) throw err;
        console.table(res);
        askPrompt();
    })
}



function askPrompt() {
    inquirer.prompt({
        type: "list",
        name: "task",
        message: "What would you like to do?",
        choices: [
            "View All Employees",
            "View All Roles",
            "View All Departments",
            "Add Department",
            "Add Role",
            "Add Employee",
            "Update Employee Role",
            "Remove Employee",
            "Exit",
        ]
    })



    .then(function(answer) {
        //console.log(answer);
        switch (answer.task) {
            case "View All Employees":
                readEmployees();
                break;

            case "View All Roles":
                viewRoles();
                break;

            case "View All Departments":
                readDepartments();
                break;



            case "Exit":
                process.exit();


        }
    });
};