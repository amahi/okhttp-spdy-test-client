run:
	java -cp .:okhttp-2.0.0.jar:okio-1.0.0.jar  OkHttpContributors

getit:
	wget -N -O okhttp-2.0.0.jar  http://repo1.maven.org/maven2/com/squareup/okhttp/okhttp/2.0.0/okhttp-2.0.0.jar
	wget -N -O okio-1.0.0.jar  'http://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=com.squareup.okio&a=okio&v=LATEST'

compile:
	javac -cp .:okhttp-2.0.0.jar:okio-1.0.0.jar  OkHttpContributors.java

