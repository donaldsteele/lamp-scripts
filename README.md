handy scripts i use for quickly starting up a new web project. 

# Features
  - Create a new apache vhost from template with a public and private directory
  - Create a new mysql user and database 
  - Delete a vhost

# My Setup
I find it very handy to have a domain that i can use for development. I tend to use the .pw domain since it is very cheap at my domain registrar (namecheap). I run a lamp vm that i do all my dev work on. This allowes me to snapshot , clone or backup my entire environment quickly. All of my web sites are under /var/vhosts/ and these scripts assume you will use the same structure. To setup dns i registered a domain for example *me.pw* . On namecheap i added a new A Record for the host *.dev with the ip of my local virtualmachine (in my case 192.168.0.160). 
Now i can call 
```sh
add-vhost.sh new-project
```    
now i can navigate to new-project.dev.me.pw and i am done!
