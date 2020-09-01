# Load Master -------------------------------------------------------------
tmaster <- read_csv("Data/tmaster.csv", 
                    col_types = cols(.default = "c")) %>% 
  mutate(lims_id2 = as.numeric(str_replace(lims_id, "X", ""))) %>% 
  mutate(record_id = as.numeric(str_replace_all(record_id, c("^WY" = "500000", "^WMCI" = "100000")))) 