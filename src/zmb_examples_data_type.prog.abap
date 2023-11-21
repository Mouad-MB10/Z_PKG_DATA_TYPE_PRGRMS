*&---------------------------------------------------------------------*
*& Report ZMB_EXAMPLES_DATA_TYPE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMB_EXAMPLES_DATA_TYPE.


DATA: gv_date type DATE ,
      first_name type string ,
      last_name type string ,
      full_name type string .


gv_date = '20221121'.
first_name = 'najlae' .
last_name = 'kamel ' .

SKIP 4 .

WRITE: 'Date:' , (10) gv_date USING EDIT MASK '____/__/__ '.
skip .
WRITE: '----------------------------------------------------------------------------------------------------'.
skip .
CONCATENATE first_name  last_name INTO full_name SEPARATED BY space .
WRITE: 'Your Full name is :' , full_name .

skip .
WRITE: '----------------------------------------------------------------------------------------------------'.
skip .




PARAMETERS: p_name1 type string ,
            p_name2 type string .

SPLIT: p_name1 AT '-' INTO DATA(lv_pos1) DATA(lv_pos2) DATA(lv_pos3) .
skip .
WRITE: '----------------------------------------------------------------------------------------------------'.
skip .
WRITE: 'split value of' , p_name1 , ' are : ' , lv_pos1 , lv_pos2 , lv_pos3 .

DATA(lv_length) = STRLEN( p_name2 ) .
skip .
WRITE: '----------------------------------------------------------------------------------------------------'.
skip .
WRITE: 'String length : ' , lv_length .
skip .
WRITE: '----------------------------------------------------------------------------------------------------'.
skip .
"offset length

write: 'First 4 characters ' , p_name2+0(4) , 'Other Option: ' , p_name2+4(4) .

skip .
WRITE: '----------------------------------------------------------------------------------------------------'.
skip .

DATA:lv_value type int8 value 100 .

lv_value = lv_value - 130 .

WRITE: lv_value .
