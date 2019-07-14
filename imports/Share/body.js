import './header.html'
import './footer.html'
import './TopSroll.html'

Template.TopSroll.events({
	'click #goTop': function() {
        $("html, body").animate({scrollTop: 0}, 1000);
  	},
});