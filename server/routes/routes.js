module.exports = (app) => {

   app.get('/', (req, res, next) => {

      let products = [
         {
            "name": "Product1",
            "price": "100"
         },
         {
            "name": "Product2",
            "price": "200"
         }
      ]

      res.render('home',{
         "latestProducts": products
      });
      
   });

   app.get('/categories-post', (req, res, next) => {
      res.render('categories-post');
   });

   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

   app.get('/single-post', (req, res, next) => {
      res.render('single-post');
   });

   app.get('/about', (req, res, next) => {
      res.render('about');
   });
};