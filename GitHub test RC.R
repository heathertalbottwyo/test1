# REDCap Upload and Tidy --------------------------------------------------
#Upload REDCap Report
REDCap <-  read_xlsx("Data/REDCap.xlsx",
                     col_types = c("text",    "text",    "date",    "text",    "text",
                                   "text",    "text",    "date",    "text",    "numeric",
                                   "text",    "text",    "text",    "logical", "logical", 
                                   "date",    "text",    "text",    "text",    "numeric",
                                   "numeric", "text",    "text",    "numeric", "text",
                                   "text",    "text",    "text",    "logical", "date",
                                   "logical", "logical", "logical", "logical", "logical",
                                   "logical", "logical", "logical", "logical", "logical",
                                   "logical", "logical", "logical", "text",    "logical",
                                   "logical", "logical", "logical", "logical", "logical",
                                   "logical", "text",    "text",    "logical", "logical",
                                   "numeric", "numeric", "logical", "logical", "logical",
                                   "logical", "numeric", "numeric", "numeric", "numeric",
                                   "numeric", "text",    "numeric", "logical", "logical", 
                                   "logical", "text",    "logical", "logical", "numeric", 
                                   "date",    "numeric", "numeric", "date",    "numeric"),
                     na = c("[not completed]", "empty", "null", "", "NA")) 
redcap_colnames <- read_csv("Data/Reference/redcap_colnames2.csv",
                            col_types = cols(.default = "c"))
names(REDCap) = redcap_colnames$Names_tidy[match(names(REDCap), redcap_colnames$Names_raw)]