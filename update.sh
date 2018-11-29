#!/bin/sh


echo Building and pushing site to gh-pages branch


mkdocs gh-deploy


echo Adding new files to git


git add .


read -p 'Name your commit: ' commentvar


echo Commiting changes with comment $commentvar


git commit -am "$commentvar"


echo Pushing docs and site to master branch


git push origin master


echo Documentation updated