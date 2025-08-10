FROM apache/hive:3.1.3

USER root

COPY conf/postgresql-42.5.4.jar /opt/hive/lib/
COPY conf/hive-site.xml /opt/hive/conf/

COPY start_hiveserver2.sh /opt/hive/custom_scripts/start_hiveserver2.sh

RUN chmod +x /opt/hive/custom_scripts/start_hiveserver2.sh

USER hive

ENTRYPOINT ["/opt/hive/custom_scripts/start_hiveserver2.sh"]

