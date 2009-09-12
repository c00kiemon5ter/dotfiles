#!/bin/bash
# Openbox Pipe Menu for xcompmgr
# Written for CrunchBang Linux <http://crunchbang.org/projects/linux/>
# by Philip Newborough (aka corenominal) <mail@philipnewborough.co.uk>

# Set xcompmgr command options
#EXEC='xcompmgr -c -t-5 -l-5 -r4.2 -o.55' #basic
#EXEC='xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D6' #more effects
#EXEC='xcompmgr -cCfF'
EXEC="xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D4 -m.85"
# Toggle compositing. Call with "myxcompmgr --startstop"
if [ "$1" = "--startstop" ]; then 
    if [ ! "$(pidof xcompmgr)" ]; then
	$EXEC;
    else
        killall xcompmgr
    fi
    exit 0
fi

# Output Openbox menu
if [ ! "$(pidof xcompmgr)" ]; then
    cat << _EOF_
    <openbox_pipe_menu>
        <item label="Enable Compositing">
            <action name="Execute">
                <execute>myxcompmgr --startstop</execute>
            </action>
        </item>
    </openbox_pipe_menu>
_EOF_
else
    cat << _EOF_
    <openbox_pipe_menu>
        <item label="Remove Transparency from Target Window">
            <action name="Execute">
                <execute>transset 1</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 10%">
            <action name="Execute">
                <execute>transset .90</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 20%">
            <action name="Execute">
                <execute>transset .80</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 30%">
            <action name="Execute">
                <execute>transset .70</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 40%">
            <action name="Execute">
                <execute>transset .60</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 50%">
            <action name="Execute">
                <execute>transset .50</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 60%">
            <action name="Execute">
                <execute>transset .40</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 70%">
            <action name="Execute">
                <execute>transset .30</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 80%">
            <action name="Execute">
                <execute>transset .20</execute>
            </action>
        </item>
        <item label="Set Target Window Transparency to 90%">
            <action name="Execute">
                <execute>transset .10</execute>
            </action>
        </item>
        <separator/>
        <item label="Disable Compositing">
            <action name="Execute">
                <execute>myxcompmgr --startstop</execute>
            </action>
        </item>
    </openbox_pipe_menu>
_EOF_
fi

exit 0

