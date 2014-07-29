all: build

build:
	javac -cp .:okhttp-2.0.0.jar:okio-1.0.0.jar OkHttpContributors.java

run:
	java -cp .:okhttp-2.0.0.jar:okio-1.0.0.jar OkHttpContributors

get-deps:
	curl -o okhttp-2.0.0.jar 'http://repo1.maven.org/maven2/com/squareup/okhttp/okhttp/2.0.0/okhttp-2.0.0.jar'
	curl -o okio-1.0.0.jar 'http://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=com.squareup.okio&a=okio&v=LATEST'

clean:
	rm *.class
