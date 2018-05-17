var mysql = require("mysql");
var fs = require("fs");
var inquirer = require("inquirer");
var products = [];
var whichproduct = {
    type: 'list',
    name: 'prod',
    message: 'Which product would you like to buy?',
    choices: products,
  };

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazon"
});
connection.connect(function (err) {
    if (err) console.log(err);

});
inquirer
  .prompt([
    {
      type: 'list',
      name: 'category',
      message: 'What category do you want to browse?',
      choices: [
        'food',
        'animals',
        'electronics',
      ]
    },
  ])
  .then(answers => {
        connection.query("SELECT * FROM products WHERE department_name=?",[answers.category], function (err, res) {
            if (err) console.log(err);
            // Log all results of the SELECT statement
            for (i=0;i<res.length;i++) {
                var prod = res[i].product_name;
                products.push(prod);
            } 
            prods();
        })

});
function prods () {
    inquirer
    .prompt(whichproduct)
    .then(answers => {
        console.log(answers);
          connection.query("SELECT * FROM products WHERE product_name=?",[answers.prod], function (err, res) {
              if (err) console.log(err);
              // Log all results of the SELECT statement
                  console.log(JSON.stringify(res));
          })
  });
  }; 