#!/bin/bash

if dunstctl is-paused | grep -q "true"; then
    echo '{"text": "\udb80\udc9b", "class": "dnd"}'
else
    COUNT=$(dunstctl count history)
    if [ "$COUNT" -gt 0 ]; then
        echo "{\"text\": \"\udb80\udc9e $COUNT\", \"class\": \"notifications-waiting\"}"
    else
        echo '{"text": "\udb80\udc9a", "class": "notifications-empty"}'
    fi
fi
