#!/bin/sh
# SPDX-FileCopyrightText: 2023 John Romkey
#
# SPDX-License-Identifier: MIT

set -eu

# Override with: APP=/path/to/openscad ./generate.sh
: "${APP:=/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD}"

# Spike length in mm (matches garden-signs.scad default). Embedded in each STL name, e.g. parsley-spike90.stl
: "${SPIKE_HEIGHT:=90}"

if [ ! -x "$APP" ]; then
	echo "OpenSCAD not found or not executable: $APP" >&2
	echo "Set APP to your openscad (or openscad.com) binary." >&2
	exit 1
fi

mkdir -p stls

echo "[generate] batch start: SPIKE_HEIGHT=${SPIKE_HEIGHT}mm  APP=${APP}  cwd=$(pwd)" >&2

# usage: sign <output-slug> <display name> [extra -D flags...]
sign() {
	slug=$1
	name=$2
	shift 2
	echo "[generate] SPIKE_HEIGHT=${SPIKE_HEIGHT}mm  building stls/${slug}-spike${SPIKE_HEIGHT}.stl  (name=${name})" >&2
	"$APP" -o "stls/${slug}-spike${SPIKE_HEIGHT}.stl" \
		-D "name=\"${name}\"" \
		"$@" \
		-D "spike_height=${SPIKE_HEIGHT}" \
		garden-signs.scad
}

# --- Herbs ---
sign basil "Basil" -D 'scale=1.2'
sign bay "Bay" -D 'scale=1.5'
sign catnip "Catnip" -D 'scale=1.1'
sign chamomile "Chamomile" -D 'scale=.75'
sign chives "Chives" -D 'scale=1.1'
sign cilantro "Cilantro" -D 'scale=0.9'
sign dill "Dill" -D 'scale=1.2'
sign epazote "Epazote" -D 'scale=1'
sign lavender "Lavender" -D 'scale=.85'
sign lemon-balm "Lemon Balm" -D 'scale=.9'
sign lovage "Lovage" -D 'scale=1.1'
sign mint "Mint" -D 'scale=1.5'
sign oregano "Oregano" -D 'scale=0.88'
sign parsley "Parsley"
sign rosemary "Rosemary" -D 'scale=0.75'
sign sage "Sage" -D 'scale=1.5'
sign shiso "Shiso" -D 'scale=1.4'
sign sorrel "Sorrel" -D 'scale=1.1'
sign tarragon "Tarragon" -D 'scale=.9'
sign thyme "Thyme" -D 'scale=1.1'
sign winter-savory "Winter Savory" -D 'scale=.6'

# --- Greens / lettuce ---
sign arugula "Arugula"
sign collards "Collards" -D 'scale=1'
sign endive "Endive" -D 'scale=1.1'
sign flashy-trout "Flashy Trout" -D 'scale=0.6'
sign frisee "Frisee" -D 'scale=1.2'
sign kale "Kale" -D 'scale=1.1'
sign lettuce "Lettuce" -D 'scale=1'
sign mizuna "Mizuna" -D 'scale=1.1'
sign mustard-greens "Mustard Greens" -D 'scale=.55'
sign napa-cabbage "Napa Cabbage" -D 'scale=.55'
sign raddichio "Radicchio" -D 'scale=.75'
sign spinach "Spinach" -D 'scale=0.9'
sign swiss-chard "Swiss Chard" -D 'scale=.65'
sign tatsoi "Tatsoi" -D 'scale=1.2'
sign watercress "Watercress" -D 'scale=.7'

# --- Roots / alliums ---
sign beet "Beet" -D 'scale=1.3'
sign carrot "Carrot" -D 'scale=1'
sign celeriac "Celeriac" -D 'scale=.85'
sign daikon "Daikon" -D 'scale=1'
sign fennel "Fennel" -D 'scale=.9'
sign garlic "Garlic" -D 'scale=1.3'
sign kohlrabi "Kohlrabi" -D 'scale=.85'
sign leek "Leek" -D 'scale=1.4'
sign onion "Onion" -D 'scale=1.2'
sign parsnip "Parsnip" -D 'scale=1'
sign potato "Potato" -D 'scale=.9'
sign radish "Radish" -D 'scale=1'
sign rutabaga "Rutabaga" -D 'scale=.75'
sign scallion "Scallion" -D 'scale=1'
sign shallot "Shallot" -D 'scale=1'
sign sunchoke "Sunchoke" -D 'scale=.9'
sign sweet-potato "Sweet Potato" -D 'scale=.55'
sign turnip "Turnip" -D 'scale=1'

# --- Peppers ---
sign anaheim "Anaheim" -D 'scale=.9'
sign bell-pepper "Bell Pepper" -D 'scale=.65'
sign habanero "Habanero" -D 'scale=1'
sign jalapeno "Jalapeno" -D 'scale=.88'
sign poblano "Poblano" -D 'scale=.95'
sign serrano "Serrano" -D 'scale=1'

# --- Beans / peas ---
sign edamame "Edamame" -D 'scale=1'
sign green-bean "Green Bean" -D 'scale=.65'
sign peas "Peas" -D 'scale=1.4'
sign snap-peas "Snap Peas" -D 'scale=.65'
sign snow-peas "Snow Peas" -D 'scale=.65'
sign wax-bean "Wax Bean" -D 'scale=.75'

# --- Brassicas ---
sign bok-choy "Bok Choy" -D 'scale=.8'
sign broccoli "Broccoli" -D 'scale=.9'
sign brussels-sprouts "Brussels Sprouts" -D 'scale=.5'
sign cabbage "Cabbage" -D 'scale=.85'
sign cauliflower "Cauliflower" -D 'scale=.65'

# --- Nightshades ---
sign eggplant "Eggplant" -D 'scale=.7'
sign tomato "Tomato" -D 'scale=.85'

# --- Cucurbits / melons ---
sign butternut "Butternut Squash" -D 'scale=.5'
sign cantaloupe "Cantaloupe" -D 'scale=.6'
sign cucumber "Cucumber" -D 'scale=.75'
sign gourd "Gourd" -D 'scale=1.2'
sign honeydew "Honeydew" -D 'scale=.75'
sign pumpkin "Pumpkin" -D 'scale=.85'
sign summer-squash "Summer Squash" -D 'scale=.5'
sign watermelon "Watermelon" -D 'scale=.65'
sign zucchini "Zucchini" -D 'scale=.85'

# --- Grasses ---
sign corn "Corn" -D 'scale=.75'

# --- Stalks / perennial-ish ---
sign asparagus "Asparagus" -D 'scale=.55'
sign celery "Celery" -D 'scale=.75'
sign rhubarb "Rhubarb" -D 'scale=.75'

# --- Other ---
sign artichoke "Artichoke" -D 'scale=.75'
sign okra "Okra" -D 'scale=1.1'
