#!/bin/bash

# print hostname
echo -e "hostname: \c" ; hostname

# print begin date
echo -e "begin date: \c" ; date

# 31 slected images
#imagelist=(axle-base sultans-bin haproxy cb-shell dnsutils node-metrics container-metrics ruby-base ipsec multilevel drupal jruby openjdk mono glassfish jenkins-slave quickstart-python exhibitor ubuntu-perl swagger-editor serf dnsmasq gocd-base gocd-agent drill ubuntu-perl-dev devmachine buildpack-runner gcc gocd-server buildstep)

# 29 slected flat images
#imagelist1=(radial/axle-base sequenceiq/sultans-bin kiwenlau/haproxy sequenceiq/cb-shell tutum/http-tap radial/etcd cpuguy83/shell centurylink/drupal clue/textract centurylink/aws-cli-wetty joaodubas/python-venv kiwenlau/jruby kiwenlau/glassfish kiwenlau/jenkins pinterb/ubuntu-python-falcon sequenceiq/baywatch-client jplock/exhibitor cpuguy83/ruby-mri pinterb/ubuntu-perl-mojo pinterb/swagger-editor sequenceiq/baywatch joaodubas/gocd-server sequenceiq/drill centurylink/buildpack-runner pinterb/ubuntu-perl-dev joaodubas/devmachine tutum/boatyard kiwenlau/gcc sequenceiq/hadoop-docker)

#imagelist2=(axle-base sultans-bin haproxy cb-shell http-tap etcd shell drupal textract aws-cli-wetty python-venv jruby glassfish jenkins ubuntu-python-falcon baywatch-client exhibitor ruby-mri ubuntu-perl-mojo swagger-editor baywatch gocd-server drill buildpack-runner ubuntu-perl-dev devmachine boatyard gcc hadoop-docker)

imagelist1=(radial/axle-base sequenceiq/sultans-bin)
imagelist2=(axle-base sultans-bin)

n=0

for image in ${imagelist1[*]};
do
  docker tag $image:flattened kiwenlau/${imagelist2[$n]}:flat
  ((n++))
done

# print end date
echo -e "end date: \c" ; date


