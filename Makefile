
.PHONY: build
build:
	bundle exec jekyll build

.PHONY: test
test:
	bundle exec rake test

.PHONY: social
social:
	@# check out... https://github.com/sindresorhus/pageres-cli
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/adolfo-fitoria/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/adolfo-fitoria
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/andrew-godwin/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/andrew-godwin
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/andrew-knight/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/andrew-knight
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/blythe-j-dunham/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/j-dunham
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/cara-borenstein/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/cara-borenstein
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/carlos-martinez/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/carlos-martinez
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/carlton-gibson/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/carlton-gibson
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/casey-faist/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/casey-faist
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/chris-wilcox/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/chris-wilcox
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/dan-taylor/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/dan-taylor
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/dane-hillard/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/dane-hillard
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/daniele-procida/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/daniele-procida
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/dustin-ingram/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/dustin-ingram
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/eleanor-stribling/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/eleanor-stribling
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/erin-mullaney/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/erin-mullaney
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/felipe-lee/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/felipe-lee
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/jacinda-shelly/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/jacinda-shelly
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/james-bennett/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/james-bennett
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/juan-saavedra/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/juan-saavedra
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/karen-miller/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/karen-miller
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/kojo-idrissa/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/kojo-idrissa
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/louise-grandjonc/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/louise-grandjonc
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/luan-fonseca/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/luan-fonseca
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/luca-bezerra/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/luca-bezerra
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/melanie-crutchfield/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/melanie-crutchfield
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/mike-hansen/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/mike-hansen
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/nicole-zuckerman/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/nicole-zuckerman
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/nicolle-cysneiros/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/nicolle-cysneiros
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/nina-zakharenko/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/nina-zakharenko
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/noah-kantrowitz/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/noah-kantrowitz
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/pablo-garcia/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/pablo-garcia
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/peter-baumgartner/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/peter-baumgartner
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/renato-oliveira/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/renato-oliveira
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/russell-keith-magee/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/keith-magee
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/ryan-sullivan/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/ryan-sullivan
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/timothy-allen/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/timothy-allen
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/tom-dyson/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/tom-dyson
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/trey-hunner/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/trey-hunner
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/vanessa-barreiros/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/vanessa-barreiros
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/veronica-hanus/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/veronica-hanus
	@pageres https://deploy-preview-104--djangoconus2019.netlify.com/presenters/william-s-vincent/ 1200x800 \
		--overwrite \
		--filename=static/img/social/presenters/s-vincent
