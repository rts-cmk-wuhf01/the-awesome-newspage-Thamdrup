## Emner

- Node JS + ExpressJS (Server)
- Routes (Hnadlinger vi kan bede serveren om at udføre)
	-- res.send() giver et svar til browseren (client)

- View Engines (EJS) - Arbejder med HTML
	-- Render: red.render()
	-- Partials (f.eks Nav, footer, sidebar)
	<%%>  (server tags)
	<%= title %>   (udksirver variablen)

- MySQL
	-- SQL (Sproget)
	-- example: SELECT * FROM articles

- Bodyparser
	-- req.body.email
	^ email, kræver name-attribut på <input>, <textarea>, <select> feltet

- app.get("/articles/:category_id")
- req.params.category_id
- res.render ("fil",{
	title: "Whatever",
	pris: 100
}) 
- view.fisk.ejs

når vi er i gang med at udskrive f.eks artikler fra en database så er det kolonne-nave i databasen der bestemmer, hvad der skal stå efter "article." (efter punktummet)


})


<%= article.article_id%>