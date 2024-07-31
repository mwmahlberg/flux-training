# Welcome to Go: Workspaces

When developing software, you often encounter a situation where you
develop a piece of software dependent on a library you develop along with it.

Using [go modules][go:modules], this becomes a tedious task. Each time you update
the library, you need to commit and push it, only to run a `go get -u your.git/project/lib@yourDevBranch` in the dependent piece of software.

However, there is a better way: [Go workspaces][go:workspaces].

We will learn how to set them up and use them.

[go:modules]: https://go.dev/blog/using-go-modules "Article on using Go modules by Tyler Bui-Palsulich and Eno Compton"

[go:workspaces]: https://go.dev/doc/tutorial/workspaces "Tutorial: Getting started with multi-module workspaces"