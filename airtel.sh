#!/bin/bash
echo 'Checking the remaining bandwidth quota on your airtel broadband connection...';
curl -s "http://122.160.230.125:8080/gbod/gb_on_demand.do" | grep 'Balance quota' | awk -F '&' '{ print $4 "GB"; }' | cut -f 2 -d ';'
