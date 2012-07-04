require 'zlib'

default[:kafka][:archive_url] = "http://public.fewbytes.com/kafka-0.7.0.zip"
default[:kafka][:archive_checksum] = "accc4f96d3e42cb0ec6eb532ed62b12172a22c7b222a0070bf78b576f6b9a22a"
default[:kafka][:brokerid] = Zlib.crc32(fqdn)
default[:kafka][:zk_cluster_name] = "default"
default[:kafka][:number_of_partitions_per_topic] = 1
default["kafka"]["config_dir"] = "/etc/kafka"
default["kafka"]["base_dir"] = "/opt/kafka"
default["kafka"]["jmx_port"] = 9999
default["kafka"]["java_max_memory"] = "768m"

default["kafka"]["data_dir"] = "/mnt/kafka-logs"
