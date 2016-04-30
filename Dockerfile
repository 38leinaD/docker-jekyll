FROM centos
RUN yum -y update && \
    yum -y groupinstall 'Development Tools' && \
    yum -y install ruby && \
    yum -y install ruby-devel && \
    yum clean all
    
RUN gem install jekyll \
    jekyll-redirect-from \
    kramdown \
    rdiscount \
    rouge

VOLUME /src
EXPOSE 4000
          
CMD [ "cd /src && jekyll build" ]