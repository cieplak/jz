
deploy:
	tar czvf jz.tgz bin
	scp jz.tgz ${SERVER}:.
	ssh ${SERVER} -- 'su   root -c "cp jz.tgz ~/."'
	ssh ${SERVER} -- 'su - root -c "tar xf jz.tgz"'
	ssh ${SERVER} -- 'su - root -c "jz jail setup"'
