#/bin/bash

export LIBERAL_PARSER_CLASSPATH=target/liberal-event-1.0.jar:Lib/dom4j-1.6.1.jar:Lib/httpclient-4.3.1.jar:Lib/httpcore-4.3.jar:Lib/java-json.jar:Lib/junit.jar:Lib/log4j-1.2.17.jar:Lib/servlet-api-2.5.jar:Lib/SpectralClustering.jar:Lib/stanford-chinese-corenlp-2015-04-20-models.jar:Lib/stanford-corenlp-3.5.2.jar:Lib/trove-3.0.0a1.jar:Lib/urlencode-ui-1.1.jar:Lib/w3c-dom.jar:Lib/xom-1.2.6.jar:Lib/bsh-2.0b4.jar

echo "java -cp $LIBERAL_PARSER_CLASSPATH bsh.Interpreter liberal-parser.bsh"
java -Xmx10g -cp $LIBERAL_PARSER_CLASSPATH bsh.Interpreter liberal-parser.bsh "$@"
