// Article page

Router.route('/article', function () {
	this.render('Article')
},{
	name: 'article.index',
});


Router.route('/article/show/', function () {
	var query = this.params.query;
	console.log(query);
	this.render('ArticleShow')
},{
	name: 'article.show',
});
