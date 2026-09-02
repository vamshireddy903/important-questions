LOG_FILE="/var/log/syslog"
REPORT_FILE="error_report.txt"


echo "Log analysis report" >> "$REPORT_FILE"
echo "========================" >>"$REPORT_FILE"
echo "Date: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Total errors: " >> "$REPORT_FILE"
sudo grep -i "error" "$LOG_FILE" | wc -l >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Total Warnings: " >> "$REPORT_FILE"
sudo grep -i "warning" "$LOG_FILE" | wc -l >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Recent Errors: " >> "$REPORT_FILE"
sudo grep -i "error" "$LOG_FILE" | tail -10 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"


echo "" >> "$REPORT_FILE"
echo "Report is generated: $REPORT_FILE"
