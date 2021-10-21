set dotenv-load := false

# Replace DOMAIN with your Netlify link if our templates are not deployed yet.
DOMAIN := "https://2021.djangocon.us"

IMAGE_SIZE := "1024x512"
# IMAGE_SIZE = "1400x700"

@_default:
    just --list

@build:
    docker-compose build

@fmt:
    just --fmt --unstable

@test:
    bundle exec rake test

@social:
    python bin/screenshots.py
    # echo "check out... https://github.com/sindresorhus/pageres-cli"
    # -npx pageres {{ DOMAIN }}/presenters/adolfo-fitoria/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/adolfo-fitoria
    # -npx pageres {{ DOMAIN }}/presenters/alan-una-larisa/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/alan-una-larisa
    # -npx pageres {{ DOMAIN }}/presenters/aldan-creo/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/aldan-creo
    # -npx pageres {{ DOMAIN }}/presenters/andrew-knight/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/andrew-knight
    # -npx pageres {{ DOMAIN }}/presenters/anna-makarudze/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/anna-makarudze
    # -npx pageres {{ DOMAIN }}/presenters/benjamin-zags-zagorsky/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/benjamin-zags-zagorsky
    # -npx pageres {{ DOMAIN }}/presenters/brendan-wee/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/brendan-wee
    # -npx pageres {{ DOMAIN }}/presenters/cagil-ulusahin/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/cagil-ulusahin
    # -npx pageres {{ DOMAIN }}/presenters/calvin-hendryx-parker/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/calvin-hendryx-parker
    # -npx pageres {{ DOMAIN }}/presenters/carson-gross/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/carson-gross
    # -npx pageres {{ DOMAIN }}/presenters/catherine-holmes/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/catherine-holmes
    # -npx pageres {{ DOMAIN }}/presenters/cory-zue/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/cory-zue
    # -npx pageres {{ DOMAIN }}/presenters/dan-palmer/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/dan-palmer
    # -npx pageres {{ DOMAIN }}/presenters/dane-hillard/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/dane-hillard
    # -npx pageres {{ DOMAIN }}/presenters/dmitry-vinnik/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/dmitry-vinnik
    # -npx pageres {{ DOMAIN }}/presenters/drew-winstel/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/drew-winstel
    # -npx pageres {{ DOMAIN }}/presenters/drishti-jain/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/drishti-jain
    # -npx pageres {{ DOMAIN }}/presenters/gajendra-deshpande/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/gajendra-deshpande
    # -npx pageres {{ DOMAIN }}/presenters/itamar-turner-trauring/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/itamar-turner-trauring
    # -npx pageres {{ DOMAIN }}/presenters/jack-linke/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/jack-linke
    # -npx pageres {{ DOMAIN }}/presenters/jeremy-bowman/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/jeremy-bowman
    # -npx pageres {{ DOMAIN }}/presenters/jeremy-stretch/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/jeremy-stretch
    # -npx pageres {{ DOMAIN }}/presenters/josue-balandrano-coronel/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/josue-balandrano-coronel
    # -npx pageres {{ DOMAIN }}/presenters/jyotika-singh/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/jyotika-singh
    # -npx pageres {{ DOMAIN }}/presenters/katherine-michel/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/katherine-michel
    # -npx pageres {{ DOMAIN }}/presenters/katia-lira/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/katia-lira
    # -npx pageres {{ DOMAIN }}/presenters/katie-mclaughlin/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/katie-mclaughlin
    # -npx pageres {{ DOMAIN }}/presenters/kojo-idrissa/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/kojo-idrissa
    # -npx pageres {{ DOMAIN }}/presenters/maari-tamm/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/maari-tamm
    # -npx pageres {{ DOMAIN }}/presenters/madelaine-boyd/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/madelaine-boyd
    # -npx pageres {{ DOMAIN }}/presenters/markus-holtermann/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/markus-holtermann
    # -npx pageres {{ DOMAIN }}/presenters/rachele-ditullio/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/rachele-ditullio
    # -npx pageres {{ DOMAIN }}/presenters/ramon-huidobro/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/ramon-huidobro
    # -npx pageres {{ DOMAIN }}/presenters/rana-ransom/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/rana-ransom
    # -npx pageres {{ DOMAIN }}/presenters/rodrigo-girao-serrao/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/rodrigo-girao-serrao
    # -npx pageres {{ DOMAIN }}/presenters/tarun-garg/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/tarun-garg
    # -npx pageres {{ DOMAIN }}/presenters/thibaud-colas/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/thibaud-colas
    # -npx pageres {{ DOMAIN }}/presenters/thomas-guttler/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/thomas-guttler
    # -npx pageres {{ DOMAIN }}/presenters/tidjani-dia/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/tidjani-dia
    # -npx pageres {{ DOMAIN }}/presenters/tyrel-denison/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/tyrel-denison
    # -npx pageres {{ DOMAIN }}/presenters/wes-kendall/ {{ IMAGE_SIZE }} --overwrite --filename=static/img/social/presenters/wes-kendall
