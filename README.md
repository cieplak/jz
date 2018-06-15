# jz

`jz` is a command-line tool for deploying containers on FreeBSD using Jails, ZFS and pf.

`jz` has zero dependencies and leverages native FreeBSD functionality.

## Usage

Create three containers:
```
 $ jz jail setup
 $ jz jail create nginx
 $ jz jail create node
 $ jz jail create postgres
```

Under the hood, `jz` does the complex work of configuring the network and filesystem.

Once you've created some containers it's easy to start, attach and stop them like this:
```
service jail start node
jexec node
service jail stop node
```
