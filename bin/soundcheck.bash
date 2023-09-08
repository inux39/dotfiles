#!/bin/bash
cat /proc/asound/card*/pcm*/sub*/hw_params | grep -v closed

