datagroup: gowri_2_test {
  max_cache_age: "5 minutes"
  sql_trigger: SELECT MAX(percent_increase_since_two_days_ago) FROM panwanomalydetails;;
}
