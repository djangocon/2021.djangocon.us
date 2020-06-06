
# Replace DOMAIN with your Netlify link if our templates are not deployed yet.
DOMAIN = https://djangocon.us
IMAGE_SIZE = 1024x512
# IMAGE_SIZE = 1400x700

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: test
test:
	bundle exec rake test

.PHONY: social
social:
	@echo "check out... https://github.com/sindresorhus/pageres-cli"

	@pageres $(DOMAIN)/presenters/adolfo-fitoria/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/adolfo-fitoria
	@pageres $(DOMAIN)/presenters/andrew-godwin/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/andrew-godwin
	@pageres $(DOMAIN)/presenters/andrew-knight/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/andrew-knight
	@pageres $(DOMAIN)/presenters/blythe-j-dunham/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/j-dunham
	@pageres $(DOMAIN)/presenters/cara-borenstein/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/cara-borenstein
	@pageres $(DOMAIN)/presenters/carlos-martinez/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/carlos-martinez
	@pageres $(DOMAIN)/presenters/carlton-gibson/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/carlton-gibson
	@pageres $(DOMAIN)/presenters/casey-faist/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/casey-faist
	@pageres $(DOMAIN)/presenters/chris-wilcox/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/chris-wilcox
	@pageres $(DOMAIN)/presenters/dan-taylor/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/dan-taylor
	@pageres $(DOMAIN)/presenters/dane-hillard/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/dane-hillard
	@pageres $(DOMAIN)/presenters/daniele-procida/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/daniele-procida
	@pageres $(DOMAIN)/presenters/dustin-ingram/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/dustin-ingram
	@pageres $(DOMAIN)/presenters/eleanor-stribling/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/eleanor-stribling
	@pageres $(DOMAIN)/presenters/erin-mullaney/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/erin-mullaney
	@pageres $(DOMAIN)/presenters/felipe-lee/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/felipe-lee
	@pageres $(DOMAIN)/presenters/jacinda-shelly/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/jacinda-shelly
	@pageres $(DOMAIN)/presenters/james-bennett/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/james-bennett
	@pageres $(DOMAIN)/presenters/juan-saavedra/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/juan-saavedra
	@pageres $(DOMAIN)/presenters/karen-miller/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/karen-miller
	@pageres $(DOMAIN)/presenters/kojo-idrissa/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/kojo-idrissa
	@pageres $(DOMAIN)/presenters/louise-grandjonc/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/louise-grandjonc
	@pageres $(DOMAIN)/presenters/luan-fonseca/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/luan-fonseca
	@pageres $(DOMAIN)/presenters/luca-bezerra/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/luca-bezerra
	@pageres $(DOMAIN)/presenters/melanie-crutchfield/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/melanie-crutchfield
	@pageres $(DOMAIN)/presenters/mike-hansen/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/mike-hansen
	@pageres $(DOMAIN)/presenters/nicole-zuckerman/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/nicole-zuckerman
	@pageres $(DOMAIN)/presenters/nicolle-cysneiros/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/nicolle-cysneiros
	@pageres $(DOMAIN)/presenters/nina-zakharenko/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/nina-zakharenko
	@pageres $(DOMAIN)/presenters/noah-kantrowitz/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/noah-kantrowitz
	@pageres $(DOMAIN)/presenters/pablo-garcia/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/pablo-garcia
	@pageres $(DOMAIN)/presenters/peter-baumgartner/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/peter-baumgartner
	@pageres $(DOMAIN)/presenters/renato-oliveira/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/renato-oliveira
	@pageres $(DOMAIN)/presenters/russell-keith-magee/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/russell-keith-magee
	@pageres $(DOMAIN)/presenters/ryan-sullivan/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/ryan-sullivan
	@pageres $(DOMAIN)/presenters/timothy-allen/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/timothy-allen
	@pageres $(DOMAIN)/presenters/tom-dyson/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/tom-dyson
	@pageres $(DOMAIN)/presenters/trey-hunner/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/trey-hunner
	@pageres $(DOMAIN)/presenters/vanessa-barreiros/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/vanessa-barreiros
	@pageres $(DOMAIN)/presenters/veronica-hanus/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/veronica-hanus
	@pageres $(DOMAIN)/presenters/william-s-vincent/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/s-vincent

	@ # Keynotes
	@pageres $(DOMAIN)/presenters/matt-mitchell/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/matt-mitchell
	@pageres $(DOMAIN)/presenters/jessica-rose/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/jessica-rose
	@pageres $(DOMAIN)/presenters/amber-brown/ $(IMAGE_SIZE) \
		--overwrite \
		--filename=static/img/social/presenters/amber-brown
