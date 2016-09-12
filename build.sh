#!/bin/sh
for i in debian:lenny debian:squeeze debian:wheezy debian:jessie ubuntu:trusty ubuntu:xenial; do
	cat Dockerfile.template |sed -e "s@DISTRIBUTION@$i@g" > Dockerfile
	docker build .
done
