connection: "andy-testing"

# include all the views
include: "/views/**/*.view.lkml"
include: "/datagroups1.lkml"

datagroup: gowri_2_default_datagroup {
 #sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 minutes"
}

persist_with: gowri_2_default_datagroup

explore: cost_anomaly_alerting {
  persist_with: gowri_2_default_datagroup
}

explore: month_cte {}

explore: csvtest {
  persist_with: gowri_2_tset2
}

explore: year_cte {}

explore: anomaly_alert_log {}

explore: panwanomalydetails {
  persist_with: gowri_2_test
}

explore: day_cte {
  persist_with: gowri_2_test3
}
