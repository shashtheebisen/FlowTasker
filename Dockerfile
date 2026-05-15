# using nginx web server
FROM nginx:latest
# its only a simple static frontend project html+css+js there's no 
# node.js react backend and npm package so that's why there's no need for install anything
# ye index.html, style.css, script.js ye files directly browser me run hoti hai so we only need 
# web server isliye from nginx:latest use kiye 
# nginx is lightweight web server 


# copying project files to nginx default folder
COPY . /usr/share/nginx/html
# ye nginx ka deafult webiste folder hota hai nginx automatically
# index.html wahi se serve krta hai 
# so copy . usr/share/nginx/html means hmari website files nginx ke web folder me daal do 

# why no workdit because humne koi commands run nhi karni , koi app build nhi krna , koi dependency install nhi krni so workdir optional hai yha
# why no run npm install because npm pacakge exist hi nhi agr react/vite/node app hota tb run npm install lgta
# why no cmd because nginx image already internally CMD use krti hai means 
# nginx -g "deamon off;" already configured hota hai so hume manually likhne ki need nhi hai
# so this is a static webiste docker file 

# Since Flowtasker is a static frontend application using only HTML, CSS, and 
# JS, I used nginx as the web server. There was no need for WORKDIR, npm install, 
# or CMD because no Node.js dependencies or build process were required.


# in terminal i'm using commands 
# docker build -t flowtasker . 
# docker build = to build the image , -t flowtasker = the name of image, . = to use the current folder
# docker images
# docker run -d -p 9090:80 --name flowtasker-container flowtasker
# docker ps -a  
# open http://localhost:9090
# now flowtasker app should open from docekr 
# now nginx inside docker is serving your app so this is your first containerized application 

# docker ps 
# docker images 
# docker ps -a 


# now i push my updated dokcer file in github
# git status , git add . , git commit -m "added docker support to flowtasker"
# git push 