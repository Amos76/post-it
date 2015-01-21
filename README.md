# Post-it

This app will list blog posts which we can Create, Read, Update, Destory (CRUD)

## Steps for creating a resource

1. Define Roles
	- In config/routes make routes available
	- Run rake routes in the Terminal to confirm

2. Generate a controller
	- `rails generate controller posts`
	- `rails generate controller fishes`

3. Define an "action"
	- This happens by default if you pass an action name as a final argument to the generator.
	- This renders a 'view' of the same name by default

4. Write 'view' code
	- This will be your HTML


## Flash

Rails gives us a convenient way to notify users about requests through the "flash" hash.

It's just a hash available to the views and controllers.

``` 
flash {}

```

To use it, use it like any other has: 
```
	flash[:success] = "Woop!"
	flash[:error] = "Boo!"
	flash[:sausage] = "I am a sausage"

	#=>

````