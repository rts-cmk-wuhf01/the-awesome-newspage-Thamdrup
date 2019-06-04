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

      let employees = [
         {
            "name":"Employee 101",
            "position":"Editor",
            "imgSrc":"img/bg-img/t7.jpg"
         },
         {
            "name":"Employee 102",
            "position":"Super Editor",
            "imgSrc":"img/bg-img/t2.jpg"
         },
         {
            "name":"Employee 103",
            "position":"Ultra Editor",
            "imgSrc":"img/bg-img/t3.jpg"
         },
         {
            "name":"Employee 104",
            "position":"Omega Editor",
            "imgSrc":"img/bg-img/t4.jpg"
         },
         {
            "name":"Employee 105",
            "position":"Senior Editor",
            "imgSrc":"img/bg-img/t5.jpg"
         },
         {
            "name":"Employee 106",
            "position":"Super Ultra Editor",
            "imgSrc":"img/bg-img/t6.jpg"
         },
         {
            "name":"Employee 107",
            "position":"Super Ultra Omega Editor",
            "imgSrc":"img/bg-img/t1.jpg"
         },
         {
            "name":"Employee 108",
            "position":"Super Ultra Omega Senior Editor",
            "imgSrc":"img/bg-img/t8.jpg"
         },
      ]
      res.render('about',{
         "currentEmployees":employees
      });
   });



   app.get('/', (req, res, next) => {
      let now = new Date('2019-01-14 07:00:14');
      console.log(app.locals.dateAndTime.format(now, 'h:mm A | MMMM DD'));
      res.render('');
   });



};