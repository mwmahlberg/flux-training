# Create a go project

The project directory `mycoolapp` was created for you with a `main.go`.

Now, we need to enter the directory and initialize our go module:

```
cd mycoolapp && go mod init example.com/mycoolapp
```{{exec}}

As instructed, we also run:

```
go mod tidy
```{{exec}}

The dependency `golang.org/x/example/hello/reverse` is automagically downloaded for us, as well as it's transitive dependencies.

Now, we can run our application:

```
go run main.go
```{{exec}}