#!/bin/bash

#===================================
#You can change the following params
#===================================

#What is your email ? So others can contact you in case
VHOST_EMAIL=karel.sommer@ilabs.cz

#Your FQDN the server will be available on. Only for æsthetic purposes
VHOST_FQDN=overpass.ilabs.dev



#Which minute replication server should be used
REPLICATE_SERVER=http://planet.osm.org/replication/minute
#REPLICATE_SERVER=http://ftp.gwdg.de/pub/misc/openstreetmap/planet.openstreetmap.org/replication/minute/


#Where to fetch the planet file from ?
#ftp.gwdg.de is fast in europe. If you are network-far away, you can change this
#url. Keep in mind that the file is ~50GB
#PLANET_FILE="http://download.geofabrik.de/europe/czech-republic-latest.osm.bz2"
PLANET_FILE="http://download.geofabrik.de/europe/monaco-latest.osm.bz2"

#Planet file for zurich, switzerland, in case you want to have a small before before exporting the whole Earth.
#PLANET_FILE="https://s3.amazonaws.com/metro-extracts.mapzen.com/zurich_switzerland.osm.bz2"





#=====================================
#Don't change anything below this line
#=====================================

OPASS_MAIN=/Overpass-API
BINDIR=$OPASS_MAIN/src/bin
EXECDIR=$OPASS_MAIN/src
DBDIR=/overpass_DB

RULES_LOGFILE=$DBDIR/rules_loop.log

