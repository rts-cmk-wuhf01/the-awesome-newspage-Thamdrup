const mysql = require('../config/mysql');
module.exports = (app) => {

    app.get("/admin-categories", async (req, res, next) => {
        // her skal alle kategorier hentes og sendes til template filen.....
        res.render('admin-categories',{

        })
      });
    
      app.get("/admin-categories/edit", async (req, res, next) => {
        // her skal alle kategorier hentes og sendes til template filen.....
        res.send('whateva',{

        })
      });

}