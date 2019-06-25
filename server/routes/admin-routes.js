const mysql = require('../config/mysql');
module.exports = (app) => {

    app.get("/admin-categories", async (req, res, next) => {
        // her skal alle kategorier hentes og sendes til template filen....
        let db = await mysql.connect();
        let [categories] = await db.execute('SELECT * FROM categories');
        db.end();
        res.render('admin-categories',{
            "categories": categories
        })
      });
    
      app.get("/admin-categories/edit", async (req, res, next) => {
        // her skal alle kategorier hentes og sendes til template filen.....


        res.send('whateva',{

        })
      });




      app.post("/admin-categories", async (req, res, next) => {
        // her skal vi modtage form data og indsætte det i databasen
        // send bruger tilbage til kategori admin listen
      });

}