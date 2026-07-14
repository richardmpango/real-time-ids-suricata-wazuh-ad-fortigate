#!/bin/bash
# Display recent Suricata logs from the Suricata sensor.

echo "[+] Latest Suricata fast.log alerts"
sudo tail -n 20 /var/log/suricata/fast.log

echo

echo "[+] Latest Suricata alert events in eve.json"
sudo grep '"event_type":"alert"' /var/log/suricata/eve.json | tail -n 10
