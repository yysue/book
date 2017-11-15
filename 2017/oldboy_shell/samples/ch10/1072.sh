awk '{print }' access.log|grep -v -|awk '{sum+=}END{print sum}'
