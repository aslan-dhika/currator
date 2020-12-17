#!/bin/bash

TGL=$(date +%Y%m%d)
WORKDIR=/opt/curator/
FILELOG=/opt/curator/curator.txt

cd $WORKDIR

curator --config $WORKDIR/config.yml $WORKDIR/action.yml

cat $FILELOG | mail -a $FILELOG -s 'Delete Indicies on log.pomona.id '$TGL' ' a@example.id

rm -rf $FILELOG

exit 0
