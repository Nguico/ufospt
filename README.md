## :alien: UFO SPOTTED!

Rails app allowing to list the appearances of UFO.

### Demo

* [UFO SPOTTED!](http://ufospt.herokuapp.com/) - Deployed to Herokuapp


### APIs used

* Google Maps : JavaScript, Static, Places
* Amazon AWS : S3, IAM

### Adding admin attribute

```
rails c
```
```
myAccount = User.where(email: "myemail@address.com").first
```
```
myAccount.admin = true
```
```
myAccount.save!
```
