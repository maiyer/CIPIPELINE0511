FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENCE_KEY="123-001-223"
LABEL MAINTAINER maiyer@devops.com
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "LICENSE KEY IS "$LICENSE_KEY""
WORKDIR /code
#ENTRYPOINT ["sh","Sample.sh"]
CMD sh Sample.sh testfile
