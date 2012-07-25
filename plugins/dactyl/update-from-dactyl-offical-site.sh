#!/bin/sh

plugin_url_list='
http://5digits.org/plugins/aardvark-dev.js
http://5digits.org/plugins/browser-improvements-dev.js
http://5digits.org/plugins/curl-dev.js
#http://5digits.org/plugins/fix-focus-dev.js
http://5digits.org/plugins/flashblock-dev.js
http://5digits.org/plugins/http-headers-dev.js
http://5digits.org/plugins/jQuery-dev.js
http://5digits.org/plugins/jscompletion-dev.js
#http://5digits.org/plugins/noscript-dev.js
http://5digits.org/plugins/tab-options-dev.js
http://5digits.org/plugins/useragent-dev.js
http://5digits.org/plugins/xpcom-dev.js
'

for plugin_url in $plugin_url_list; do
    plugin_name=${plugin_url##*/}
    if echo $plugin_url | grep -q '^#'; then echo "xx skip $plugin_name"; continue; fi
    echo ">> updating  $plugin_name"
    rm -f $plugin_name
    wget -q -O $plugin_name $plugin_url && echo "update $plugin_name succeed." || echo "*** download $plugin_name failed." &
done
