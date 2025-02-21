connection: "andy-testing"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: gowri_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "5 minutes"
}

datagroup: gowri_2_test {
  max_cache_age: "5 minutes"
  sql_trigger: Select MAX(net_cost_yesterday) from etl_log;;
}
persist_with: gowri_2_default_datagroup

explore: cost_anomaly_alerting {}

explore: month_cte {}

explore: csvtest {}

explore: year_cte {}

explore: anomaly_alert_log {}

explore: panwanomalydetails {
  persist_with: gowri_2_test
}

explore: day_cte {}
