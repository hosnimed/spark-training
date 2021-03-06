#!/usr/bin/env bash
SPARK_OPTS="--executor-cores 2
    --executor-memory 1G
    --driver-memory 512M
    --num-executors 3
    --conf spark.ui.retainedJobs=25
    --conf spark.worker.ui.retainedExecutors=100
    --conf spark.sql.ui.retainedExecutions=10
    --conf spark.ui.retainedStages=100
    --conf spark.eventLog.enabled=false
    --conf spark.executor.extraJavaOptions=-Dlog4j.configuration=log4j-executor.properties
    --conf spark.driver.extraJavaOptions=-Dlog4j.configuration=log4j-driver.properties
    --conf spark.yarn.max.executor.failures=2
    --conf spark.task.maxFailures=2
    --conf spark.yarn.executor.memoryOverhead=512"

SPARK_MASTER="yarn"
