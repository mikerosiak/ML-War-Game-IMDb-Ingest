DEFAULT_JVM_OPTS="-Xmx2048m"

java -server -cp ../CoRB/marklogic-xcc-8.0.5.jar;../CoRB/marklogic-corb-2.3.2.jar  ^
				 -DXCC-USERNAME=admin   ^
				 -DXCC-PASSWORD=admin   ^
				 -DXCC-HOSTNAME=localhost   ^
				 -DXCC-PORT=8000  ^
				 -DOPTIONS-FILE=../CoRB/report.properties  ^
				 -DTHREAD-COUNT=8  ^
				 -DBATCH-SIZE=100  ^
				 -DEXPORT-FILE-NAME="report.txt"  ^
				 com.marklogic.developer.corb.Manager
