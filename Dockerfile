FROM debian:10-slim

RUN apt-get update && apt-get install -y graphviz cpanminus \
  && cpan && cpan Graph::Easy 

CMD ["bash","-c","dot | graph-easy --from=dot --as=ascii"]
