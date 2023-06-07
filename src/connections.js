const mysql2 = require('mysql2');
const dotenv = require('dotenv');
dotenv.config(); 

const db = mysql2.createConnection(
    {
        host: process.env.HOST_NAME, 
        user: 'root',
        password: process.env.PASSWORD_KEY, 
        database: 'employee_tracker'
    },
    console.log(`connected to employee_tracker db`)
)

module.exports = db; 