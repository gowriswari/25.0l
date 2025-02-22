datagroup: gowri_2_test {
  max_cache_age: "5 minutes"
  sql_trigger: SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP());;
}

datagroup: gowri_2_tset2 {
  max_cache_age: "5 minutes"
  sql_trigger: SELECT TIME(NOW()) ;;
}

datagroup: gowri_2_test3 {
  max_cache_age: "10 minutes"
  sql_trigger:SELECT EXTRACT(SECOND FROM CURRENT_TIMESTAMP()) ;;
}
