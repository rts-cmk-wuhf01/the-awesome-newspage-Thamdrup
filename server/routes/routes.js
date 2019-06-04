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
         'dateTest':"2019-10-21 18:34",
         'dateTest2':"2019-9-15 09:57"
      })
   });

   app.get('/categories-post', (req, res, next) => {
      res.render('categories-post',{
         'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
      });
   });

   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

   app.get('/single-post', (req, res, next) => {
      res.render('single-post',{
      'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
         'dateTest4':"1991-03-19 19:16",
         'dateTest5':"2019-06-04 05:16"
      })
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