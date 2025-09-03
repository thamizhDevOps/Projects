#!/bin/bash
TARGET="https://qalounge.teligenz.in/service/auth/rest"

echo "Starting ZAP scan for $TARGET..."

# Start ZAP in daemon mode
/zap/zap.sh -daemon -host 0.0.0.0 -port 8090 -config api.disablekey=true -silent &

# Wait for ZAP to be ready
sleep 30

# Run an active scan
/zap/zap-cli --zap-url http://localhost --zap-port 8090 active-scan $TARGET

# Generate HTML report
/zap/zap-cli --zap-url http://localhost --zap-port 8090 report -o /zap/reports/zap_report.html -f html

echo "Scan completed. Report available in /zap/reports/zap_report.html"

