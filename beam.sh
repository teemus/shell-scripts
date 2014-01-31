#!/bin/bash
echo 'Checking the bandwidth usage for this month on your Beam Fiber connection...';
curl -s "http://portal.beamtele.com/newportal/my_package_ccav/my_package.php" | grep '(Quota' | cut -f 1 -d '&' | awk -F '>' '{ print $3; }'
