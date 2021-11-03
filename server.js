const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

const port = 3000;
const dbConnect = require('./connection/dbConnect');
//const routes = require('./routes/routes')(app);

app.use(cors());
app.use(bodyParser.urlencoded({ extended : false }))
app.use(bodyParser.json())
app.use(express.json());
// app.use(express.static('public'));

//localhost:3000/api  
app.post('/api', (req, res) => {
    let body = req.body;
    console.log(body);
    res.sendStatus(200);
})

const server = app.listen(port,
    () => {
        console.log('Listening at port %s',port);
        dbConnect;
    });


