const mysql = require('../config/mysql');
module.exports = (app) => {



   app.get('/', async (req, res, next) => {
      

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      let [popularStories] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `articles`.`article_likes`  DESC')
      db.end();

      // let popularStories =[
      //    {
      //       "img":"/img/bg-img/12.jpg",
      //       "category":"Finance",
      //       "title":"Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...",
      //       "imgLike":"/img/core-img/like.png",
      //       "likes":"999",
      //       "imgComments":"/img/core-img/chat.png",
      //       "comments":"13"
      //    },
      //    {
      //       "img":"/img/bg-img/13.jpg",
      //       "category":"Finance",
      //       "title":"Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...",
      //       "imgLike":"/img/core-img/like.png",
      //       "likes":"1",
      //       "imgComments":"/img/core-img/chat.png",
      //       "comments":"999"
      //    },
      //    {
      //       "img":"/img/bg-img/14.jpg",
      //       "category":"Finance",
      //       "title":"Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...",
      //       "imgLike":"/img/core-img/like.png",
      //       "likes":"524",
      //       "imgComments":"/img/core-img/chat.png",
      //       "comments":"153"
      //    },
      //    {
      //       "img":"/img/bg-img/15.jpg",
      //       "category":"Finance",
      //       "title":"Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...",
      //       "imgLike":"/img/core-img/like.png",
      //       "likes":"-161",
      //       "imgComments":"/img/core-img/chat.png",
      //       "comments":"20"
      //    },
      // ]
      let videos = [
         {
            "imgVideo":"/img/bg-img/video1.jpg",
            "linkVideo":"https://www.youtube.com/watch?v=5BQr-j3BBzU"
         },
         {
            "imgVideo":"/img/bg-img/video2.jpg",
            "linkVideo":"https://www.youtube.com/watch?v=5BQr-j3BBzU"
         },
         {
            "imgVideo":"/img/bg-img/video3.jpg",
            "linkVideo":"https://www.youtube.com/watch?v=5BQr-j3BBzU"
         },
      ]

      res.render('home',{
         "categories": categories,
         "popularStories": popularStories,
         "videos": videos,
         'dateTest':"2019-10-21 18:34",
         'dateTest2':"2019-9-15 09:57"
      })
   });

   
   
   app.get('/categories-post', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      db.end();

      res.render('categories-post',{
         "categories": categories,
         'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
      });
   });
   app.get('/categories-post/:category_id', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      let [articles] = await db.execute('SELECT * FROM articles WHERE fk_category_id = ?', [req.params.category_id]);
      db.end();

      res.render('categories-post',{
         "categories": categories,
         "articles": articles,
         'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
      });
      // her kan alle kategoriens artikler hentes osv...
   });


   app.get('/contact', async (req, res, next) => {

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      db.end();

      res.render('contact',{
         "categories": categories,
      });
   });

   app.get('/single-post', async (req, res, next) => {

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      db.end();
      
      res.render('single-post',{
         "categories": categories,
         'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
         'dateTest4':"1991-03-19 19:16",
         'dateTest5':"2019-06-04 05:16"
      })
   });

   app.get('/about', async (req, res, next) => {

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      db.end();

      let employees = [
         {
            "name":"Employee 101",
            "position":"Editor",
            "imgSrc":"/img/bg-img/t7.jpg"
         },
         {
            "name":"Employee 102",
            "position":"Super Editor",
            "imgSrc":"/img/bg-img/t2.jpg"
         },
         {
            "name":"Employee 103",
            "position":"Ultra Editor",
            "imgSrc":"/img/bg-img/t3.jpg"
         },
         {
            "name":"Employee 104",
            "position":"Omega Editor",
            "imgSrc":"/img/bg-img/t4.jpg"
         },
         {
            "name":"Employee 105",
            "position":"Senior Editor",
            "imgSrc":"/img/bg-img/t5.jpg"
         },
         {
            "name":"Employee 106",
            "position":"Super Ultra Editor",
            "imgSrc":"/img/bg-img/t6.jpg"
         },
         {
            "name":"Employee 107",
            "position":"Super Ultra Omega Editor",
            "imgSrc":"/img/bg-img/t1.jpg"
         },
         {
            "name":"Employee 108",
            "position":"Super Ultra Omega Senior Editor",
            "imgSrc":"/img/bg-img/t8.jpg"
         },
      ]
      res.render('about',{
         "categories": categories,
         "currentEmployees":employees
      });
   });



   app.get('/', async (req, res, next) => {
      let now = new Date('2019-01-14 07:00:14');
      console.log(app.locals.dateAndTime.format(now, 'h:mm A | MMMM DD'));
      res.render('');
   });



};