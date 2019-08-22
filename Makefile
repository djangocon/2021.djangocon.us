
.PHONY: build
build:
	bundle exec jekyll build

.PHONY: test
test:
	bundle exec rake test

.PHONY: social
social:

	@# check out... https://github.com/sindresorhus/pageres-cli
	@pageres https://2019.djangocon.us/presenters/adolfo-fitoria/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/adolfo-fitoria
	@pageres https://2019.djangocon.us/presenters/andrew-godwin/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/andrew-godwin
	@pageres https://2019.djangocon.us/presenters/andrew-knight/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/andrew-knight
	@pageres https://2019.djangocon.us/presenters/blythe-j-dunham/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/j-dunham
	@pageres https://2019.djangocon.us/presenters/cara-borenstein/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/cara-borenstein
	@pageres https://2019.djangocon.us/presenters/carlos-martinez/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/carlos-martinez
	@pageres https://2019.djangocon.us/presenters/carlton-gibson/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/carlton-gibson
	@pageres https://2019.djangocon.us/presenters/casey-faist/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/casey-faist
	@pageres https://2019.djangocon.us/presenters/chris-wilcox/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/chris-wilcox
	@pageres https://2019.djangocon.us/presenters/dan-taylor/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/dan-taylor
	@pageres https://2019.djangocon.us/presenters/dane-hillard/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/dane-hillard
	@pageres https://2019.djangocon.us/presenters/daniele-procida/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/daniele-procida
	@pageres https://2019.djangocon.us/presenters/dustin-ingram/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/dustin-ingram
	@pageres https://2019.djangocon.us/presenters/eleanor-stribling/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/eleanor-stribling
	@pageres https://2019.djangocon.us/presenters/erin-mullaney/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/erin-mullaney
	@pageres https://2019.djangocon.us/presenters/felipe-lee/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/felipe-lee
	@pageres https://2019.djangocon.us/presenters/jacinda-shelly/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/jacinda-shelly
	@pageres https://2019.djangocon.us/presenters/james-bennett/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/james-bennett
	@pageres https://2019.djangocon.us/presenters/juan-saavedra/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/juan-saavedra
	@pageres https://2019.djangocon.us/presenters/karen-miller/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/karen-miller
	@pageres https://2019.djangocon.us/presenters/kojo-idrissa/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/kojo-idrissa
	@pageres https://2019.djangocon.us/presenters/louise-grandjonc/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/louise-grandjonc
	@pageres https://2019.djangocon.us/presenters/luan-fonseca/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/luan-fonseca
	@pageres https://2019.djangocon.us/presenters/luca-bezerra/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/luca-bezerra
	@pageres https://2019.djangocon.us/presenters/melanie-crutchfield/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/melanie-crutchfield
	@pageres https://2019.djangocon.us/presenters/mike-hansen/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/mike-hansen
	@pageres https://2019.djangocon.us/presenters/nicole-zuckerman/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/nicole-zuckerman
	@pageres https://2019.djangocon.us/presenters/nicolle-cysneiros/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/nicolle-cysneiros
	@pageres https://2019.djangocon.us/presenters/nina-zakharenko/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/nina-zakharenko
	@pageres https://2019.djangocon.us/presenters/noah-kantrowitz/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/noah-kantrowitz
	@pageres https://2019.djangocon.us/presenters/pablo-garcia/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/pablo-garcia
	@pageres https://2019.djangocon.us/presenters/peter-baumgartner/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/peter-baumgartner
	@pageres https://2019.djangocon.us/presenters/renato-oliveira/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/renato-oliveira
	@pageres https://2019.djangocon.us/presenters/russell-keith-magee/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/russell-keith-magee
	@pageres https://2019.djangocon.us/presenters/ryan-sullivan/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/ryan-sullivan
	@pageres https://2019.djangocon.us/presenters/timothy-allen/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/timothy-allen
	@pageres https://2019.djangocon.us/presenters/tom-dyson/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/tom-dyson
	@pageres https://2019.djangocon.us/presenters/trey-hunner/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/trey-hunner
	@pageres https://2019.djangocon.us/presenters/vanessa-barreiros/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/vanessa-barreiros
	@pageres https://2019.djangocon.us/presenters/veronica-hanus/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/veronica-hanus
	@pageres https://2019.djangocon.us/presenters/william-s-vincent/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/s-vincent

	@ # Keynotes
	@pageres https://2019.djangocon.us/presenters/matt-mitchell/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/matt-mitchell
	@pageres https://2019.djangocon.us/presenters/jessica-rose/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/jessica-rose
	@pageres https://2019.djangocon.us/presenters/amber-brown/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/amber-brown
