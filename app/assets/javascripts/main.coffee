$(document).on "turbolinks:load page:fetch ready", ()->
	componentHandler.upgradeDom();