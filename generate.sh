#!/bin/sh

# SPDX-FileCopyrightText: 2023 John Romkey
#
# SPDX-License-Identifier: MIT

APP=/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD

$APP -o stls/parsley.stl -D 'name="Parsley"' garden-signs.scad
$APP -o stls/sage.stl -D 'name="Sage"' -D 'scale=1.5'  garden-signs.scad
$APP -o stls/rosemary.stl -D 'name="Rosemary"' -D 'scale=0.75'  garden-signs.scad
$APP -o stls/thyme.stl -D 'name="Thyme"' -D 'scale=1.1'  garden-signs.scad
$APP -o stls/oregano.stl -D 'name="Oregano"' -D 'scale=0.88'  garden-signs.scad
$APP -o stls/cilantro.stl -D 'name="Cilantro"' -D 'scale=0.9'  garden-signs.scad
$APP -o stls/chives.stl -D 'name="Chives"' -D 'scale=1.1'  garden-signs.scad
$APP -o stls/mint.stl -D 'name="Mint"' -D 'scale=1.5'  garden-signs.scad
$APP -o stls/shiso.stl -D 'name="Shiso"' -D 'scale=1.4'  garden-signs.scad
$APP -o stls/catnip.stl -D 'name="Catnip"' -D 'scale=1.1'  garden-signs.scad
$APP -o stls/tarragon.stl -D 'name="Tarragon"' -D 'scale=.9'  garden-signs.scad
$APP -o stls/lemon-balm.stl -D 'name="Lemon Balm"' -D 'scale=.9'  garden-signs.scad

$APP -o stls/lettuce.stl -D 'name="Lettuce"' -D 'scale=1'  garden-signs.scad
$APP -o stls/flashy-trout.stl -D 'name="Flashy Trout"' -D 'scale=0.6'  garden-signs.scad
$APP -o stls/spinach.stl -D 'name="Spinach"' -D 'scale=0.9'  garden-signs.scad
$APP -o stls/arugula.stl -D 'name="Arugula"' -D 'scale='  garden-signs.scad
$APP -o stls/watercress.stl -D 'name="Watercress"' -D 'scale=.7'  garden-signs.scad
$APP -o stls/raddichio.stl -D 'name="Raddichio"' -D 'scale=.75'  garden-signs.scad
$APP -o stls/endive.stl -D 'name="Endive"' -D 'scale=1.1'  garden-signs.scad
$APP -o stls/frisee.stl -D 'name="Frisee"' -D 'scale=1.2'  garden-signs.scad

$APP -o stls/carrot.stl -D 'name="Carrot"' -D 'scale=1'  garden-signs.scad
$APP -o stls/parsnip.stl -D 'name="Parsnip"' -D 'scale=1'  garden-signs.scad
$APP -o stls/radish.stl -D 'name="Radish"' -D 'scale=1'  garden-signs.scad
$APP -o stls/beet.stl -D 'name="Beet"' -D 'scale=1.3'  garden-signs.scad
$APP -o stls/onion.stl -D 'name="Onion"' -D 'scale=1.2'  garden-signs.scad
$APP -o stls/shallot.stl -D 'name="Shallot"' -D 'scale=1'  garden-signs.scad
$APP -o stls/scallion.stl -D 'name="Scallion"' -D 'scale=1'  garden-signs.scad
$APP -o stls/leek.stl -D 'name="Leek"' -D 'scale=1.4'  garden-signs.scad

$APP -o stls/jalapeno.stl -D 'name="Jalapeno"' -D 'scale=.88'  garden-signs.scad
$APP -o stls/poblano.stl -D 'name="Poblano"' -D 'scale=.95'  garden-signs.scad
$APP -o stls/anaheim.stl -D 'name="Anaheim"' -D 'scale=.9'  garden-signs.scad
$APP -o stls/bell-pepper.stl -D 'name="Bell Pepper"' -D 'scale=.65'  garden-signs.scad

$APP -o stls/green-bean.stl -D 'name="Green Bean"' -D 'scale=.65'  garden-signs.scad
$APP -o stls/wax-bean.stl -D 'name="Wax Bean"' -D 'scale=.75'  garden-signs.scad
$APP -o stls/peas.stl -D 'name="Peas"' -D 'scale=1.4'  garden-signs.scad
$APP -o stls/snow-peas.stl -D 'name="Snow Peas"' -D 'scale=.65'  garden-signs.scad

$APP -o stls/bok-choy.stl -D 'name="Bok Choy"' -D 'scale=.8'  garden-signs.scad
$APP -o stls/cauliflower.stl -D 'name="Cauliflower"' -D 'scale=.65'  garden-signs.scad
$APP -o stls/broccoli.stl -D 'name="Broccoli"' -D 'scale=.9' garden-signs.scad
$APP -o stls/cabbage.stl -D 'name="Cabbage"' -D 'scale=.85' garden-signs.scad

$APP -o stls/cucumber.stl -D 'name="Cucumber"' -D 'scale=.75'  garden-signs.scad
$APP -o stls/watermelon.stl -D 'name="Watermelon"' -D 'scale=.65'  garden-signs.scad
$APP -o stls/honeydew.stl -D 'name="Honeydew"' -D 'scale=.75'  garden-signs.scad
$APP -o stls/cantaloupe.stl -D 'name="Cantaloupe"' -D 'scale=.6'  garden-signs.scad
$APP -o stls/pumpkin.stl -D 'name="Pumpkin"' -D 'scale=.85'  garden-signs.scad
$APP -o stls/zucchini.stl -D 'name="Zucchini"' -D 'scale=.85'  garden-signs.scad
$APP -o stls/gourd.stl -D 'name="Gourd"' -D 'scale=1.2'  garden-signs.scad


#$APP -o stls/.stl -D 'name=""' -D 'scale='  garden-signs.scad
