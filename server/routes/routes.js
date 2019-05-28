module.exports = (app) => {

   app.get('/', (req, res, next) => {
      res.render('home');
   });

   app.get('/categories-post', (req, res, next) => {
      res.render('categories-post');
   });

};