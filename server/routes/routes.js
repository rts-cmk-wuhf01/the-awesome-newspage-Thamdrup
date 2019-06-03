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
         "latestProducts": products,
         'dateTest':"2019-04-11"
      })
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



   app.get('/', (req, res, next) => {
      let now = new Date('2019-01-14 07:00:14');
      console.log(app.locals.dateAndTime.format(now, 'h:mm A | MMMM DD'));
      res.render('');
   });



};