const mysql = require('../config/mysql');
module.exports = (app) => {



   app.get('/', async (req, res, next) => {

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      let [popularStories] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `articles`.`article_likes`  DESC LIMIT 4');
      let [popularStoriesInfo] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `articles`.`article_likes`  DESC LIMIT 4');
      let [editorsPickPostAreas] = await db.execute ('SELECT * FROM `articles` ORDER BY `article_postdate` DESC LIMIT 6');
      let [singleFeaturedPost] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `article_postdate` DESC LIMIT 6');
      let [contact] = await db.execute ('SELECT * FROM `contact`');
      db.end();


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
         "popularStoriesInfo": popularStoriesInfo,
         "editorsPickPostAreas": editorsPickPostAreas,
         "singleFeaturedPost": singleFeaturedPost,
         "videos": videos,
         "contact": contact,
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
      let [articles] = await db.execute('SELECT * FROM articles INNER JOIN authors ON author_id = fk_author_id INNER JOIN categories ON category_id = fk_category_id WHERE fk_category_id = ?', [req.params.category_id]);
      let [singleFeaturedPost] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `article_postdate` DESC LIMIT 6');
      let [popularStoriesInfo] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `articles`.`article_likes`  DESC LIMIT 4');
      let [comments] = await db.execute ('SELECT * FROM `comments` INNER JOIN users ON user_id = fk_user_id ORDER BY `fk_article_id` ASC LIMIT 4');
      db.end();

      res.render('categories-post',{
         "categories": categories,
         "articles": articles,
         "singleFeaturedPost" : singleFeaturedPost,
         "popularStoriesInfo": popularStoriesInfo,
         "comments" : comments,
         'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
      });
      // her kan alle kategoriens artikler hentes osv...
   });



   app.get('/single-post/:article_id', async (req, res, next) => {

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      let [singleFeaturedPost] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `article_postdate` DESC LIMIT 6');
      let [popularStoriesInfo] = await db.execute ('SELECT * FROM `articles` INNER JOIN categories ON category_id = fk_category_id ORDER BY `articles`.`article_likes`  DESC LIMIT 4');
      let [comments] = await db.execute ('SELECT * FROM `comments` INNER JOIN users ON user_id = fk_user_id ORDER BY `fk_article_id` ASC LIMIT 4');
      let [article] = await db.execute('SELECT * FROM articles INNER JOIN authors ON author_id = fk_author_id INNER JOIN categories ON category_id = fk_category_id WHERE article_id = ?', [req.params.article_id]);
      db.end();
      
      res.render('single-post',{
         "categories": categories,
         "singleFeaturedPost" : singleFeaturedPost,
         "popularStoriesInfo": popularStoriesInfo,
         "comments" : comments,
         "article" : article[0],
         'dateTest':"2019-07-16 14:19",
         'dateTest2':"2019-06-10 13:42",
         'dateTest3':"2019-01-01 11:11",
         'dateTest4':"1991-03-19 19:16",
         'dateTest5':"2019-06-04 05:16"
      })
   });


   app.get('/contact', async (req, res, next) => {

      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      db.end();

      res.render('contact',{
         "categories": categories,
      });
   });
   app.post('/contact', (req, res, next) => {
      
      let name = req.body.name;
      let email = req.body.email;
      let subject = req.body.subject;
      let message = req.body.message;

      let return_message = [];
      if (name == undefined || name == '') {
         return_message.push('Navn mangler');
         return;
      }
      if (email == undefined || email == '') {
         return_message.push('Email mangler');
         return;
      }
      if (subject == undefined || subject == '') {
         return_message.push('Emne mangler');
         return;
      }
      if (message == undefined || message == '') {
         return_message.push('Beskedteksten mangler');
         return;
      }

      db.execute('INSERT INTO contact_messages SET name = ?, email = ?, subject = ?, message = ?', [value1, value2, value3]);
      res.send(req.body);
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














   app.get('/fisk/:amount/:type', async (req, res, next) => {
   
   let fiskData = {
      amount: req.params.amount,
      type : req.params.type
   }
   
      res.render('fisk',{
         "fiskData": fiskData
      });
   });












   app.get('/', async (req, res, next) => {
      let now = new Date('2019-01-14 07:00:14');
      console.log(app.locals.dateAndTime.format(now, 'h:mm A | MMMM DD'));
      res.render('');
   });

};