Use docker to convert local erb files:

`docker build . -t conv`

then go to any files:

`docker run -v $(pwd)/:/app/src/ conv src/test_file.html.erb src/test_file.slim.html`
