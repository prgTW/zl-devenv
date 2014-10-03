[ -e /usr/bin/docker ] || (
	curl -sSL https://get.docker.io/ubuntu/ | sudo sh
)

[ -e /usr/local/bin/fig ] || (
	curl -L https://github.com/docker/fig/releases/download/0.5.2/linux > /usr/local/bin/fig 
)

[ -x /usr/local/bin/fig ] || (
	chmod +x /usr/local/bin/fig
)

docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock jwilder/nginx-proxy

echo CLONE YOUR REPO INTO "repo" DIRECTORY
echo F.EX.: git clone ssh://git@github.com/vendor_name/repo_name repo
echo
echo AND THEN RUN "fig up -d" TO RUN THE ENVIRONMENT
echo
