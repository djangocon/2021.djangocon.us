
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
	@pageres $(DOMAIN)/presenters/alan-una-larisa/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/alan-una-larisa
	@pageres $(DOMAIN)/presenters/andrew-knight/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/replace/andrew-knight
	@pageres $(DOMAIN)/presenters/benjamin-zags-zagorsky/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/benjamin-zags-zagorsky
	@pageres $(DOMAIN)/presenters/brendan-wee/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/brendan-wee
	@pageres $(DOMAIN)/presenters/cagil-ulusahin/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/cagil-ulusahin
	@pageres $(DOMAIN)/presenters/calvin-hendryx-parker/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/calvin-hendryx-parker
	@pageres $(DOMAIN)/presenters/carson-gross/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/carson-gross
	@pageres $(DOMAIN)/presenters/cory-zue/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/cory-zue
	@pageres $(DOMAIN)/presenters/dan-palmer/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/dan-palmer
	@pageres $(DOMAIN)/presenters/dane-hillard/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/dane-hillard
	@pageres $(DOMAIN)/presenters/dmitry-vinnik/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/dmitry-vinnik
	@pageres $(DOMAIN)/presenters/drishti-jain/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/drishti-jain
	@pageres $(DOMAIN)/presenters/gajendra-deshpande/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/gajendra-deshpande
	@pageres $(DOMAIN)/presenters/itamar-turner-trauring/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/itamar-turner-trauring
	@pageres $(DOMAIN)/presenters/jack-linke/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/jack-linke
	@pageres $(DOMAIN)/presenters/jeremy-bowman/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/jeremy-bowman
	@pageres $(DOMAIN)/presenters/josue-balandrano-coronel/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/josue-balandrano-coronel
	@pageres $(DOMAIN)/presenters/jyotika-singh/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/jyotika-singh
	@pageres $(DOMAIN)/presenters/katie-mclaughlin/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/katie-mclaughlin
	@pageres $(DOMAIN)/presenters/maari-tamm/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/maari-tamm
	@pageres $(DOMAIN)/presenters/madelaine-boyd/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/madelaine-boyd
	@pageres $(DOMAIN)/presenters/markus-holtermann/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/markus-holtermann
	@pageres $(DOMAIN)/presenters/rachele-ditullio/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/rachele-ditullio
	@pageres $(DOMAIN)/presenters/ramon-huidobro/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/ramon-huidobro
	@pageres $(DOMAIN)/presenters/rodrigo-girao-serrao/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/rodrigo-girao-serrao
	@pageres $(DOMAIN)/presenters/tarun-garg/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/tarun-garg
	@pageres $(DOMAIN)/presenters/thibaud-colas/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/thibaud-colas
	@pageres $(DOMAIN)/presenters/thomas-guttler/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/thomas-guttler
	@pageres $(DOMAIN)/presenters/tidjani-dia/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/tidjani-dia
	@pageres $(DOMAIN)/presenters/tyrel-denison/ $(IMAGE_SIZE) --overwrite --filename=static/img/social/presenters/tyrel-denison
