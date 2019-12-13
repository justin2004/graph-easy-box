FROM debian:10-slim

RUN apt-get update && apt-get install -y cpanminus \
  && cpan && cpan Graph::Easy

ENTRYPOINT ["graph-easy"]
CMD ["--from=dot", "--as=ascii"]
#  dot some.dg | graph-easy --from=dot --as=ascii
