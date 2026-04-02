publish: commit push
	
test: 
	cd website; python3 -m http.server
	
commit:
	git add .
	git commit -m 'latest updates'
	
push: 
	eval "$(ssh-agent -s)"
	ssh-add /home/jjw/.ssh/jjw_github
	git push ssh://git@ssh.github.com:443/jjw/onnadu-web
	

