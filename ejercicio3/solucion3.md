
# Creation of nginx web server






## Screenshots
![](https://github.com/arturoEnsolvers/desafio-03devops/blob/main/ejercicio3/Screenshot%20from%202022-08-19%2015-03-07.png?raw=true)
#

![](https://github.com/arturoEnsolvers/desafio-03devops/blob/main/ejercicio3/Screenshot%20from%202022-08-21%2018-14-02.png?raw=true)
### Commands for creating de container

```docker volume create static_content ```

```docker build -t bootcamp_nginx```

```docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx ```



### Login in dockerhub

``` docker login -u "myusername" -p "mypassword" docker.io```

``` docker tag bootcamp_nginx username/bootcamp_nginx:v1.0.0 ```

``` docker push username/bootcamp_nginx:v1.0.0 ```